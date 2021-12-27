package com.pm.shop.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.member.model.vo.Member;
import com.pm.shop.model.service.OrderSelectService;
import com.pm.shop.model.vo.OrderSelect;

/**
 * Servlet implementation class MpOrderSelectDetailController
 */
@WebServlet("/orderselectdetail.my")
public class MpOrderSelectDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpOrderSelectDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int userNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		int orderNo = Integer.parseInt(request.getParameter("orderno"));
		
		ArrayList<OrderSelect> osdetail = new OrderSelectService().selectDetailList(orderNo, userNo);
		
		request.setAttribute("osdetail", osdetail);
		
		//System.out.println(osdetail);
		
		request.getRequestDispatcher("views/shop/mypage/orderSelectDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
