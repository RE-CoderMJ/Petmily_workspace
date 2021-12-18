package com.pm.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.member.model.service.MemberService;
import com.pm.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert.me")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userEmailId = request.getParameter("userEamil");
		String emailDomain = request.getParameter("emailDomain");
		String userEmail = userEmailId + "@" + emailDomain;
		
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String userTel = phone1 + "-" + phone2 + "-" + phone3;
		
		String nickname = request.getParameter("nickname");
		String postalCode = request.getParameter("address1");
		String address = request.getParameter("address2");
		String detailAddress = request.getParameter("address3");
		
		Member m = new Member(userEmail, userPwd, userName, userTel, nickname, postalCode, address, detailAddress);
		
		
		int result = new MemberService().insertMember(m);

		
		System.out.println(result);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/loginForm.me");
		} else {
			// 실패할 때 응답 뭐할까요..
		
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
