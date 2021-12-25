package com.pm.boards.ask.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.boards.ask.model.service.AskService;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class AskEnrollController
 */
@WebServlet("/enroll.ask")
public class AskEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskEnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 30 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/boards_upfiles/ask_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Ask a = new Ask();
			a.setWriterNo(Integer.parseInt(multiRequest.getParameter("userNo")));
			a.setCategory(Integer.parseInt(multiRequest.getParameter("category")));
			a.setAskTitle(multiRequest.getParameter("title"));
			a.setAskContent(multiRequest.getParameter("content"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			int fileCount = Integer.parseInt(multiRequest.getParameter("file-count"));
			
			for(int i=1; i<=fileCount; i++) {
				String key = "file" + i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					Attachment att = new Attachment();
					att.setOriginName(multiRequest.getOriginalFileName(key));
					att.setChangeName(multiRequest.getFilesystemName(key));
					att.setFilePath("resources/boards_upfiles/ask_upfiles/");
					
					list.add(att);
				}
			}
			
			int result = new AskService().enrollAsk(a, list);
			
			if(result >0) {
				response.sendRedirect(request.getContextPath() + "/main.ask?page=1");
			}else {
				
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
