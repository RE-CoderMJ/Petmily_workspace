<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link></link>
<%@ include file="../../common/links.jsp" %>
<link href="resources/css/boards/market/marketDetailView.css" rel="stylesheet">
<link href="resources/css/boards/market/marketReply.css" rel="stylesheet">

</head>
<body>
	
	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="marketSidebar.jsp" %>
	    <div class="content-area">
	    	<div id="top">
				<div id="title-area">
					<div id="title">제목이 들어갈 위치입니다.</div>
	                <button type="button" class="btn" id="enroll" onclick="location.href='<%= contextPath %>/enrollForm.market';">글쓰기</button>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
	            <div id="info-area">
	                <div id="info">
	                    2021-11-12 17:00 &nbsp;&nbsp;&nbsp;&nbsp;조회 63&nbsp;&nbsp;&nbsp;
	                    <a data-toggle="modal" data-target="#reportAskModal">신고</a> &nbsp;
	                    <a href="<%=contextPath%>/updateForm.market">수정하기</a>
	                </div>
	                <div id="writer">
	                    <div style="border: 1px solid black;"id="writer-pic"><img src="" alt=""></div>
	                    <span id="writer-id">bomilove3</span>
	                </div>
	            </div>
			</div>
	
			<div id="photo-area">
	            <div id="demo" class="carousel" data-ride="carousel">
	              
	                <!-- The slideshow -->
	                <div class="carousel-inner">
	                  <div class="carousel-item active">
	                    <img src="" alt="">
	                  </div>
	                  <div class="carousel-item">
	                    <img src="" alt="">
	                  </div>
	                  <div class="carousel-item">
	                    <img src="" alt="">
	                  </div>
	                </div>
	              
	                <!-- Left and right controls -->
	                <a class="carousel-control-prev" href="#demo" data-slide="prev">
	                  <span class="carousel-control-prev-icon"></span>
	                </a>
	                <a class="carousel-control-next" href="#demo" data-slide="next">
	                  <span class="carousel-control-next-icon"></span>
	                </a>
	              
	           </div> 
	       </div>
	       
	       <div id="input-area">
	       		<!-- 카테고리에 따라서 색이 다름 인라인으로 하기 -->
				<div id="price-area">30,000원</div>
				<div id="text-area">
					구할 수 있는 것이다 청춘은 인생의 황금시대다 우리는 이 황금시대의 가치를 충분히 발휘하기 위하여 이 황금시대를

예가 되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다
				</div>
	       </div>
	       
	       <hr style="border: solid 1px rgb(179, 178, 178);">
	
	        <div id="reply-area">
				<div id="reply-top">
					<div id="reply-count-area">
						<span>댓글</span>
						<span id="reply-count">2</span>
					</div>
					<div id="btn-area">
						<button type="button" class="btn" data-toggle="modal" data-target="#deleteAskModal">글삭제</button>
						<a href="<%=contextPath%>/main.market?page=1" class="btn">목록</a>
					</div>
				</div>
				<div id="write-reply">
					<div style="border: 1px solid black;"id="writearea-pic"><img src="" alt=""></div>
						<form action="">
							<input type="text" placeholder="댓글을 남겨 보세요." required>
							<button class="btn" id="reply-enrollbtn">등록</button>
						</form>
				</div>
				
				<div class="replies">
					
					<div class="profile-pic"></div>
					<div class="user-name">choco22</div>
					<div class="text-break reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
					<a href="" class="btn delete-btn">x</a>
					<div class="reply-info" align="left">xxxx-xx-xx &nbsp;&nbsp; <a href="">수정</a><a href="">신고</a></div>
					
					<!--<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>-->
				</div>
			</div>
	        
	        <%@ include file="../bCommon/boardPagingBar.jsp" %>
	       
	    </div>
	</div>
	
	<%@ include file="../bCommon/reportDeleteModals.jsp" %>
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>