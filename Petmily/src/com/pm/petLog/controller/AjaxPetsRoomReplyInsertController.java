package com.pm.petLog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.common.model.vo.Reply;
import com.pm.member.model.vo.Member;
import com.pm.petLog.model.service.PetLogService;

/**
 * Servlet implementation class AjaxPetsRoomReplyInsertController
 */
@WebServlet("/rinsert.petLog")
public class AjaxPetsRoomReplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPetsRoomReplyInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = request.getParameter("content");
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		Reply r = new Reply();
		r.setReplyContent(replyContent);
		r.setContentNo(pno);
		r.setReplyWriter(userNo);
		
		int result = new PetLogService().insertReply(r);
		
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
