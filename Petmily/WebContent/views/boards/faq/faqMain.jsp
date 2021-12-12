<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    
    .inner {
        width: 1300px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .faq {
        margin: auto;
        width: 80%;

    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 100px;
        margin-top: -15px;
        float: left;
    }

    #title_sm {
        position: relative;
        left: 15px;
        top: 15px;
        font-weight: bold;
        font-size: 18px;
    }

    .search-back {
        background-color: rgb(235, 235, 235);
        width: 700px;
        height: 120px;
        margin: auto;
        margin-top: 60px;
    }

    .search-in {
        position: relative;
        left: 55px;
        top: 30px;
    }

    #searchBox {
        width: 500px;
        height: 35px;
        border-radius: 5px;
        border: 1px solid lightgray;
    }

    button {
        width: 80px;
        margin-bottom: 5px;
    }


    #keyword-title {
        float: left;
        font-weight: bold;
        margin: 10px 10px;
    }

    .keyword-tag {
        float: left;
        margin: 10px 10px;
        background-color: white;
        border-radius: 10px;
        padding: 0 10px;
        color: orange;
        font-weight: bold;
        text-decoration-line: none !important;
    }

    .keyword-tag:hover {
        color: tomato;
    }

    .menuform {
        float: left;
        width: 360px;
        padding: 70px;
    }

    .vertical-line {
        float: left;
        border-right: 1px solid lightgray;
        height: 200px;
        margin-top: 60px;

    }

    .iconimg {
        width: 50px;
        height: 50px;
        margin-left: 90px;
        margin-bottom: 30px;
    }

    .menulist {
        font-size: 20px;
    }

    .menulist>ul>li>a {
        text-decoration-line: none !important;
        color: black;
    }

    .tableCategory {
        font-size: 20px;
        font-weight: bold;
        padding-left: 10px;
    }

    .tdTitle {
        width: 300px;
        text-align: center;
        font-size: 18px;
        cursor: pointer;
    }

    .tdContent { 
        text-align: center;
        font-size: 18px;
        cursor: pointer;
    }


</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>
    <%@ include file="../notice/noticeSidebar.jsp" %>
    
    <div class="outer">
        
        
        <div class="inner">
            
            <div class="faq">

                <div>
                    <p id="title">FAQ</p>
                    <span id="title_sm">자주 찾는 질문</span>
                </div>
                
                <div>

                    <div class="search-back">

                        <div class="search-in"> 

                            <div class="search">
                                <input type="text" id="searchBox" name="search">
                                <button type="button" class="btn btn-sm btn-warning">검색</button>
                            </div>
                            <div class="keyword-area">
                                <p id="keyword-title">추천 키워드</p>

                                <a href="" class="keyword-tag">#비밀번호</a>
                                <a href="" class="keyword-tag">#펫정보</a>
                                <a href="" class="keyword-tag">#포인트</a>
                                <a href="" class="keyword-tag">#배송</a>
                            </div>

                        </div>
                    </div>
                    
                </div>


                <div class="menuform">
                    
                    <div>
                        <img src="resources/img/member-card.png" class="iconimg">
                    </div>

                    <div class="menulist">
                        <ul>
                            <li><a href="">회원가입</a></li>
                            <li><a href="">비밀번호 재설정</a></li>
                            <li><a href="">회원정보</a></li>
                            <li><a href="">탈퇴 및 재가입</a></li>
                        </ul>
                    </div>

                </div>

                <div class="vertical-line"></div>

                <div class="menuform">
                    
                    <div>
                        <img src="resources/img/coin.png" class="iconimg">
                    </div>

                    <div class="menulist">
                        <ul>
                            <li><a href="">상품 주문 / 결제</a></li>
                            <li><a href="">스토어 입점 제휴</a></li>
                            <li><a href="">반품 / 교환</a></li>
                            <li><a href="">취소 / 환불</a></li>
                        </ul>
                    </div>

                </div>

                <div class="vertical-line"></div>

                <div class="menuform">
                    
                    <div>
                        <img src="resources/img/photo.png" class="iconimg">
                    </div>

                    <div class="menulist">
                        <ul>
                            <li><a href="">게시물 등록</a></li>
                            <li><a href="">사진 / 영상</a></li>
                            <li><a href="">펫적사항</a></li>
                            <li><a href="">포인트</a></li>
                        </ul>
                    </div>

                </div>

                
                <p class="tableCategory" style="width: 200px;">전체</p>
                

                <table class="table table-hover">
                    <tr>
                        <td class="tdTitle">회원가입</td>
                        <td class="tdContent">회원가입은 어떻게 하나요?</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">회원가입</td>
                        <td class="tdContent">가입 중에 '이미 인증된 이메일입니다'라는 메세지가 뜹니다.</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">비밀번호 재설정</td>
                        <td class="tdContent">비밀번호를 변경하고 싶습니다</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">포인트</td>
                        <td class="tdContent">포인트가 미적립되었어요</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">게시물 등록</td>
                        <td class="tdContent">펫로그 게시물 등록하려면 반려동물 등록이 필요한가요?</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">사진 / 영상</td>
                        <td class="tdContent">사진/영상 등록 제한이 있나요?</td>
                    </tr>

                    <tr>
                        <td class="tdTitle">스토어 입점 제휴</td>
                        <td class="tdContent">펫밀리에 입점하고 싶습니다</td>
                    </tr>
                </table>
            </div>
        </div>

        <%@ include file="../bCommon/boardPagingBar.jsp" %>
    </div>
    
    <div style="margin-top: 200px;">
        <%@ include file="../../common/footerbar.jsp" %>
    </div>
</body>
</html>