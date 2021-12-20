package com.pm.admin_Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pm.admin_Login.model.vo.AdminMember;
import com.pm.admin_Notice.model.service.NoticeService;
import com.pm.admin_Notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeInsertController
 */
@WebServlet("/adminInsert.no")
public class AdminNoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		String managerNo = request.getParameter("managerNo");
		String noticeCate = request.getParameter("noticecate");
		
		HttpSession session = request.getSession();
		int ManagerNo = ((AdminMember)session.getAttribute("loginAdmin")).getManagerNo();
		
		Notice n = new Notice();
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		n.setManagerNo(String.valueOf(ManagerNo)); // 무조건 String으로 만들어줌 .valueOf()
		n.setNoticeCate(noticeCate);

		
		int result = new NoticeService().insertNotice(n);
		
		if(result > 0) { 
			
			session.setAttribute("alertMsg", "성공적으로  공지사항 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminList.no?cpage=1");
			
		}else {
			request.setAttribute("errorMsg", "공지사항 등록에 실패하였습니다!");
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
