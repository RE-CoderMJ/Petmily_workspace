<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /*사이드바 스타일*/
    .sidebar-area{
        float: left;
        width: 250px;
        height: 800px;
        position: relative;
    }
    /* 사이드바 큰 제목 스타일 */
    #category{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:90px;
    }
    /* 세부 카테고리 스타일*/
    .d-category{
        list-style-type: none;
        font-size: 16px;
        width: 130px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    #d-category{
        position: absolute;
        top:80px;
        left: 90px;
    }
    /* 세부 카테고리 전체 스타일 */
    .dd-category{
        list-style-type: none;
        color: darkgray;
        font-weight: bolder;
        font-size: 13px;
        width: 150px;
        display: none;
        margin-bottom: 3px;
        cursor: pointer;
        margin-left: 15px;
    }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
      <!--  사이드바  -->
      <br>
      <div class="sidebar-area">
        <ul>
            <div id="category">관리자</div>
            <div id="d-category">
                <div class="d-category" id="member">회원관리</div>
                <div class="dd-category under">회원정보 조회/수정/삭제</div>
                <div class="dd-category under">회원 포인트 관리</div>
                <div class="dd-category under">블랙리스트 회원 관리</div>

                <div class="d-category" id="shop">쇼핑몰</div>
                <div class="dd-category under">상품 등록</div>
                <div class="dd-category under">상품 관리(수정, 삭제)</div>
                <div class="dd-category under">주문/배송조회</div>
                <div class="dd-category under">취소/환불/교환/반품 내역 조회</div>
                <div class="dd-category under">결제 내역 조회</div>

                <div class="d-category" id="board">게시판 관리</div>
                <div class="dd-category under">전체 게시글 조회</div>
                <div class="dd-category under"></div>

                <div class="d-category" id="petlog">Petlog</div>
                <div class="dd-category under">피드관리</div>
                <div class="dd-category under"></div>

                <div class="d-category" id="customer">고객센터</div>
                <div class="dd-category under">공지사항 관리</div>
                <div class="dd-category under">FAQ 관리</div>
                <div class="dd-category under">Q&A문의/상품문의 관리</div>
                <div class="dd-category under">리뷰 관리</div>

                <div class="d-category" id="report">신고관리</div>
                <div class="dd-category under">신고 내역 조회</div>
                <div class="dd-category under">신고 회원 관리</div>
            </div>
        </ul>
    </div>

    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                const $bottom = $(this).next();
    
                if($bottom.css("display") == "none" && $bottom.next().css("display") == "none"){
                    $(this).siblings(".under").slideUp();
                    $(this).siblings(".under").slideUp();
                    
                    
                    $bottom.slideDown();
                    $bottom.next().slideDown();
                    
                }else{
                    $bottom.slideUp();
                    $bottom.next().slideUp();
                    
                }
            })

            $(".dd-category").click(function(){
                $(this).siblings(".dd-category").css("color", "darkgray").css("text-decoration", "none");
                $(this).css("color", "orange").css("text-decoration", "underline");
            })
        })
    </script>
</body>
</html>