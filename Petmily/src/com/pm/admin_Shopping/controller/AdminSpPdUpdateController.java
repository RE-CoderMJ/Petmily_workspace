package com.pm.admin_Shopping.controller;

import java.io.File;
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
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class AdminSpPdUpdateController
 */
@WebServlet("/adSpUdfin.ad")
public class AdminSpPdUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSpPdUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin/adminSp_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());

			int ProductNo = Integer.parseInt(multiRequest.getParameter("pno")); 

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
			as.setProductNo(ProductNo);
			as.setManagerNo(managerNo);
			as.setCategory(category);
			as.setProductName(productName);
			as.setProductOp(productOp);
			as.setPrice(price);
			as.setExplain(explain);
			as.setDetail(detail);
			as.setAmount(amount);
			
			
			ArrayList<Attachment> list = new ArrayList<>();

			for(int i=1; i<=3; i++) {
				
				String key = "file" + i;
				String originFileNo = "originFileNo" + i;
				Attachment at2 = new Attachment();
				
				if(multiRequest.getOriginalFileName(key) != null) {
					
					if(key.equals("file1")) {
						// 기본이미지 = file1 
						at2.setOriginName(multiRequest.getOriginalFileName(key));
						at2.setChangeName(multiRequest.getFilesystemName(key));
						at2.setFilePath("resources/admin/adminSp_upfiles/");
	
						at2.setAttachmentNo(Integer.parseInt(multiRequest.getParameter((originFileNo))));
						
						at2.setFileLevel(1);
						
						System.out.println("origin확인:" + multiRequest.getOriginalFileName(key));
						
					}else {
						// 세부이미지
						at2.setAttachmentNo(Integer.parseInt(multiRequest.getParameter(originFileNo)));
						at2.setOriginName(multiRequest.getOriginalFileName(key));
						at2.setChangeName(multiRequest.getFilesystemName(key));
						
						if(multiRequest.getParameter(originFileNo) != null) {
							// 기존의 첨부파일이 있었을 경우 => Update Attachment (기존첨부파일번호)
							at2.setFilePath("resources/admin/adminSp_upfiles/");
							
							System.out.println("세부origin확인:" + multiRequest.getOriginalFileName(key));
	
						}else {
							// 기존 첨부파일 없었을 경우 => Insert Attachment (현재게시글 번호 필요)
							at2.setRefNo(ProductNo);
						}
						at2.setFileLevel(2);
					}
					
					list.add(at2);
					
					}
			}
				
				
			int result = new AdminShoppingService().updateProduct(as, list);
			
			if(result >0) {
				request.getSession().setAttribute("alert", "성공적으로 상품 수정 완료 되었습니다.");
				response.sendRedirect(request.getContextPath() + "/spPdUd.ad?cpage=1");
			}else {
				request.setAttribute("errorMsg", "쇼핑몰 수정 실패 ㅋㅋ");
			
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
