<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/ask/askMain.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
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
	            <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.ask';">글쓰기</button>
	         </div>
	         <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
	      </div>
	      <div class="notice-area" align="left">
	         <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.ask';">공지사항</span>
	         <span onclick= "location.href = '<%= contextPath%>/no.ask';">게시글 작성시 유의사항</span>
	      </div>
	      
	      <div id="content-area">
	         
	         <div class="contents">
	            <div class="number">1</div>
	            <div class="photo"></div>
	            <div class="texts">
	               <div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
	               <div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
	               <div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
	            </div>
	         </div>
	         <div class="contents">
	            <div class="number">2</div>
	            <div class="photo"></div>
	            <div class="texts">
	               <div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
	               <div class="info">쪼꼬언니 &nbsp;&nbsp;2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
	               <div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
	            </div>
	         </div>
	         <div class="contents">
	            <div class="number">3</div>
	            <div class="photo"></div>
	            <div class="texts">
	               <div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
	               <div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
	               <div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
	            </div>
	         </div>
	         <div class="contents">
	            <div class="number">4</div>
	            <div class="photo"></div>
	            <div class="texts">
	               <div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
	               <div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
	               <div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
	            </div>
	         </div>
	         <div class="contents">
	            <div class="number">5</div>
	            <div class="photo"></div>
	            <div class="texts">
	               <div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
	               <div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
	               <div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
	            </div>
	         </div>
	      </div>
	      <script>
	         $(function(){
	            $(".contents").click(function(){
	               //const num = $(this).children().eq(0).text();
	               
	               // /jsp/detail.no?num=클릭한글번호
	               location.href = '<%=contextPath%>/detail.ask';
	            })
	         })
	      </script>
	         
	      <!-- <div>등록된 게시글이 없습니다.</div> -->
		  <%@ include file="../bCommon/boardPagingBar.jsp" %>
	   </div>
   
   </div>
   

   
   <%@ include file="../../common/footerbar.jsp" %>


</body>
</html>