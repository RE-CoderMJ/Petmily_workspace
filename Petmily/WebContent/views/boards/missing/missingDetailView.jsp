<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="resources/css/boards/missing/missingDetailView.css" rel="stylesheet">
<link href="resources/css/boards/bCommon/reply.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>
<body>

	<%@ include file="../../common/menubar.jsp" %>
    <%@ include file="missingSidebar.jsp" %>
    
    <div class="content-area" align="center">
    	<div id="top">
			<div id="title-area">
                <button type="button" class="btn" id="enroll" onclick="location.href='<%= contextPath %>/enrollForm.missing';">글쓰기</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
            <div id="info-area">
                <div id="info">
                    2021-11-12 17:00 &nbsp;&nbsp;&nbsp;&nbsp;조회 63&nbsp;&nbsp;&nbsp;
                    <a data-toggle="modal" data-target="#reportAskModal">신고</a> &nbsp;
                    <a href="<%=contextPath%>/updateForm.missing">수정하기</a>
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
			<!-- 찾고있어요 -->
			<div class="select-ddcategory">
				<span class="info-title">구분</span>
				<span>찾고있어요</span>
			</div>
			<div class="category-select-area">
				<span class="info-title">대상</span>
				<span>강아지</span>
			</div>
			<div class="gender-select-area">
				<span class="info-title">성별</span>
				<span>수컷</span>
			</div>
			<div class="name-area">
				<span class="info-title">이름</span>
				<span>뭉치</span>
			</div>
			<div class="age-area">
				<span class="info-title">나이</span>
				<span>3세 ~ 5세</span>
			</div>
			<div class="missing-date-area">
				<span class="info-title">발생일</span>
				<span>2021.11.12</span>
			</div>
			<div id="missing-place-area">
				<span class="info-title">발생장소</span>
				<span>서울시 도봉구 벚꽃아파트 101동</span>
			</div>
			<div class="feature-area">
				<span class="info-title">신체특징</span>
				<div>
					엉덩이쪽에 큰 갈색 반점, 시츄, 겁이 많음,
					이름을 불러주면 쳐다봄
				</div>
			</div>

			<!-- 보호하고있어요 -->
			<!-- <div class="select-ddcategory">
				<span class="info-titleF">구분</span>
				<span>보호하고있어요</span>
			</div>
			<div class="category-select-area">
				<span class="info-titleF">대상</span>
				<span>강아지</span>
			</div>
			<div class="gender-select-area">
				<span class="info-titleF">성별</span>
				<span>수컷</span>
			</div>
			<div class="name-area">
				<span class="info-titleF">이름</span>
				<span>뭉치</span>
			</div>
			<div class="age-area">
				<span class="info-titleF">나이</span>
				<span>3세 ~ 5세</span>
			</div>
			<div class="missing-date-area">
				<span class="info-titleF">발생일</span>
				<span>2021.11.12</span>
			</div>
			<div id="missing-place-area">
				<span class="info-titleF">발견장소</span>
				<span>서울시 도봉구 벚꽃아파트 101동</span>
			</div>
			<div class="feature-area">
				<span class="info-titleF">신체특징</span>
				<div>
					엉덩이쪽에 큰 갈색 반점, 시츄, 겁이 많음,
					이름을 불러주면 쳐다봄
				</div>
			</div> -->
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
					<a href="<%=contextPath%>/main.missing?page=1" class="btn">목록</a>
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
				<div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
				<a href="" class="btn delete-btn">x</a>
				<div class="reply-info">xxxx-xx-xx &nbsp;&nbsp; <a href="">수정</a><a href="">신고</a></div>
				
				<!--<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>-->
			</div>
		</div>
        
        <%@ include file="../bCommon/boardPagingBar.jsp" %>
		
    </div>
    
    <%@ include file="../bCommon/reportDeleteModals.jsp" %>
    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>