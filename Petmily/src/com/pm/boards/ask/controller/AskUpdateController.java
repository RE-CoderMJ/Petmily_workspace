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
 * Servlet implementation class AskUpdateController
 */
@WebServlet("/update.ask")
public class AskUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskUpdateController() {
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
			
			int ano = Integer.parseInt(multiRequest.getParameter("ano"));
			
			Ask a = new Ask();
			a.setAskNo(ano);
			a.setCategory(Integer.parseInt(multiRequest.getParameter("category")));
			a.setAskTitle(multiRequest.getParameter("title"));
			a.setAskContent(multiRequest.getParameter("content"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			int fileCount = Integer.parseInt(multiRequest.getParameter("file-count"));
			
			for(int i=1; i<=fileCount; i++) {
				String key = "file" + i;
				String originAttNo = "originAttNo" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					Attachment att = new Attachment();
					att.setOriginName(multiRequest.getOriginalFileName(key));
					att.setChangeName(multiRequest.getFilesystemName(key));
					att.setFilePath("resources/boards_upfiles/ask_upfiles/");
					
					if(multiRequest.getParameter(originAttNo) != null) {
						att.setAttachmentNo(Integer.parseInt(multiRequest.getParameter(originAttNo)));
					}else {
						att.setRefNo(ano);
					}
					
					list.add(att);
				}
			}
			
			int result = new AskService().updateAsk(a, list);
			
			if(result > 0) {
				response.sendRedirect(request.getContextPath() + "/detail.ask?ano=" + ano);
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
