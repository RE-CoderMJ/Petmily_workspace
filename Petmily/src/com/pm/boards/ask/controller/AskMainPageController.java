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

/**
 * Servlet implementation class AskMainPage
 */
@WebServlet("/main.ask")
public class AskMainPageController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskMainPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
	  ArrayList<Ask> list = new AskService().selectAskList();
	  
	  if(!list.isEmpty()) {
		  request.setAttribute("list", list);
		  request.getRequestDispatcher("views/boards/ask/askMain.jsp").forward(request, response);
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