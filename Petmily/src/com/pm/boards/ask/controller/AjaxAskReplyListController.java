package com.pm.boards.ask.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.boards.ask.model.service.AskService;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

/**
 * Servlet implementation class AjaxAskReplyListController
 */
@WebServlet("/rlist.ask")
public class AjaxAskReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxAskReplyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ano = Integer.parseInt(request.getParameter("ano"));
		int replyCount = new AskService().selectReplyCount(ano);
		int currentPage = Integer.parseInt(request.getParameter("rpage"));
		int pageLimit = 5;
		int replyLimit = 10;
		int maxPage = (int)Math.ceil((double)replyCount / replyLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(replyCount, currentPage, pageLimit, replyLimit, maxPage, startPage, endPage);
		
		ArrayList<Reply> list = new AskService().selectReplyList(pi, ano);
		
		response.setContentType("application/json; charset=utf-8");
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
