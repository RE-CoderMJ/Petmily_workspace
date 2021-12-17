package com.pm.boards.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.market.model.service.MarketService;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class MarketDetailViewController
 */
@WebServlet("/detail.market")
public class MarketDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int marketNo = Integer.parseInt(request.getParameter("mno"));
		
		int result = new MarketService().increaseCount(marketNo);
		
		if(result > 0) {
			Market m = new MarketService().selectMarket(marketNo);
			ArrayList<Attachment> list = new MarketService().selectAttachmentList(marketNo);
			
			request.setAttribute("m", m);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("views/boards/market/marketDetailView.jsp").forward(request, response);
		}else {
			
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
