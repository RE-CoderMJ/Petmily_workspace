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
        position: relative;
    }
    /* 사이드바 큰 제목 스타일 */
    #boardName{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:90px;
    }
    /* 강아지, 고양이, 기타 카테고리 스타일*/
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
        width: 60px;
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
      <div class="sidebar-area">
        <ul>
            <div id="boardName">마이페이지</div>
            <div id="d-category">
                <div class="d-category" id="">회원정보수정</div>
                <div class="d-category" id="">내가쓴게시글조회</div>
                <div class="d-category" id="">펫적사항</div>

                <div class="d-category" id="shop">쇼핑몰</div>
                <div class="dd-category cart">장바구니</div>
                <div class="dd-category od">주문/배송조회</div>
                <div class="dd-category like">찜</div>
                <div class="dd-category point">포인트조회</div>
                <div class="dd-category exchange">교환/반품신청</div>
                <div class="dd-category cancel">취소/환불 내역 조회</div>
            </div>
        </ul>
    </div>

    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                const $cart = $(this).next();
    
                if($cart.css("display") == "none" && $cart.next().css("display") == "none"){
                    $(this).siblings(".cart").slideUp();
                    $(this).siblings(".od").slideUp();
                    $(this).siblings(".like").slideUp();
                    $(this).siblings(".point").slideUp();
                    $(this).siblings(".exchange").slideUp();
                    $(this).siblings(".cancel").slideUp();
                    
                    $cart.slideDown();
                    $cart.next().slideDown();
                }else{
                    $cart.slideUp();
                    $cart.next().slideUp();
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