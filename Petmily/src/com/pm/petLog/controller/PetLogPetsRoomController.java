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
		
		ArrayList<PetLog> list = new PetLogService().selectPetLogList();
		PetsRoom pr = new PetLogService().selectPetsRoom();
		
		request.setAttribute("list", list);
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
