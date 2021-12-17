package com.pm.admin_Faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Faq.model.service.FaqService;
import com.pm.admin_Faq.model.vo.Faq;

/**
 * Servlet implementation class AdminFaqDetailController
 */
@WebServlet("/adminDetail.faq")
public class AdminFaqDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int faqNo = Integer.parseInt(request.getParameter("fno"));
		

		
		int result = new FaqService().increaseCount(faqNo);
		
		if(result > 0) {
			
			Faq f = new FaqService().selectBoard(faqNo);
			
			request.setAttribute("faq", f);
			request.getRequestDispatcher("views/admin/faq/adminFaqDetailView.jsp").forward(request, response);
			
			
		} else { 
			
			request.setAttribute("errorMsg", "FAQ 상세조회에 실패하였습니다...")
			request.getRequestDispatcher("views/common/error/loginErrorPage.jsp").forward(request, response);
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
