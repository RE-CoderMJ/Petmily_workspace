package com.pm.admin_Login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.admin_Login.model.service.AdminMemberService;
import com.pm.admin_Login.model.vo.AdminMember;

/**
 * Servlet implementation class adminLoginFormController
 */
@WebServlet("/adlogin.ad")
public class AdminLoginFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("views/admin/login/adminLoginView.jsp").forward(request, response);
		
		String managerId = request.getParameter("managerId");
		String managerPwd = request.getParameter("managerPwd");
		
		AdminMember loginAdmin = new AdminMemberService().loginAdmin(managerId,managerPwd);
		
		if(loginAdmin == null) {
			request.setAttribute("errorMsg", "당신같은 관리자는 없습니다.나가세요.");
			
			RequestDispatcher view = request.getRequestDispatcher("views/common/error/loginErrorPage.jsp");
			view.forward(request, response);
			
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("loginAdmin", loginAdmin);
			
			//request.getRequestDispatcher("views/admin/adminMainView.jsp.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath() + "/admin.main");
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
