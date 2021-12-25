package com.pm.admin_Mem.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Mem.model.service.AdminMemService;
import com.pm.common.model.vo.PageInfo;
import com.pm.member.model.vo.Member;

/**
 * Servlet implementation class adminMemManagerController
 */
@WebServlet("/memMg.ad")
public class AdminMemManagerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemManagerController() {
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
		
		// * listCount : 총 게시글 개수
		listCount = new AdminMemService().selectListCount();
		
		// * currentPage : 현재 페이지(즉, 사용자가 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("cpage"));
	
		// * pageLimit : 페이징바의 페이지 최대 개수
		pageLimit = 5;
		
		// * boardLimit : 게시글 최대 개수 (단위)
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// com.kh.common.model.vo.PageInfo
		// * 페이징바를 만들때 필요한 객체
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		//int memNo = Integer.parseInt(request.getParameter("mno"));
		
		ArrayList<Member> list = new AdminMemService().selectList(pi);
		
		//Member m = new AdminMemService().selectMember(memNo);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		//request.setAttribute("m", m);
		
		request.getRequestDispatcher("views/admin/manager/adminMemManager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
