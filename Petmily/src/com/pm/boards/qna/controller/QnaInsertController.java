package com.pm.boards.qna.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.boards.qna.model.service.QnaService;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class QnaInsertController
 */
@WebServlet("/insert.qna")
public class QnaInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/boards_upfiles/qna_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String memNo = multiRequest.getParameter("memNo");
			String qnaTitle = multiRequest.getParameter("qnaTitle");
			String qnaContent = multiRequest.getParameter("qnaContent");
			
			Qna q = new Qna();
			q.setMemNo(memNo);
			q.setQnaTitle(qnaTitle);
			q.setQnaContent(qnaContent);
			
			
			Attachment at = null;
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/boards_upfiles/qna_upfiles/");
			}
			
			int result = new QnaService().insertQna(q, at);
			
			if(result > 0) {
				response.sendRedirect(request.getContextPath() + "/main.qna?cpage=1");
			} else { 
				if(at != null) {
					new File(savePath + at.getChangeName()).delete();
				}
				
				//에러 페이지 뭐하지..
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
