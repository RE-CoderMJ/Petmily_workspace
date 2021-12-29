<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.pm.boards.market.model.vo.Market, com.pm.common.model.vo.PageInfo"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Market> list = (ArrayList<Market>)request.getAttribute("list");
	
	int listCount = (int)request.getAttribute("listCount");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/market/marketMain.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
<style>
/* 페이징바 */
.paging-area button{
     border:  0;
     background-color: transparent;
     height: 40px;
     width: 40px;
     border-radius: 5px;
     margin-bottom: 50px;
     margin-top: 40px;
}
</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>

	<div id="outer">
	    <%@ include file="marketSidebar.jsp" %>
		
		<div class="content-area" align="center">

	        <div id="title-area">
	            <div id="title1">필요한 물건을 저렴하게 구매하고, 필요없어진 물건을 팔아보세요.</div>
	            <div id="title2">* 투명하고 안전한 거래가 펫밀리 중고거래 게시판을 만듭니다.</div>
	        </div>

	        <div id="search-area">
	            <select name="category">
	                <option value="all">전체</option>
	                <option value="dog">강아지</option>
	                <option value="cat">고양이</option>
	                <option value="etc">기타</option>
	            </select>
	            <select name="d-category" id="select-dcategory">
	                <option value="all">전체</option>
	                <option value="buy">살래요</option>
	                <option value="sell">팔래요</option>
	            </select>
	            <input type="text" placeholder="검색어를 입력하세요.">
	            <button class="btn" id="search-btn"></button>
	        </div>

	        <div id="middle-area">
	            <div align="left" id="selectBy">
	               <!-- 선택한 카테고리에 따라 문구 변경됨 -->
	               전체 <%= listCount %>건
	            </div>
	            <% if(loginUser != null) { %>
		            <div align="right">
		               <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.market';">글쓰기</button>
		            </div>
	            <% } %>
	            <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
	        </div>
	        <div class="notice-area" align="left">
	            <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.market';">공지사항</span>
	            <span onclick= "location.href = '<%= contextPath%>/no.market';">게시글 작성시 유의사항</span>
	        </div>

	        <div id="market-content-area">
	        	<% for(Market m : list) { %>
		            <div class="content-box-area">
		            	<input type="hidden" value="<%= m.getMarketNo() %>">
		            	<% if(m.getTitleImg() == null) { %>
		            		<% if(m.getdCategory().equals("1")) { %>
				                <span class="badge badge-pill buy-icon">살래요</span>
				                <div class="photo-box"></div>
				                <div class="content-title" align="left"><%=m.getMarketTitle() %></div>
				                <div class="buy-price" align="right"><%= m.getPrice() %>원</div> 
		            		<% } else{ %>           	
				                <span class="badge badge-pill sell-icon">팔래요</span>
				                <div class="photo-box"></div>
				                <div class="content-title" align="left"><%=m.getMarketTitle() %></div>
				                <div class="sell-price" align="right"><%= m.getPrice() %>원</div>
				        	<% } %>
				        <% } else {%>
				        
			        		<% if(m.getdCategory().equals("1")) { %>
				                <span class="badge badge-pill buy-icon">살래요</span>
				                <div class="photo-box"><img src="<%= contextPath %>/<%=m.getTitleImg() %>" alt=""></div>
				                <div class="content-title" align="left"><%=m.getMarketTitle() %></div>
				                <div class="buy-price" align="right"><%= m.getPrice() %>원</div> 
			            	<% } else{ %>           	
				                <span class="badge badge-pill sell-icon">팔래요</span>
				                <div class="photo-box"><img src="<%= contextPath %>/<%=m.getTitleImg() %>" alt=""></div>
				                <div class="content-title" align="left"><%=m.getMarketTitle() %></div>
				                <div class="sell-price" align="right"><%= m.getPrice() %>원</div>
					        <% } %>
					        
					    <% } %>
			         </div>
			    <% } %>
	        </div>

	        <script>
	            $(function(){
	               $(".content-box-area").click(function(){
	                  //const num = $(this).children().eq(0).text();
	                  
	                  // /jsp/detail.no?num=클릭한글번호
	                  location.href = "<%=contextPath%>/detail.market?mno=" + $(this).children("input").val();
	               })
	            })
	         </script>
         	<script>
           		$(function(){
	               $(".photo-box").each(function(){
	            	   if($(this).html()){
	            		   $(this).css({"background":"url('')"});   
	            	   }
	               })
           				
           		})
           	</script>
           	<% if(list.isEmpty()) { %>
         		<div>등록된 게시글이 없습니다.</div>
         	<% } %>
         
         	<!-- 페이징 바 -->
		    <div class="paging-area" align="center">
		    	<% if(currentPage != 1) { %>
		            <button onclick="location.href='<%=contextPath %>/main.market?page=<%=currentPage-1 %>';"> &lt; </button>
		        <% } %>
		        
		        <% for(int p=startPage; p<=endPage; p++){ %>
		        	<% if(p == currentPage) { %>
		            	<button disabled><%=p %></button>
		            <% }else { %>
		            	<button onclick="location.href='<%=contextPath %>/main.market?page=<%= p %>';"><%= p %></button>
		            <% } %>
		        <% } %>
		        
		        <% if(currentPage != maxPage) { %>
		            <button onclick="location.href='<%=contextPath%>/main.market?page=<%=currentPage+1%>';"> &gt; </button>
		        <% } %>
		    </div>
		    <script>
		        $(function(){
		            $(".paging-area button").click(function(){
		                $(this).siblings(".paging-area button").css({background: "", color:"black"});
		                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
		            })
		        })
		    </script>
            
    	</div>
	</div>
	

    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>