package com.pm.petLog.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetsRoom;

/**
 * Servlet implementation class AjaxPetsRoomProfileUpdateFormController
 */
@WebServlet("/select.petsRoom")
public class AjaxPetsRoomProfileUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPetsRoomProfileUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		PetsRoom pr = new PetLogService().selectPetsRoom(memNo);
		Attachment att = new PetLogService().selectAttachment(memNo);
		
		HashMap<String, Object> info = new HashMap<>();
		info.put("pr", pr);
		info.put("att", att);
		
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(info, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
