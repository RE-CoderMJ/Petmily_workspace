package com.pm.admin_Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Notice.model.service.NoticeService;
import com.pm.admin_Notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeDetailController
 */
@WebServlet("/adminDetail.no")
public class AdminNoticeDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("views/admin/notice/adminNoticeDetailView.jsp").forward(request,response);
		
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		
		NoticeService nService = new NoticeService();
		
		int result = nService.increaseCount(noticeNo);
		
		if(result > 0) { // 성공 == 조회가능한 공지사항 맞다 => 상세페이지 응답
			
			// 해당 공지사항 조회용 서비스
			Notice n = new NoticeService().selectNotice(noticeNo);
			
			request.setAttribute("notice", n);
			request.getRequestDispatcher("views/admin/notice/adminNoticeDetailView.jsp").forward(request, response);
			
			
		}else {	// 실패 == 조회불가능한 공지사항(삭제되었거나 작성되지 않은 글번호)
			// => 에러문구 보여지는 에러페이지
			request.setAttribute("errorMsg", "공지사항 상세조회에 실패하였습니다.");
			request.getRequestDispatcher("views/common/error/loginErrorPage.jsp").forward(request, response);
			
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
