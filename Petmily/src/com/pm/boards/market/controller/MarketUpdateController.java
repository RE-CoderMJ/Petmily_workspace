package com.pm.boards.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.pm.boards.market.model.service.MarketService;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.MyFileRenamePolicy;
import com.pm.common.model.vo.Attachment;

/**
 * Servlet implementation class MarketUpdateController
 */
@WebServlet("/update.market")
public class MarketUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int maxSize = 30 * 1024 * 1024;
		String savePath = request.getSession().getServletContext().getRealPath("/resources/boards_upfiles/market_upfiles/");
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
		int marketNo = Integer.parseInt(multiRequest.getParameter("marketNo")); 
		
		Market m = new Market();
		m.setMarketNo(marketNo);
		m.setMarketWriter(multiRequest.getParameter("userNo"));
		m.setCategory(multiRequest.getParameter("category"));
		m.setdCategory(multiRequest.getParameter("d-category"));
		m.setMarketTitle(multiRequest.getParameter("title"));
		m.setPrice(multiRequest.getParameter("price"));
		m.setMarketContent(multiRequest.getParameter("content"));
		
		ArrayList<Attachment> list = new ArrayList<>();
		
		int fileCount = Integer.parseInt(multiRequest.getParameter("file-count"));
		
		for(int i=1; i<=fileCount; i++) {
			String key = "file" + i;
			
			if(multiRequest.getOriginalFileName(key) != null) {
				Attachment at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName(key));
				at.setChangeName(multiRequest.getFilesystemName(key));
				at.setFilePath("resources/boards_upfiles/market_upfiles/");
				
				if(multiRequest.getParameter("originAttNo") != null) {
					at.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("originAttNo")));
				}else {
					at.setRefNo(marketNo);
				}

				list.add(at);					
			}
		}
		
		int result = new MarketService().updateMarket(m, list);
		
		if(result >0) {
			response.sendRedirect(request.getContextPath() + "/detail.market?mno=" + marketNo);
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
