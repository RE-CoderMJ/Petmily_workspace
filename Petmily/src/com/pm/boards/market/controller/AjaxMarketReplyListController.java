package com.pm.boards.market.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.boards.market.model.service.MarketService;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

/**
 * Servlet implementation class AjaxMarketReplyListController
 */
@WebServlet("/rlist.market")
public class AjaxMarketReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxMarketReplyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mno = Integer.parseInt(request.getParameter("mno"));
		int replyCount = new MarketService().selectReplyCount(mno);
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
		
		ArrayList<Reply> list = new MarketService().selectReplyList(pi, mno);
		
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
