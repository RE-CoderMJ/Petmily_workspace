package com.pm.petLog.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetLog;

/**
 * Servlet implementation class PetLogUpdateController
 */
@WebServlet("/update.petLog")
public class PetLogUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetLogUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int maxSize = 30 * 1024 * 1024;
		String savePath = request.getSession().getServletContext().getRealPath("/resources/petLog_upfiles/post_upfiles/");
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
		String writer = multiRequest.getParameter("writer");
		int petLogNo = Integer.parseInt(multiRequest.getParameter("petLogNo"));
		
		PetLog pl = new PetLog();
		pl.setPetLogNo(petLogNo);
		pl.setPetLogContent(multiRequest.getParameter("text"));
		
		ArrayList<Attachment> list = new ArrayList<>();
		int fileCount = Integer.parseInt(multiRequest.getParameter("file-count"));
		
		for(int i=1; i<=fileCount; i++) {
			String key = "file" + i;
			String originAttNo = "originAttNo" + i;
			if(multiRequest.getOriginalFileName(key) != null) {
				Attachment att = new Attachment();
				att.setOriginName(multiRequest.getOriginalFileName(key));
				att.setChangeName(multiRequest.getFilesystemName(key));
				att.setFilePath("resources/petLog_upfiles/post_upfiles");
				
				if(multiRequest.getParameter(originAttNo) != null) {
					att.setAttachmentNo(Integer.parseInt(multiRequest.getParameter(originAttNo)));
				}else {
					att.setRefNo(petLogNo);
				}
				list.add(att);
			}
		}
		
		int result = new PetLogService().updatePetLog(pl, list);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/petsRoom.petLog?memNo=" + writer);
		}else {
			
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
