<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.boards.ask.model.vo.Ask, com.pm.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Ask> list = (ArrayList<Ask>)request.getAttribute("list");
	
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
<link href="resources/css/boards/ask/askMain.css" rel="stylesheet">
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
	   <%@ include file="askSidebar.jsp" %>
	   <div class="content-area" align="center">
	
	      <div id="search-area">
	         <div id="search-area1">
	            <div id="search-title1">궁금해요! 고민이에요!</div>
	            <div id="search-title2">PETMILY 가족들과 이야기를 나누어 보세요.</div>
	         </div>
	         <form action="" method="get" id="search-area2">
	               <select name="category" id="search-condition1">
	                  <option value="all">전체</option>
	                  <option value="dog">강아지</option>
	                  <option value="cat">고양이</option>
	                  <option value="etc">기타</option>
	               </select>
	               <select name="keyword-option" id="search-condition2">
	                  <option value="all">전체</option>
	                  <option value="titleAndKeyword">제목+내용</option>
	                  <option value="etc">작성자</option>
	               </select>
	               <input type="text" name="keyword">
	               <button class="btn" id="search-btn"></button>
	            <div id="search-area3">
	               <span id="search-examples">검색 키워드 예시 : </span>
	               <span class="badge badge-pill badge-light">사료</span>
	               <span class="badge badge-pill badge-light">산책</span>
	               <span class="badge badge-pill badge-light">훈련</span>
	               <span class="badge badge-pill badge-light">장난감</span>
	            </div>
	         </form>
	      </div>
	      <div id="middle-bar">
	         <div align="left">
	            <select name="orderBy" id="orderBy">
	               <option value="recent">최신순</option>
	               <option value="count">조회순</option>
	               <option value="reply">댓글순</option>
	            </select>
	         </div>
	         <div align="right">
	         <% if(loginUser != null) { %>
	            <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.ask';">글쓰기</button>
	         <% } %>
	         </div>
	         <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
	      </div>
	      <div class="notice-area" align="left">
	         <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.ask';">공지사항</span>
	         <span onclick= "location.href = '<%= contextPath%>/no.ask';">게시글 작성시 유의사항</span>
	      </div>
	      
	      <div id="content-area">
	         <% for(Ask a : list) { %>
	         <div class="contents">
	            <div class="number"><%= a.getAskNo() %></div>
	            <% if(a.getTitleImg() != null) { %>
	            <div class="photo"><img src="<%=contextPath %>/<%=a.getTitleImg() %>" alt=""></div>
	            <% } else {%>
	            <div class="photo"></div>
	            <% } %>
	            <div class="texts">
	               <div class="title"><%= a.getAskTitle() %></div>
	               <div class="info"><%= a.getAskWriterNickName() %>&nbsp;&nbsp; <%=a.getEnrollDate() %> &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회 <%= a.getCount() %></div>
	               <div class="text" align="left"><%= a.getAskContent() %></div>
	            </div>
	         </div>
	         <% } %>
	      </div>
	      <script>
           		$(function(){
	               $(".photo-box").each(function(){
	            	   if($(this).html()){
	            		   $(this).css({"background":"url('')"});   
	            	   }
	               })
           				
           		})
           	</script>
           	
	      <script>
	         $(function(){
	            $(".contents").click(function(){
	               const num = $(this).children(".number").text();
	               console.log(num);
	               // /jsp/detail.no?num=클릭한글번호
	               location.href = '<%=contextPath%>/detail.ask?ano=' + num;
	            })
	         })
	      </script>
	         
	      <!-- <div>등록된 게시글이 없습니다.</div> -->
		  <div class="paging-area" align="center">
		  	<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%=contextPath%>/main.ask?page=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            	<% if(p == currentPage) { %>
            		<button disabled><%= p %></button>
            	<% }else { %>
            		<button onclick="location.href='<%=contextPath%>/main.ask?page=<%= p %>';"><%= p %></button>
            	<% } %>
            <% } %>
            
            <% if(currentPage != maxPage) { %>
            	<button onclick="location.href='<%=contextPath%>./main.ask?page=<%=currentPage+1%>';"> &gt; </button>
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