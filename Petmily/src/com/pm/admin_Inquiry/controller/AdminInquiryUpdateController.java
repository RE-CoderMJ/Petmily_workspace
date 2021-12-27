package com.pm.admin_Inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Inquiry.model.service.InquiryService;
import com.pm.admin_Inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class AdminInquiryUpdateController
 */
@WebServlet("/adminUpdate.iq")
public class AdminInquiryUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int pinquiryNo = Integer.parseInt(request.getParameter("num"));
		String managerNo = request.getParameter("managerNo");
		String replyContent = request.getParameter("reply_content");
		String replyDate = request.getParameter("reply_date");

		
		Inquiry p = new Inquiry();
		p.setPinquiryNo(pinquiryNo);
		p.setManagerNo(managerNo);
		p.setReplyContent(replyContent);
		p.setReplyDate(replyDate);

		int result = new InquiryService().updateInquiry(p);
		
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
