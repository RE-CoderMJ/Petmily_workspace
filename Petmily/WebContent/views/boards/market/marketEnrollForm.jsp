<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/market/marketEnrollUpdateForm.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="marketSidebar.jsp" %>
	    <div class="content-area" align="center">
		    <div id="top">
				<div id="list-btn" align="right">
					<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.market?page=1'">목록</button>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
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
	            <div id="file-upload-area">
	                <p>사진<br>첨부</p>
	                <input type="file">
	            </div>
	        </div>
	
	        <form action="">
	            <div id="input-area">
	                <div id="select-categories">
	                    <span class="titles">구분</span>
	                    <span class="required">*</span>
	                    <select name="category">
	                        <option value="dog">강아지</option>
	                        <option value="cat">고양이</option>
	                        <option value="etc">기타</option>
	                    </select>
	                    <select name="d-category" id="select-dcategory">
	                        <option value="buy">살래요</option>
	                        <option value="sell">팔래요</option>
	                    </select>
	                </div>
	                <div id="title-area">
	                    <span class="titles">제목</span>
	                    <span class="required">*</span>
	                    <input type="text" name="mpName"  placeholder="제목을 입력해주세요" required>
	                </div>
	                <div id="price-area">
	                    <span class="titles">판매, 구매희망가격</span>
	                    <span class="required">*</span>
	                    <input type="number" required>
	                    <span>원</span>
	                </div>
	                <div id="text-area">
	                    <textarea name="text" placeholder="내용을 입력해주세요"></textarea>
	                </div>
	            </div>    
	            <div align="right" id="enroll-btn-area"><button class= "btn">올리기</button></div>
	        </form>
    
    </div>

	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>