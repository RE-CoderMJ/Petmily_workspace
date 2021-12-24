package com.pm.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pm.shop.model.service.ExchangeService;
import com.pm.shop.model.vo.Exchange;

/**
 * Servlet implementation class MpExchangeInsertController
 */
@WebServlet("/exchangeinsert.my")
public class MpExchangeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpExchangeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		

		// 3. DB에 기록할 데이터를 뽑아서 vo에 주섬주섬 담기
		//    > 상품번호, 교환내용, 결제방식, 배송메모 뽑아서 Board 테이블 insert
		
		int orderPnum = Integer.parseInt(request.getParameter("pno"));
		String ecreason = request.getParameter("ecreason");
		String payment = request.getParameter("payment");
		String deliveryMemo = request.getParameter("deliveryMemo");
		
		Exchange ec = new Exchange();
		ec.setOrderPnum(orderPnum);
		ec.setEcreason(ecreason);
		ec.setPayment(payment);
		ec.setDeliveryMemo(deliveryMemo);
		
		// 4. 서비스 요청 (요청처리)
		int result = new ExchangeService().insertExchanage(ec);
		
		
		// 5. 응답뷰 지정
		if(result > 0) {
			//  성공 => /jsp/list.bo?cpage=1    url 재요청 => 목록페이지
			request.getSession().setAttribute("alertMsg", "일반게시글 작성 성공");
			response.sendRedirect(request.getContextPath() + "/exchangeComplete.my"); // (교환완료페이지)
			
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
