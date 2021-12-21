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
 * Servlet implementation class AdminFaqUpdateController
 */
@WebServlet("/adminUpdate.faq")
public class AdminFaqUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int faqNo = Integer.parseInt(request.getParameter("num"));
		String faqCate = request.getParameter("cate");
		String faqTitle = request.getParameter("title");
		String faqContent = request.getParameter("content");
		
		Faq f = new Faq();
		f.setFaqCate(faqCate);
		f.setFaqNo(faqNo);
		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		
		
		int result = new FaqService().updateFaq(f);
		
		if (result > 0) {
			request.getSession().setAttribute("alertMsg", "성공적으로 FAQ를 수정하였습니다.");
			response.sendRedirect(request.getContextPath() + "/adminDetail.faq?num=" + faqNo);
			
			
			
		}else {	
			request.setAttribute("errorMsg", "FAQ 수정에 실패하였습니다!");
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
