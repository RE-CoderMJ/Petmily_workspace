package com.pm.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.shop.model.service.ExchangeService;
import com.pm.shop.model.vo.OrderProduct;

/**
 * Servlet implementation class MpExchangeAppController
 */
@WebServlet("/exchangeapp.my")
public class MpExchangeAppController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpExchangeAppController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int orderPnum = Integer.parseInt(request.getParameter("pno"));
		
		OrderProduct op = new ExchangeService().selectOrderProduct(orderPnum);
		
		//Exchange ec = new ExchangeService().select();
		
		
		request.setAttribute("op", op);
		
		request.getRequestDispatcher("views/shop/mypage/exchangeApplication.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
