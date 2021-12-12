<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/market/marketMain.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
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
	               전체 xxx건
	            </div>
	            <div align="right">
	               <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.market';">글쓰기</button>
	            </div>
	            <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
	        </div>
	        <div class="notice-area" align="left">
	            <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.market';">공지사항</span>
	            <span onclick= "location.href = '<%= contextPath%>/no.market';">게시글 작성시 유의사항</span>
	        </div>

	        <div id="market-content-area">
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill sell-icon">팔래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">고양이 화장실</div>
	                <div class="sell-price" align="right">12,000원</div> 
	            </div>
	            <!-- 살래요게시글 -->
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	            <div class="content-box-area">
	                <span class="badge badge-pill buy-icon">살래요</span>
	                <div class="photo-box"></div>
	                <div class="content-title" align="left">강아지 밥그릇</div>
	                <div class="buy-price" align="right">10,000원</div> 
	            </div>
	        </div>

	        <script>
	            $(function(){
	               $(".content-box-area").click(function(){
	                  //const num = $(this).children().eq(0).text();
	                  
	                  // /jsp/detail.no?num=클릭한글번호
	                  location.href = '<%=contextPath%>/detail.market';
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