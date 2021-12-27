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
import com.pm.shop.model.vo.Cancel;

/**
 * Servlet implementation class MpCancelDetailSelectController
 */
@WebServlet("/canceldetail.my")
public class MpCancelDetailSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpCancelDetailSelectController() {
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
		
		Cancel c = new CancelService().selectDetailList(orderNo, userNo);
		
		request.setAttribute("c", c);
		
		request.getRequestDispatcher("views/shop/mypage/cancelDetail.jsp").forward(request, response);
		//request.getRequestDispatcher("views/shop/mypage/orderCancelForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
