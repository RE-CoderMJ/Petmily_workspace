package com.pm.admin_Shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			//System.out.println("일단 확인 테스트...죽고싶네 다음생엔 보미로 태어난다 이것도 출력안되면 걍 머리박음");
		
			int maxSize = 10*1024*1024;
			
			// 저장시킬 폴더 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin/adminSp_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			//System.out.println(savePath);
			
			AdminShopping as = new AdminShopping();
			as.setManagerNo(Integer.parseInt(multiRequest.getParameter("managerNo")));
			as.setCategory(multiRequest.getParameter("category"));
			as.setProductName(multiRequest.getParameter("productName"));
			as.setProductOp(multiRequest.getParameter("productOp"));
			as.setPrice(Integer.parseInt(multiRequest.getParameter("price")));
			as.setExplain(multiRequest.getParameter("explain"));
			as.setDetail(multiRequest.getParameter("detail"));
			as.setAmount(Integer.parseInt(multiRequest.getParameter("amount")));
			//as.setBasicImg(multiRequest.getParameter("basicImg"));
			
			//int opcount = 
			
			//첨부파일
			//ArrayList<Attachment> list = new ArrayList<>();
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
					request.setAttribute("alertMsg", "쇼핑몰 등록 성공 ㅊㅋ");
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
