package com.pm.admin_Inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.admin_Inquiry.model.service.InquiryService;
import com.pm.admin_Inquiry.model.vo.Inquiry;
import com.pm.admin_Login.model.vo.AdminMember;

/**
 * Servlet implementation class AdminInquiryInsertController
 */
@WebServlet("/adminInsert.iq")
public class AdminInquiryInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		

		String managerNo = request.getParameter("managerNo");
		String replyContent = request.getParameter("iqcontent");
		String replyDate = request.getParameter("iqdate");
		
		
		HttpSession session = request.getSession();
		int ManagerNo = ((AdminMember)session.getAttribute("loginAdmin")).getManagerNo();
		
		Inquiry p = new Inquiry();


		p.setManagerNo(String.valueOf(managerNo)); // 무조건 String으로 만들어줌 .valueOf()
		p.setReplyContent(replyContent);
		p.setReplyDate(replyDate);

		
	
		int result = new InquiryService().insertInquiry(p);
		
		if(result > 0) { 
			

			response.sendRedirect(request.getContextPath() + "/adminList.faq?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "상품문의 답변 등록에 실패하였습니다!");
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
