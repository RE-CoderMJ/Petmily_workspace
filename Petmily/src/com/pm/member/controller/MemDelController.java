package com.pm.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.member.model.service.MemberService;

/**
 * Servlet implementation class MemDelController
 */
@WebServlet("/delete.me")
public class MemDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemDelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String[] delCheckArr = request.getParameterValues("ck");
		String delDetail = request.getParameter("delDetail");
		
		String ck = String.join("|", delCheckArr);
		if(delDetail == null) {			
			delDetail = "";
		}
		
		String delReason = ck + " " + delDetail;
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String userPwd = request.getParameter("userPwd");
		
		int result = new MemberService().deleteMember(userNo, userPwd, delReason);

		HttpSession session = request.getSession();
		
		if(result > 0) {
			session.setAttribute("alert", "그 동안 펫밀리를 이용해주셔서 감사합니다.\\n더 좋은 서비스로 다시 찾아뵙겠습니다.");
			session.removeAttribute("loginUser");
			response.sendRedirect(request.getContextPath());
		} else {
			// 에러페이지
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
