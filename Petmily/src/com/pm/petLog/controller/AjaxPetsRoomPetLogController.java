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
import com.pm.common.model.vo.PageInfo;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetLog;

/**
 * Servlet implementation class AjaxPetsRoomPetLogController
 */
@WebServlet("/pl.petsRoom.petLog")
public class AjaxPetsRoomPetLogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPetsRoomPetLogController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		int listCount = new PetLogService().selectPetLogCount(memNo);
		int currentPage = Integer.parseInt(request.getParameter("page"));
		int pageLimit = 5;
		int boardLimit = 9;
		
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		ArrayList<PetLog> list = new PetLogService().selectPetLogList(memNo, pi);
		
		HashMap<String, Object> plList = new HashMap<>();
		plList.put("pi", pi);
		plList.put("list", list);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(plList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
