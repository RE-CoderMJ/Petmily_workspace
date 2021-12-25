package com.pm.admin_Mem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Mem.model.service.AdminMemService;

/**
 * Servlet implementation class AdminMemDeleteController
 */
@WebServlet("/Delete.ad")
public class AdminMemDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("mno"));
		
		int result = new AdminMemService().memDelete(memNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alert", "이제없는 회원.");

			response.sendRedirect(request.getContextPath() + "/memMg.ad?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "에러.");
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
