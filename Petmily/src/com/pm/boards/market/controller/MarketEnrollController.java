package com.pm.boards.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.pm.boards.market.model.service.MarketService;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class MarketInsertController
 */
@WebServlet("/enroll.market")
public class MarketEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketEnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024*1024*30;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/boards_upfiles/market_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Market m = new Market();
			m.setMarketWriter(multiRequest.getParameter("userNo"));
			m.setCategory(multiRequest.getParameter("category"));
			m.setdCategory(multiRequest.getParameter("d-category"));
			m.setMarketTitle(multiRequest.getParameter("title"));
			m.setPrice(multiRequest.getParameter("price"));
			m.setMarketContent(multiRequest.getParameter("content"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			int fileCount = Integer.parseInt(multiRequest.getParameter("file-count"));
			
			for(int i=1; i<=fileCount; i++){
				
				String key="file" + i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/boards_upfiles/market_upfiles/");
					
					list.add(at);
				}
			}
			
			int result = new MarketService().enrollMarket(m, list);
			
			if(result > 0) {
				response.sendRedirect(request.getContextPath() + "/main.market?page=1");
			}else {
				
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
