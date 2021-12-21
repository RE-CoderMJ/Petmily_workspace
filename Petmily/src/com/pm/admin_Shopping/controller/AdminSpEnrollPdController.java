package com.pm.admin_Shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.admin_Shopping.model.service.AdminShoppingService;
import com.pm.admin_Shopping.model.vo.AdminShopping;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class adminSpEnrollPdController
 */
@WebServlet("/spErPdst.ad")
public class AdminSpEnrollPdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSpEnrollPdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");		
		
		if(ServletFileUpload.isMultipartContent(request)) {
		
			int maxSize = 10*1024*1024;
			
			// 저장시킬 폴더 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin/adminSp_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			/*
			AdminShopping as = new AdminShopping();
			as.setManagerNo(Integer.parseInt(multiRequest.getParameter("managerNo")));
			as.setCategory(multiRequest.getParameter("category"));
			as.setProductName(multiRequest.getParameter("productName"));
			as.setProductOpArr(multiRequest.getParameter("productOp"));
			as.setPrice(Integer.parseInt(multiRequest.getParameter("price")));
			as.setExplain(multiRequest.getParameter("explain"));
			as.setDetail(multiRequest.getParameter("detail"));
			as.setAmount(Integer.parseInt(multiRequest.getParameter("amount")));
			//as.setBasicImg(multiRequest.getParameter("basicImg"));
			*/
			
			int managerNo = Integer.parseInt(multiRequest.getParameter("managerNo"));
			String category = multiRequest.getParameter("category"); 
			String productName = multiRequest.getParameter("productName");
			String[] productOpArr = multiRequest.getParameterValues("productOp"); 
			int price = Integer.parseInt(multiRequest.getParameter("price")); 
			String explain = multiRequest.getParameter("explain"); 
			String detail = multiRequest.getParameter("detail"); 
			int amount = Integer.parseInt(multiRequest.getParameter("amount"));

			String productOp = "";
			
			if(productOpArr != null) {
				productOp = String.join(",", productOpArr);
			}
			
			//기본생성자로 생성 후 setter 메소드 이용해서 담기			
			AdminShopping as = new AdminShopping();
			as.setManagerNo(managerNo);
			as.setCategory(category);
			as.setProductName(productName);
			as.setProductOp(productOp);
			as.setPrice(price);
			as.setExplain(explain);
			as.setDetail(detail);
			as.setAmount(amount);
			
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=4; i++) {
				
				String key = "file" + i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					// 첨부파일이 존재할 경우
					// Attachment 생성 + 원본명, 수정명, 폴더경로, 파일레벨 담아서(대표1상세2) => list에 쌓기
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/admin/adminSp_upfiles/");
					
					if(i == 1) { // 대표이미지
						at.setFileLevel(1);
					}else { // 상세이미지
						at.setFileLevel(2);
					}
					list.add(at);
					
				}
			}
			
				int result = new AdminShoppingService().insertShoppingPd(as, list);
				
				if(result > 0) {
					// 성공 => /jsp/list.th	url요청 => 목록페이지
					request.getSession().setAttribute("alertMsg", "쇼핑몰 등록 성공 ㅊㅋ");
					response.sendRedirect(request.getContextPath() + "/spPdUd.ad?cpage=1");
				}else {
					request.setAttribute("errorMsg", "님아 쇼핑몰 등록 실패요 ㅋㅋ");
				}
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
