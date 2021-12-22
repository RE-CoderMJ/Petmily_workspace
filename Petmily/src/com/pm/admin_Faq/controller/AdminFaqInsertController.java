package com.pm.admin_Faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.admin_Login.model.vo.AdminMember;
import com.pm.admin_Faq.model.service.FaqService;
import com.pm.admin_Faq.model.vo.Faq;


/**
 * Servlet implementation class AdminFaqInsertController
 */
@WebServlet("/adminInsert.faq")
public class AdminFaqInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String faqTitle = request.getParameter("title");
		String faqContent = request.getParameter("content");
		String managerNo = request.getParameter("managerNo");
		String faqCate = request.getParameter("cate");
		
		
		HttpSession session = request.getSession();
		int ManagerNo = ((AdminMember)session.getAttribute("loginAdmin")).getManagerNo();
		
		Faq f = new Faq();

		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		f.setManagerNo(String.valueOf(managerNo)); // 무조건 String으로 만들어줌 .valueOf()
		f.setFaqCate(faqCate);

		
	
		int result = new FaqService().insertFaq(f);
		
		if(result > 0) { 
			
			session.setAttribute("alertMsg", "성공적으로  FAQ 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminList.faq?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "FAQ 등록에 실패하였습니다!");
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
