package com.pm.admin_Market.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Market.model.service.MarketService;

/**
 * Servlet implementation class AdminMarketDeleteController
 */
@WebServlet("/adminDelete.mk")
public class AdminMarketDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMarketDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int marketNo = Integer.parseInt(request.getParameter("num"));
    	
		int result = new MarketService().deleteMarket(marketNo);
		
    	if(result > 0) {
    		request.getSession().setAttribute("alertMsg", "성공적으로 '중고거래' 게시글을 삭제하였습니다.");
    		response.sendRedirect(request.getContextPath() + "/adminList.mk?cpage=1");
    		
    	}else {
    		request.setAttribute("errorMsg", "중고거래 게시글 삭제 실패!");
    		request.getRequestDispatcher("views/common/error/loginErrorPage.jsp").forward(request, response);
    		
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
