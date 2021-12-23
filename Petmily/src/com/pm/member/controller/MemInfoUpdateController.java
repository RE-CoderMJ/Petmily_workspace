package com.pm.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.common.MyFileRenamePolicy;
import com.pm.member.model.service.MemberService;
import com.pm.member.model.vo.Member;

/**
 * Servlet implementation class MemInfoUpdateController
 */
@WebServlet("/infoUpdate.my")
public class MemInfoUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemInfoUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/boards_upfiles/profile_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int userNo = Integer.parseInt(multiRequest.getParameter("userNo"));
			
			String userEmail = multiRequest.getParameter("userEamil");
			String userPwd = multiRequest.getParameter("userPwd");
			String userName = multiRequest.getParameter("userName");
			String phone = multiRequest.getParameter("phone");
			String nickname = multiRequest.getParameter("nickname");
			
			String address1 = multiRequest.getParameter("address1");
			String address2 = multiRequest.getParameter("address2");
			String address3 = multiRequest.getParameter("address3");
			
			String userFile = multiRequest.getParameter("userFile");
			
			// resources/boards_upfiles/profile_upfiles/~~~~.jpg
			
			Member m = new Member(userNo, userEmail, userPwd, userName, phone, nickname, address1, address2, address3, userFile);
			
			//Attachment at = null;
			
			if(multiRequest.getOriginalFileName("userFile") != null) { 
				/*
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("userFile"));
				at.setChangeName(multiRequest.getFilesystemName("userFile"));
				at.setFilePath("resources/boards_upfiles/profile_upfiles/");
				
				if(multiRequest.getParameter("originFileNo") != null) {
					at.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
				} else {	
					at.setRefNo(userNo);
				}
				*/
				m.setMemImg("resources/boards_upfiles/profile_upfiles/" + multiRequest.getFilesystemName("userFile"));
			}
			
			Member updateMem = new MemberService().updateMember(m);
			
			if(updateMem != null) {
				
				
				 HttpSession session = request.getSession();
				 session.setAttribute("loginUser",updateMem);
				 
				request.getSession().setAttribute("alert", "수정되었습니다");
				response.sendRedirect(request.getContextPath() + "/infoUpdateForm.my");
			} else {
				// 에러 뭐하지
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
