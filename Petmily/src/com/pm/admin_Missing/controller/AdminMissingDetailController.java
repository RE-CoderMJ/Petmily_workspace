package com.pm.admin_Missing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Faq.model.service.FaqService;
import com.pm.admin_Faq.model.vo.Faq;
import com.pm.admin_Missing.model.service.MissingService;
import com.pm.admin_Missing.model.vo.Missing;

/**
 * Servlet implementation class AdminMissingDetailController
 */
@WebServlet("/adminDetail.miss")
public class AdminMissingDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMissingDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int missingNo = Integer.parseInt(request.getParameter("num"));
		
		Missing m = new MissingService().selectMissing(missingNo);

			
			request.setAttribute("missing", m);
			request.getRequestDispatcher("views/admin/missing/adminMissingDetailView.jsp").forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
