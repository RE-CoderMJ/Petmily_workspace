package com.pm.admin_Notify.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Notify.model.service.AdminNotifyService;

/**
 * Servlet implementation class AdminNfDeleteController
 */
@WebServlet("/NfDelete.ad")
public class AdminNfDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNfDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int reportNo = Integer.parseInt(request.getParameter("rnum"));
		
		int result = new AdminNotifyService().deleteNotify(reportNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alert", "회원삭제 완!");
			
			response.sendRedirect(request.getContextPath() + "/nfList.ad?cpage=1");
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
