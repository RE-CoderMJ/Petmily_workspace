package com.pm.boards.missing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.missing.model.service.MissingService;
import com.pm.boards.missing.model.vo.Missing;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class MissingUpdateFormController
 */
@WebServlet("/updateForm.missing")
public class MissingUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MissingUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int miNo = Integer.parseInt(request.getParameter("miNo"));
		
		Missing mi = new MissingService().selectMissing(miNo);
		ArrayList<Attachment> list = new MissingService().selectAttachmentList(miNo);
		
		request.setAttribute("mi", mi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/boards/missing/missingUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
