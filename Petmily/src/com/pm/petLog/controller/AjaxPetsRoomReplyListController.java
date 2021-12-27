package com.pm.petLog.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.boards.ask.model.service.AskService;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;
import com.pm.petLog.model.service.PetLogService;

/**
 * Servlet implementation class AjaxPetsRoomReplyListController
 */
@WebServlet("/rlist.petLog")
public class AjaxPetsRoomReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPetsRoomReplyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		int replyCount = new PetLogService().selectReplyCount(pno);
		
		ArrayList<Reply> list = new PetLogService().selectReplyList(pno);
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("replyCount", replyCount);
		result.put("list", list);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(result, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
