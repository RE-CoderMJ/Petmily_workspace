package com.pm.admin_Inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Inquiry.model.service.InquiryService;

/**
 * Servlet implementation class AdminInquiryDeleteController
 */
@WebServlet("/adminDelete.iq")
public class AdminInquiryDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pinquiryNo = Integer.parseInt(request.getParameter("inum"));
    	
		int result = new InquiryService().deleteInquiry(pinquiryNo);
		
    	if(result > 0) {

    		response.sendRedirect(request.getContextPath() + "/adminList.iq?cpage=1");
    		
    	}else {
    		request.setAttribute("errorMsg", "상품문의 삭제 실패");
    		request.getRequestDispatcher("views/common/error/loginErrorPage.jsp").forward(request, response);
    		
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
