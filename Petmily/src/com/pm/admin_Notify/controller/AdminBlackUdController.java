package com.pm.admin_Notify.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Notify.model.service.AdminNotifyService;

/**
 * Servlet implementation class AdminBlackUdController
 */
@WebServlet("/blackUd.ad")
public class AdminBlackUdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminBlackUdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int reportNo = Integer.parseInt(request.getParameter("rnum"));
	
		int result = new AdminNotifyService().updateBlackMem(reportNo);
	
		if(result > 0) {
			request.getSession().setAttribute("alert", "블랙리스트 회원으로 변경 완료");
			
			response.sendRedirect(request.getContextPath() + "/memWarning.ad");
		}else {
			request.setAttribute("errorMsg", "에러났다 야.");
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
