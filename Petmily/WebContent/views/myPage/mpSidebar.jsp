<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pm.member.model.vo.Member"%>
<%
   String contextPaths = request.getContextPath();
   Member loginUsers = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Accordion Menu</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet">

  <style>
    /*사이드바 스타일*/
    .sidebar-area{
        float: left;
        width: 270px;
        height: 800px;
        position: relative;
        position: fixed;
    }
    /* 사이드바 큰 제목 스타일 */
    #boardName{
        list-style-type: none;
        font-weight: bolder;
        font-size: 26px;
        position: absolute;
        /* left:90px; */
    }
    /* 강아지, 고양이, 기타 카테고리 스타일*/
    .d-category{
        list-style-type: none;
        font-size: 16px;
        width: 140px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    .d-category1{
        list-style-type: none;
        font-size: 16px;
        width: 140px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    #d-category{
        position: absolute;
        top:80px;
        /* left: 90px; */
    }
    /* 세부 카테고리 전체 스타일 */
    .dd-category{
        list-style-type: none;
        color: darkgray;
        font-weight: bolder;
        font-size: 13px;
        width: 80px;
        display: none;
        margin-bottom: 3px;
        cursor: pointer;
        margin-left: 15px;
    }
  </style>

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
                
                <div class="d-category1" onclick="location.href='<%= contextPaths %>/infoUpdateForm.my'">회원정보수정</div>
                
                <div class="d-category1" onclick="location.href='<%= contextPaths %>/myPost.mp?cpage=1&userNo=<%= loginUsers.getMemNo() %>'">내가 쓴 게시글조회</div>
                
                <div class="d-category1" onclick="location.href='<%= contextPaths %>/myPetInfo.mp'">펫적사항</div>
                
                <div class="d-category" id="etc">쇼핑몰</div>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/cart.my';">장바구니</p>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/orderselect.my';">주문배송조회</p>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/like.my';">찜</p>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/point.my';">포인트조회</p>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/exchangeapp.my';">교환/반품 신청</p>
                <p class="dd-category" onclick="location.href='<%= contextPaths %>/cancelselect.my';">취소/환불내역 조회</p>
            </div>
        </ul>
    </div>
    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                const $ddCategory = $(this).nextAll("p");
                
                if($ddCategory.css("display") == "none" ){
                    // $(this).siblings(".buy").slideUp();
                    // $(this).siblings(".sell").slideUp();
                    
                    $ddCategory.slideDown();
                    // $ddCategory.next().slideDown();
                }else{
                    $ddCategory.slideUp();
                    $ddCategory.next().slideUp();
                }
            })
            
            $(".d-category1").click(function(){

                const $ddCategory = $(this).nextAll("p");

                if($ddCategory.css("display") != "none"){
                    $ddCategory.slideUp();
                }else{
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