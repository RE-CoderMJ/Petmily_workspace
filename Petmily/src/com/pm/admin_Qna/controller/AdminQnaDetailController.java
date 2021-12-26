package com.pm.admin_Qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Qna.model.service.QnaService;
import com.pm.admin_Qna.model.vo.Qna;

/**
 * Servlet implementation class AdminQnaDetailController
 */
@WebServlet("/adminDetail.qna")
public class AdminQnaDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQnaDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int qnaNo = Integer.parseInt(request.getParameter("num"));
		
		Qna q = new QnaService().selectQna(qnaNo);

			
			request.setAttribute("qna", q);
			request.getRequestDispatcher("views/admin/qna/adminQnaDetailView.jsp").forward(request, response);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
