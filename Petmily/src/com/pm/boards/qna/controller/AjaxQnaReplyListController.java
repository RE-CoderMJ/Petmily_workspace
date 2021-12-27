package com.pm.boards.qna.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.boards.qna.model.service.QnaService;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

/**
 * Servlet implementation class AjaxQnaReplyListController
 */
@WebServlet("/rlist.qna")
public class AjaxQnaReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxQnaReplyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(request.getParameter("qno"));
		
		int replyCount;
		int currentPage; 
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
				
		replyCount = new QnaService().selectReplyCount(qnaNo); 
		currentPage = Integer.parseInt(request.getParameter("rpage"));
				
		pageLimit = 5;
		boardLimit = 10;
				
				
		maxPage = (int) Math.ceil((double)replyCount / boardLimit);
		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(replyCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		

		ArrayList<Reply> list = new QnaService().selectReplyList(pi, qnaNo);
		HashMap<String, Object> result = new HashMap<>();
		result.put("pi", pi);
		result.put("list", list);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
