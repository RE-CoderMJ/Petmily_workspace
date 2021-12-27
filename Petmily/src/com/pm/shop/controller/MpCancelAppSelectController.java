package com.pm.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.member.model.vo.Member;
import com.pm.shop.model.service.CancelService;
import com.pm.shop.model.service.CartService;
import com.pm.shop.model.vo.Cancel;
import com.pm.shop.model.vo.Cart;

/**
 * Servlet implementation class MpCancelAppSelectController
 */
@WebServlet("/appselect.my")
public class MpCancelAppSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpCancelAppSelectController() {
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
		
		Cancel ca1 = new CancelService().selectCancelApp(userNo, orderNo);
		Cancel sum = new CancelService().selectSum(userNo, orderNo);
					
		request.setAttribute("ca1", ca1);
		request.setAttribute("sum", sum);

		request.getRequestDispatcher("views/shop/mypage/orderCancelForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
