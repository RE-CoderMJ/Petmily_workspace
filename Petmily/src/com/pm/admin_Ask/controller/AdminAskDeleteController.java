package com.pm.admin_Ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Ask.model.service.AskService;

/**
 * Servlet implementation class AdminAskDeleteController
 */
@WebServlet("/adminDelete.ak")
public class AdminAskDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAskDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int askNo = Integer.parseInt(request.getParameter("num"));
    	
		int result = new AskService().deleteAsk(askNo);
		
    	if(result > 0) {
    		
    		response.sendRedirect(request.getContextPath() + "/adminList.ak?cpage=1");
    		
    	}else {
    		request.setAttribute("errorMsg", "궁금해요 게시글 삭제 실패!");
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
