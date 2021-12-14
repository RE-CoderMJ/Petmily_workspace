<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String contextPathas = request.getContextPath();
%>
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
        position: fixed;
    }
    /* 사이드바 큰 제목 스타일 */
    #boardName{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:90px;
    }
    /* 하위 카테고리 스타일*/
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
        left:90px;
    }
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
            <div id="boardName">쇼핑몰</div>
            <div id="d-category">
                <div class="d-category" id="dog" onclick="location.href='<%= contextPathas %>/shop.dog'">강아지</div>

                <div class="d-category" id="cat" onclick="location.href='<%= contextPathas %>/shop.cat'">고양이</div>
                
                <div class="d-category" id="etc" onclick="location.href='<%= contextPathas %>/shop.etc'">기타</div>
                
            </div>
        </ul>
    </div>

    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
            })
        })
    </script>
</body>
</html>