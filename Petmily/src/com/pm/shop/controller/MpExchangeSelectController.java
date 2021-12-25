package com.pm.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.shop.model.service.ExchangeService;
import com.pm.shop.model.vo.OrderSelect;

/**
 * Servlet implementation class MpExchangeAppController
 */
@WebServlet("/exchangeselect.my")
public class MpExchangeSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpExchangeSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int orderPnum = Integer.parseInt(request.getParameter("pno"));
		int orderNo = Integer.parseInt(request.getParameter("orderno"));
		
		OrderSelect o = new ExchangeService().selectOrderProduct(orderPnum);
		
		OrderSelect od = new ExchangeService().selectOrderDelivery(orderNo);
		
		
		request.setAttribute("o", o);
		request.setAttribute("od", od);	
		
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
