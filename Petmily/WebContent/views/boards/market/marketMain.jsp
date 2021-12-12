<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../common/links.jsp" %>
</head>
<style>
div, img, li, a{
    box-sizing: border-box;
    border: 1px solid black;
}
 
/* 중고거래 메인 스타일 */
.content-area{
width: 1400px;
height: auto;
margin: auto;
margin-bottom: 250px;
}
.content-area > div{
width: 85%;
}

/* 게시판 설명 영역 스타일 */
#title-area{
height: 65px;
background: rgb(235, 235, 235);
margin-bottom: 20px;
padding: 15px;
}
#title1{
font-weight: bolder;
}
#title2{
color: rgb(189, 24, 24);
font-size: 11px;
font-weight: bolder;
}

/* 검색영역 스타일 */
#search-area{
    width: 900px;
}
#search-area>select{
    width: 100px;
    height: 37px;
    margin-right: 10px;
}
#search-area>input{
    width: 600px;
    height: 37px;
    border: rgb(247, 198, 4) 3px solid;
}
/* 검색버튼 */
#search-btn{
   background-image: url("resources/img/searchImg.png");
   background-size: cover;
   width: 30px;
   height: 30px;
   margin-left: -35px;
}

/* 중간영역 스타일 */
#middle-area>div{
float: left; 
width:592px;
margin-top: 25px;
}
#write{
height: 27px;
line-height: 3px;
background: rgb(247, 198, 4);
color: black;
font-weight: bolder;
}


/* 공지사항 영역 스타일 */
.notice-area>span{
font-size: 12px;
margin-right: 10px;
font-weight: bold;
cursor: pointer;
}
.notice-area{
    margin-bottom: 7px;
}

/* 게시글 스타일 */
.content-box-area{
    margin-top: 40px;
    width: 120px;
    height: 140px;
}

</style>
<body>
    <%@ include file="../../common/menubar.jsp" %>
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
               <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.missing';">글쓰기</button>
            </div>
            <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
        </div>
        <div class="notice-area" align="left">
            <span class="badge badge-pill" style="background:orange" onclick= "location.href = '<%= contextPath%>/no.missing';">공지사항</span>
            <span onclick= "location.href = '<%= contextPath%>/no.missing';">게시글 작성시 유의사항</span>
        </div>

        <div id="market-content-area">
            <div class="content-box-area">
                <span class="badge badge-pill" style="background:rgb(255, 102, 0)">팔래요</span>
                <div class="photo-box"></div>
                <div class="content-title"></div>
                <div class="price"></div> 
            </div>
        </div>
    </div>

    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>