package com.pm.boards.missing.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.boards.ask.model.service.AskService;
import com.pm.boards.missing.model.service.MissingService;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

/**
 * Servlet implementation class AjaxMissingReplyListController
 */
@WebServlet("/rlist.missing")
public class AjaxMissingReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxMissingReplyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int miNo = Integer.parseInt(request.getParameter("miNo"));
		int replyCount = new MissingService().selectReplyCount(miNo);
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
		
		ArrayList<Reply> list = new MissingService().selectReplyList(pi, miNo);
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("pi", pi);
		result.put("list", list);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(result, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
