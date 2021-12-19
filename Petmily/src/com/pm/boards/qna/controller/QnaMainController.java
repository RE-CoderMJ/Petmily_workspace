package com.pm.boards.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.qna.model.service.QnaService;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.model.vo.PageInfo;

/**
 * Servlet implementation class QnAMainController
 */
@WebServlet("/main.qna")
public class QnaMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// --------------- 페이징 처리 ---------------
		int listCount;
		int currentPage; 
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
				
		listCount = new QnaService().selectListCount(); // 총 게시글 갯수 조회
		currentPage = Integer.parseInt(request.getParameter("cpage"));
				
		pageLimit = 5;
		boardLimit = 10;
				
				
		maxPage = (int) Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Qna> list = new QnaService().selectList(pi);
				
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
				
		request.getRequestDispatcher("views/boards/qna/qnaMain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
