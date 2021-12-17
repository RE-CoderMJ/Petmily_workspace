package com.pm.admin_Shopping.controller;

import java.io.IOException;
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

/**
 * Servlet implementation class adminSpEnrollPdController
 */
@WebServlet("/spErPd.ad")
public class AdminSpEnrollPdFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSpEnrollPdFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.getRequestDispatcher("views/admin/shopping/adminSoppingEnrollPd.jsp").forward(request, response);

		request.setCharacterEncoding("UTF-8");		
		
		if(ServletFileUpload.isMultipartContent(request)) {
			System.out.println("일단 확인 테스트...죽고싶네 다음생엔 보미로 태어난다 이것도 출력안되면 걍 머리박음");
		
			int maxSize = 10*1024*1024;
			
			// 저장시킬 폴더 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin/adminSp_upfiles/");
			//MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			System.out.println(savePath);
			/* 
			AdminShopping as = new AdminShopping();
			as.setProductNo(Integer.parseInt(multiRequest.getParameter("productNo")));
			as.setCategory(multiRequest.getParameter("category"));
			as.setProductName(multiRequest.getParameter("productName"));
			as.setProductOp(multiRequest.getParameter("productOp"));
			as.setPrice(Integer.parseInt(multiRequest.getParameter("price")));
			as.setExplain(multiRequest.getParameter("explain"));
			as.setDetail(multiRequest.getParameter("detail"));
			as.setAmount(Integer.parseInt(multiRequest.getParameter("amount")));
			as.setBasicImg(multiRequest.getParameter("basicImg"));
			*/
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
