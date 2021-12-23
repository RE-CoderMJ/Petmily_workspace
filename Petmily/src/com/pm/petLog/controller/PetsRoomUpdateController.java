package com.pm.petLog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetsRoom;

/**
 * Servlet implementation class AjaxPetsRoomUpdateController
 */
@WebServlet("/update.petsRoom")
public class PetsRoomUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetsRoomUpdateController() {
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
			String savePath = request.getSession().getServletContext().getRealPath("/resources/petLog_upfiles/profile_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int memNo = Integer.parseInt(multiRequest.getParameter("memNo"));
		
			String roomName = multiRequest.getParameter("roomName");
			String bio = multiRequest.getParameter("bio");
			
			PetsRoom pr = new PetsRoom();
			pr.setMemNo(memNo);
			pr.setRoomName(roomName);
			pr.setBio(bio);
			
			Attachment att = null;
		
			if(multiRequest.getOriginalFileName("pfImg") != null) {
				att = new Attachment();
				att.setOriginName(multiRequest.getOriginalFileName("pfImg"));
				att.setChangeName(multiRequest.getFilesystemName("pfImg"));
				att.setFilePath("resources/petLog_upfiles/profile_upfiles/");
				
				if(!multiRequest.getParameter("originFileNo").equals("0")) {
					att.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
				}else {
					att.setRefNo(memNo);
					System.out.println(att.getRefNo());
				}
				
			}
			
			int result = new PetLogService().updatePetsRoom(pr, att);
			
			if(result > 0) {
				response.sendRedirect(request.getContextPath()+ "/petsRoom.petLog?memNo=" + memNo);
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
