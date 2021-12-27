package com.pm.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.shop.model.service.CancelService;
import com.pm.shop.model.service.ExchangeService;
import com.pm.shop.model.vo.Cancel;
import com.pm.shop.model.vo.Exchange;

/**
 * Servlet implementation class MpCancelInsertController
 */
@WebServlet("/cancelinsert.my")
public class MpCancelInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpCancelInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int orderNo = Integer.parseInt(request.getParameter("orderno"));
		
		
		// 1. DB에 기록할 데이터를 뽑아서 vo에 주섬주섬 담기
		

		String ccreason = request.getParameter("ccreason");
		String payment = request.getParameter("payment");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		String delmemo = request.getParameter("delmemo");
		
		Cancel cc = new Cancel();
		cc.setOrderNo(orderNo);
		cc.setCcReason(ccreason);
		cc.setCcPayment(payment);
		cc.setOrderPnum(pnum);
		cc.setDeliveryMemo(delmemo);
		
		// 2. 서비스 요청 (요청처리)
		int result = new CancelService().insertCancel(cc);
		
		// 3. 응답뷰 지정
		if(result > 0) {
			//  성공 => /jsp/list.bo?cpage=1    url 재요청 => 목록페이지
			request.getSession().setAttribute("alertMsg", "일반게시글 작성 성공");
			response.sendRedirect(request.getContextPath() + "/cancelComplete.my"); // (교환완료페이지)
			
		}else {

			request.setAttribute("errorMsg", "교환 요청 실패");
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
