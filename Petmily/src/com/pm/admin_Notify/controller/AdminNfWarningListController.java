package com.pm.admin_Notify.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Notify.model.service.AdminNotifyService;
import com.pm.admin_Notify.model.vo.AdminNotify;
import com.pm.common.model.vo.PageInfo;

/**
 * Servlet implementation class AdminNfWarningListController
 */
@WebServlet("/nfWarningList.ad")
public class AdminNfWarningListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNfWarningListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount;	 // 총 게시글 개수
		int currentPage; // 현재 페이지
		int pageLimit;	 // 페이지 최대개수 (몇개 단위씩)
		int boardLimit;	 // 게시글 최대개수 (몇개 단위씩)
		
		int maxPage;	 // 가장 마지막 페이지
		int startPage;	 // 시작수
		int endPage;	 // 끝수
		
		listCount = new AdminNotifyService().selectWarningListCount();
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		pageLimit = 5;
		
		boardLimit = 5;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<AdminNotify> list = new AdminNotifyService().selectNfWarningList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		System.out.println("2차확인:"+ list);
		
		request.getRequestDispatcher("views/admin/notify/adminWarningList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
