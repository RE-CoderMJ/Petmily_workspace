package com.pm.admin_Boards.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Faq.model.service.FaqService;
import com.pm.admin_Faq.model.vo.Faq;
import com.pm.common.model.vo.PageInfo;

/**
 * Servlet implementation class AdminBoardsListController
 */
@WebServlet("/adminList.bo")
public class AdminBoardsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminBoardsListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		int maxPage;
		int startPage;
		int endPage;
		
		/* 총 게시글 갯수 */
		listCount = new FaqService().selectListCount();
		
		/* 현재 페이지 */
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		/* 페이지 최대 갯수 */
		pageLimit = 5;
		
		/* 게시글 최대 갯수 */
		boardLimit = 10;
		
		maxPage = (int)Math.ceil( (double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Boards> list = new BoardsService().selectList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);

		
		

		
		
		
		request.getRequestDispatcher("views/admin/boards/adminBoardsListView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
