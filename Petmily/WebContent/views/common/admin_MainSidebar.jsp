<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPathms = request.getContextPath();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 /*왼쪽 메뉴바 작업*/
    .sidebar-area{
        width: 250px; 
        height: 800px; 
        float: left;
        margin:20px;
        position: relative;
        position: fixed;
    }
    .sidebar-area>div{
        width: 100%;
        height: 30px;
        text-align: left;
        line-height: 30px;
        cursor: pointer;
        box-sizing:border-box;
        font-size: 25px;
        font-weight: bolder;
    }
    .sidebar-area>ul{
        width: 300px;
        font-size: 16px;
        display: none;
    }
    .sidebar-area>ul>li{
        list-style-type: none;
        text-align: left;
        line-height: 30px;

    }
    .sidebar-area>ul a{
        text-decoration: none;
        color: darkgray;
        font-weight: bolder;
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
      <div class="sidebar-area mt-5">

                <div class="aMenu" id="">회원관리</div>
                <ul>
                    <li><a href="<%= contextPathms %>/memMg.ad" id="">회원정보 조회/수정/삭제</a></li>
                    <li><a href="<%= contextPathms %>/memPoint.ad" id="">회원 포인트 관리</a></li>
                    <li><a href="<%= contextPathms %>/memWarning.ad" id="">회원 포인트 관리</a></li>
                </ul>
                
                <div class="aMenu" id="">쇼핑몰</div>
                <ul>
                    <li><a href="<%= contextPathms %>/spErPd.ad">상품등록</a></li>
                    <li><a href="<%= contextPathms %>/spPdUd.ad" id="">상품관리(수정,삭제)</a></li>
                    <li><a href="<%= contextPathms %>/spDvlist.ad" id="">주문/배송조회</a></li>
                    <li><a href="<%= contextPathms %>/spPdlist.ad" id="">취소/환불/교환/반품 내역 조회</a></li>
                    <li><a href="<%= contextPathms %>/spPmlist.ad" id="">결제 내역 조회</a></li>
                </ul>
                
                <div class="aMenu" id="boards">게시판 관리</div>
                <ul>
                    <li><a href="<%= contextPathms %>/adminList.bo" id="allboards">전체 게시글 조회</a></li>
                </ul>

                <div class="aMenu" id="">Petlog</div>
                <ul>
                    <li><a href="<%= contextPathms %>/adminMain.pl" id="petlog">피드관리</a></li>
                </ul>

                <div class="aMenu" id="">고객센터</div>
                <ul>
                    <li><a href="<%= contextPathms %>/adminList.no" id="notice">공지사항 관리</a></li>
                    <li><a href="<%= contextPathms %>/adminList.faq" id="faq">FAQ 관리</a></li>
                    <li><a href="<%= contextPathms %>/adminList.qna" id="qna">Q&A문의 관리</a></li>
                    <li><a href="<%= contextPathms %>/adminList.iq" id="inquiry">상품문의 관리</a></li>
                    <li><a href="<%= contextPathms %>/adminMain.rv" id="review">리뷰 관리</a></li>
                </ul>

                <div class="aMenu" id="">신고관리</div>
                <ul>
                    <li><a href="<%= contextPathms %>/nfList.ad" id="">신고 내역 조회</a></li>
                    <li><a href="<%= contextPathms %>/nfWnList.ad" id="">신고 회원 관리</a></li>
                </ul>
         </div>
   
        <script>
            $(function(){
                $(".aMenu").click(function(){
                    $(this).siblings(".aMenu").css({background:"white", color:"black"});
                    $(this).css({background: "rgb(247, 198, 4)", color:"white"});

                    const $ul = $(this).next();

                    if($ul.css("display") == "none"){

                        $(this).siblings("ul").slideUp();

                        $ul.slideDown();

                    }else{

                        $ul.slideUp(); 

                    }

                })
                $("a").click(function(){
                    $(this).css("color", "orange").css("text-decoration", "underline");
            })

            })
        </script>


</body>
</html>