package com.pm.admin_Qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.admin_Login.model.vo.AdminMember;
import com.pm.admin_Qna.model.service.QnaService;
import com.pm.admin_Qna.model.vo.Qna;

/**
 * Servlet implementation class AdminQnaInsertController
 */
@WebServlet("/adminInsert.qna")
public class AdminQnaInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQnaInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("utf-8");
		
		int qnaNo = Integer.parseInt(request.getParameter("num"));
		String qnaReplyContent = request.getParameter("content");
		
		
		
		HttpSession session = request.getSession();
		int ManagerNo = ((AdminMember)session.getAttribute("loginAdmin")).getManagerNo();
		
		Qna q = new Qna();

		
		System.out.println(q);
		q.setQnaNo(qnaNo);
		q.setQnaReplyContent(qnaReplyContent);
		q.setManagerNo(String.valueOf(ManagerNo)); // 무조건 String으로 만들어줌 .valueOf()


		
	
		int result = new QnaService().updateQna(q);
		
		if(result > 0) { 
			
			response.sendRedirect(request.getContextPath() + "/adminList.qna?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "Q&A 답변 등록에 실패하였습니다!");
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
