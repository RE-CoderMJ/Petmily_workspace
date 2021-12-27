package com.pm.shop.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.common.model.vo.PageInfo;
import com.pm.member.model.vo.Member;
import com.pm.shop.model.service.OrderSelectService;
import com.pm.shop.model.service.PointService;
import com.pm.shop.model.vo.OrderSelect;


/**
 * Servlet implementation class MpOredrSelect
 */
@WebServlet("/orderselect.my")
public class MpOrderSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpOrderSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		int userNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		
		// ------- 페이징 처리 ---------
		int listCount; 		// 현재 총 게시글 개수
		int currentPage; 	// 현재 페이지 (즉, 사용자가 요청한 페이지)
		int pageLimit; 		// 페이지 하단에 보여질 페이징바의 페이지 최대개수 (몇개 단위씩)
		int boardLimit; 	// 한페이지 내에 보여질 게시글 최대개수 (몇개 단위씩)
		// 위의 4개를 가지고 아래 3개의 값을 구해낼것
		int maxPage; 		// 가장 마지막 페이지 ( 총 페이지 수 )
		int startPage;	  	// 페이징바의 시작수
		int endPage;		// 페이징바의 끝수
		
		// * listCount : 총 게시글 개수
		listCount = new OrderSelectService().selectListCount(userNo);
		
		// * currentPage : 현재 페이지 (즉, 사용자가 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		// * pageLimit : 페이징바의 페이지 최대 개수 (단위)
		pageLimit = 5;
		
		// * boardLimit : 게시글 최대 개수 (단위)
		boardLimit = 5;
		
		maxPage = (int)Math.ceil( (double)listCount / boardLimit );
		startPage = (currentPage-1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
				
		// startPage가 11이어서 endPage는 20으로 됨 ( 근데 maxPage가 고작 13밖에 안되면? )
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// com.kh.common.model.vo.PageInfo
		// * 페이징바를 만들때 필요한 객체
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		// * 현재 요청한 페이지(currentPage)에 보여질 <주문내역 리스트> boardLimit수만큼 조회해가기
		ArrayList<OrderSelect> list = new OrderSelectService().selectList(pi, userNo);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		System.out.println(pi);
		request.getRequestDispatcher("views/shop/mypage/orderSelect.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
