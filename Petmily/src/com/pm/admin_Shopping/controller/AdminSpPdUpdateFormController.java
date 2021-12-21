package com.pm.admin_Shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Shopping.model.service.AdminShoppingService;
import com.pm.admin_Shopping.model.vo.AdminShopping;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class adminSpPdUpdate2Controller
 */
@WebServlet("/spPdUd2.ad")
public class AdminSpPdUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSpPdUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ProductNo = Integer.parseInt(request.getParameter("pno"));
		
		AdminShoppingService aService = new AdminShoppingService();
		
		AdminShopping as = aService.selectProduct(ProductNo);
		ArrayList<Attachment> list = aService.selectAttachmentList(ProductNo);

		request.setAttribute("as", as);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/shopping/adminSoppingPdUd2.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
