package com.pm.admin_Mem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Mem.model.service.AdminMemService;

/**
 * Servlet implementation class AdminMemBlackDeleteController
 */
@WebServlet("/blackDelete.ad")
public class AdminMemBlackDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemBlackDeleteController() {
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
			request.getSession().setAttribute("alert", "회원 삭제를 완료했습니다.");

			response.sendRedirect(request.getContextPath() + "/blackMem.ad?cpage=1");
			
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
