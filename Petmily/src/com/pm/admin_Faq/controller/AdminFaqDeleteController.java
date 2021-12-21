package com.pm.admin_Faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Faq.model.service.FaqService;

/**
 * Servlet implementation class AdminFaqDeleteController
 */
@WebServlet("/adminDelete.faq")
public class AdminFaqDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int faqNo = Integer.parseInt(request.getParameter("num"));
    	
		int result = new FaqService().deleteFaq(faqNo);
		
    	if(result > 0) {
    		request.getSession().setAttribute("alertMsg", "성공적으로 FAQ를 삭제하였습니다.");
    		response.sendRedirect(request.getContextPath() + "/adminList.no?cpage=1");
    		
    	}else {
    		request.setAttribute("errorMsg", "공지사항 삭제 실패");
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
