package com.pm.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.qna.model.service.QnaService;
import com.pm.common.model.vo.PageInfo;
import com.pm.myPage.model.service.MyPageService;
import com.pm.myPage.model.vo.MyPost;

/**
 * Servlet implementation class MyPostController
 */
@WebServlet("/myPost.mp")
public class MyPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPostController() {
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
				
		listCount = new QnaService().selectListCount(); 
		currentPage = Integer.parseInt(request.getParameter("cpage"));
				
		pageLimit = 5;
		boardLimit = 10;
				
				
		maxPage = (int) Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<MyPost> list = new MyPageService().selectList(pi, userNo);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/myPage/myPost.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
