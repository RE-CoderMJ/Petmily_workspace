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
import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetLog;

/**
 * Servlet implementation class AjaxPetsRoomDetailView
 */
@WebServlet("/detail.petLog")
public class AjaxPetsRoomDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPetsRoomDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int petLogNo = Integer.parseInt(request.getParameter("petLogNo"));
		
		PetLog pl = new PetLogService().selectPetLog(petLogNo);
		ArrayList<Attachment> list = new PetLogService().selectAttachmentList(petLogNo);
		
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("pl", pl);
		datas.put("list", list);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(datas, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
