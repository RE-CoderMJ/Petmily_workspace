package com.pm.boards.ask.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.ask.model.service.AskService;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.service.PetLogService;

/**
 * Servlet implementation class AskDetailController
 */
@WebServlet("/detail.ask")
public class AskDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ano = Integer.parseInt(request.getParameter("ano"));
		
		int result = new AskService().increaseCount(ano);
		
		if(result > 0) {
			Ask a = new AskService().selectAsk(ano);
			ArrayList<Attachment> list = new AskService().selectAttachmentList(ano);
			int replyCount = new AskService().selectReplyCount(ano);
			
			request.setAttribute("replyCount", replyCount);
			request.setAttribute("a", a);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("views/boards/ask/askDetailView.jsp").forward(request, response);
		}else {
			
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
