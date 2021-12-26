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
import com.pm.common.model.vo.PageInfo;

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
      
	  int listCount;
	  int currentPage;
	  int pageLimit;
	  int boardLimit;
	  
	  int maxPage;
	  int startPage;
	  int endPage;
	  
	  listCount = new AskService().selectAskCount();
	  currentPage = Integer.parseInt(request.getParameter("page"));
	  pageLimit = 5;
	  boardLimit = 5;
	  maxPage = (int)Math.ceil((double)listCount / boardLimit);
	  startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
	  endPage = startPage + pageLimit - 1;
	  
	  if(endPage >  maxPage) {
		  endPage = maxPage;
	  }
	  
	  PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
	  
	  ArrayList<Ask> list = new AskService().selectAskList(pi);
	  
	  request.setAttribute("pi", pi);
	  request.setAttribute("list", list);
	  
	  request.getRequestDispatcher("views/boards/ask/askMain.jsp").forward(request, response);
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}