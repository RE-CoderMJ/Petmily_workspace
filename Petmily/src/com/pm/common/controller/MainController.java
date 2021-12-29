package com.pm.common.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.boards.ask.model.service.AskService;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.boards.market.model.service.MarketService;
import com.pm.boards.market.model.vo.Market;
import com.pm.boards.missing.model.service.MissingService;
import com.pm.boards.missing.model.vo.Missing;
import com.pm.member.model.vo.Member;
import com.pm.petLog.model.service.PetLogService;
import com.pm.petLog.model.vo.PetLog;
import com.pm.petLog.model.vo.PetsRoom;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/index")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userNo = 0;
		if(((Member)request.getSession().getAttribute("loginUser")) != null) {
			userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();			
		}
		
		ArrayList<Ask> mAskList = new AskService().selectMainList();
		ArrayList<Market> mMarketList = new MarketService().selectMainList();
		ArrayList<Missing> mMissingList = new MissingService().selectMainList();
		ArrayList<PetLog> mPetLogList = new PetLogService().selectMainList();
		PetsRoom pr = new PetLogService().selectPetsRoom(userNo);
		
		request.setAttribute("pr", pr);
		request.setAttribute("mPetLogList", mPetLogList);
		request.setAttribute("mAskList", mAskList);
		request.setAttribute("mMarketList", mMarketList);
		request.setAttribute("mMissingList", mMissingList);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
