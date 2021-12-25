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
 * Servlet implementation class AdminMemUpdateController
 */
@WebServlet("/memUp.ad")
public class AdminMemUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		int memNo = Integer.parseInt(request.getParameter("mno"));
		String memName = request.getParameter("name");
		String memEmail = request.getParameter("email");
		String memTel = request.getParameter("tel");
		String nickname = request.getParameter("nick");
		
		Member m = new Member();
		m.setMemNo(memNo);
		m.setMemName(memName);
		m.setMemEmail(memEmail);
		m.setMemTel(memTel);
		m.setNickname(nickname);
		
		int result = new AdminMemService().updateMem(m);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alert", "횐님 수정완.");
			response.sendRedirect(request.getContextPath() + "/memMg.ad?cpage=1");
			
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
