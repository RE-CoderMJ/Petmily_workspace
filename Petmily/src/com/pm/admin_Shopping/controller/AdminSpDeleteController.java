package com.pm.admin_Shopping.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Shopping.model.service.AdminShoppingService;

/**
 * Servlet implementation class AdminSpDeliteController
 */
@WebServlet("/spDelete.ad")
public class AdminSpDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSpDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productNo = Integer.parseInt(request.getParameter("pno"));
		
		int result = new AdminShoppingService().spDelete(productNo);
	
		if(result > 0) {
			request.getSession().setAttribute("alert", "글삭제가 완료 되었습니다.");

			response.sendRedirect(request.getContextPath() + "/spPdUd.ad?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "에러.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
