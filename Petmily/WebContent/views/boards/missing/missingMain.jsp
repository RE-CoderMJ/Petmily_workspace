<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.ArrayList, com.pm.boards.missing.model.vo.Missing, com.pm.common.model.vo.PageInfo"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Missing> list = (ArrayList<Missing>)request.getAttribute("list");
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
<link href="resources/css/boards/missing/missingMain.css" rel="stylesheet">
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
	   <%@ include file="missingSidebar.jsp" %>
	   <div class="content-area" align="center">
	
	      <div id="title-area">
	            <div id="title1">아이들이 가족들의 곁으로 돌아갈 수 있게 도와주세요.</div>
	            <div id="title2">* 실종 신고 외에 허위 글 작성 시 최소 5000만원의 과태료를 부과합니다.</div>
	      </div>
	      
	      <div id="search-area">
	         <form action="" method="">
	            <div id="search-left">
	               <div id="category-select-area">
	                  <span>대상</span>
	                  <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="category">전체
	                     </label>
	                   </div>
	                   <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="category">강아지
	                     </label>
	                   </div>
	                   <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="category">고양이
	                     </label>
	                   </div>
	                   <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="category">기타
	                     </label>
	                   </div>
	               </div>
	               <div id="gender-select-area">
	                  <span>성별</span>
	                  <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="gender">전체
	                     </label>
	                   </div>
	                   <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="gender">수컷
	                     </label>
	                   </div>
	                   <div class="form-check-inline">
	                     <label class="form-check-label">
	                       <input type="radio" class="form-check-input" name="gender">암컷
	                     </label>
	                   </div>
	               </div>
	               <div id="missing-date-area">
	                  <p>발생,<br>발견일</p>
	                  <div>
	                     <input type="date"> ~ <input type="date">
	                  </div>
	               </div>
	               <div id="feature-area">
	                  <span>신체특징</span>
	                  <input type="text">
	                  <div>
	                     ex)'시츄', '파란색 눈', '초록색 줄무늬 옷'
	                     <br>키워드로 검색이 가능합니다.
	                  </div>
	               </div>
	            </div>
	            <div id="search-right">
	               <div id="select-ddcategory">
	                  <span>구분</span>
	                  <select name="d-category" id="select-dcategory">
	                     <option value="all">전체</option>
	                     <option value="missing">찾고있어요</option>
	                     <option value="found">보호하고있어요</option>
	                  </select>
	               </div>
	   
	               <div id="name-area">
	                  <span>이름</span>
	                  <input type="text" name="mpName">
	               </div>
	               <div id="age-area">
	                  <span>나이</span>
	                  <input type="number" name="mpAgeFrom">
	                  <span>세 ~</span>
	                  <input type="number" name="mpAgeTo" id="mpAgeTo">
	                  <span>세</span>
	               </div>
	               <div id="missing-place-area">
	                  <p>발생,<br>발견장소</p>
	                  <input type="text" name="mpPlace">
	                  <div>
	                     ex) 서울시 용산구 갈월동 놀이터 앞
	                     <br>상세주소로 검색이 가능합니다.
	                  </div>
	               </div>
	            </div>
	            <div id="missing-search-btn-area">
	               <button type="submit" class="btn" id="missing-search-btn">검색</button>
	            </div>
	         </form>
	      </div>
	
	      <div id="middle-area">
	         <div align="left" id="selectBy">
	            <!-- 선택한 카테고리에 따라 문구 변경됨 -->
	            전체 <%= listCount %>건
	         </div>
	         <div align="right">
	         	<% if(loginUser != null) { %>
	            <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.missing';">글쓰기</button>
	            <% } %>
	         </div>
	         <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
	      </div>
	      <div class="notice-area" align="left">
	         <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.missing';">공지사항</span>
	         <span onclick= "location.href = '<%= contextPath%>/no.missing';">게시글 작성시 유의사항</span>
	      </div>
	
	      <!-- 게시글 영역 -->
	      <div id="content-area">
		      <% for(Missing mi : list) { %>
		         <div class="content-box-area">
		            <div class="missing-img">
		               <img src="<%=contextPath %>/<%=mi.getTitleImg() %>" alt="">
		               <input type="hidden" id="miNo" value="<%= mi.getMissingNo()%>">
		            </div>
		            <div class="content-info-area" align="left">
		            	<input type="hidden" id="miNo" value="<%= mi.getMissingNo()%>">
		               <% if(mi.getdCategory() == 1) { %>
		               		<div class="missing-title">찾고있어요</div>
		               <% }else { %>
		               		<div class="found-title">보호하고있어요</div>
		               <% } %>
		               <div class="gender-age"><%=mi.getpName() == null ? "" : mi.getpName()%> | <%=mi.getpGender().equals("F") ? "암컷" : "수컷"%> | 추정나이: 만 <%=mi.getpAgeFrom()%>세</div>
		               <div class="dpf-area">
		               	  <div>발견일자 : <%=mi.getMissingDate() %></div>
		                  <div>발견지역 : <%=mi.getLocation() %></div>
		                  <div>신체특징 : <%=mi.getFeature() == null ? "" : mi.getFeature()%></div>
		               </div>
		            </div>
		         </div>
			<% } %>
	      </div>
	      
	      <script>
	         $(function(){
	            $(".content-info-area").click(function(){
	               const num = $(this).children("input").val();
	               location.href = '<%=contextPath%>/detail.missing?miNo=' + num;
	            })
	            $(".missing-img").click(function(){
	               const num = $(this).children("input").val();
	               location.href = '<%=contextPath%>/detail.missing?miNo=' + num;
	            })
	         })
	      </script>
	      
	      <% if(list.isEmpty()){ %>
	      	<div>등록된 게시글이 없습니다.</div>
	      <% } %>
	      
	      <div class="paging-area" align="center">
	      	<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%=contextPath %>/main.missing?page=<%=currentPage-1 %>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            	<% if(p == currentPage) { %>
            		<button disabled><%= p %></button>
            	<% }else { %>
            		<button onclick="location.href='<%=contextPath %>/main.missing?page=<%=p %>';"><%=p %></button>
            	<% } %>
            <% } %>
            
            <% if(currentPage != maxPage) { %>
            	<button onclick="location.href='<%=contextPath %>/main.missing?page=<%=currentPage+1%>';"> &gt; </button>
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