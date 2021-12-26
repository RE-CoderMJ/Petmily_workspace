package com.pm.admin_Market.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Market.model.service.MarketService;
import com.pm.admin_Market.model.vo.Market;

/**
 * Servlet implementation class AdminMarketDetailController
 */
@WebServlet("/adminDetail.mk")
public class AdminMarketDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMarketDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int marketNo = Integer.parseInt(request.getParameter("num"));
		
		Market m = new MarketService().selectMarket(marketNo);

			
			request.setAttribute("market", m);
			request.getRequestDispatcher("views/admin/market/adminMarketDetailView.jsp").forward(request, response);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
