package com.pm.petLog.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetLog;
import com.pm.petLog.model.vo.PetsRoom;

/**
 * Servlet implementation class PetLogPetsRoomController
 */
@WebServlet("/petsRoom.petLog")
public class PetLogPetsRoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetLogPetsRoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		/* ArrayList<PetLog> list = new PetLogService().selectPetLogList(memNo); */
		PetsRoom pr = new PetLogService().selectPetsRoom(memNo);
		int postCount = new PetLogService().selectPetLogCount(memNo);
		/* request.setAttribute("list", list); */
		request.setAttribute("postCount", postCount);
		request.setAttribute("pr", pr);
		request.getRequestDispatcher("views/petLog/petLogPetsRoom.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
