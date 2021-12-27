package com.pm.boards.market.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.market.model.service.MarketService;
import com.pm.common.model.vo.Reply;
import com.pm.member.model.vo.Member;

/**
 * Servlet implementation class AjaxMarketReplyInsertController
 */
@WebServlet("/rinsert.market")
public class AjaxMarketReplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxMarketReplyInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String replyContent = request.getParameter("content");
		int mno = Integer.parseInt(request.getParameter("mno"));
		
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		Reply r = new Reply();
		r.setReplyContent(replyContent);
		r.setContentNo(mno);
		r.setReplyWriter(userNo);
		
		int result = new MarketService().insertReply(r);
		
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
