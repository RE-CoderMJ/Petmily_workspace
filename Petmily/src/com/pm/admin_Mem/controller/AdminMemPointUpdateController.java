package com.pm.admin_Mem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.admin_Mem.model.service.AdminMemService;
import com.pm.member.model.vo.Member;

/**
 * Servlet implementation class AdminMemPointUpdate
 */
@WebServlet("/memUpPoint.ad")
public class AdminMemPointUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemPointUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int memNo = Integer.parseInt(request.getParameter("mno"));
		int adPoint = Integer.parseInt(request.getParameter("adpoint"));
		
		Member mp = new Member();
		mp.setMemNo(memNo);
		mp.setAdPoint(adPoint);
		
		int result = new AdminMemService().updatePoint(mp);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alert", "포인트(적립/차감) 완료");
			response.sendRedirect(request.getContextPath() + "/memPoint.ad?cpage=1");
			
		}else {
			request.setAttribute("errorMsg","에러났어요ㅋㅋ");
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
