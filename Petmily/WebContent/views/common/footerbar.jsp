<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* footer 영역의 세부 스타일 */
    html{
        position: relative;
    }
    body{
        min-height: 100%;
    }
    #footer{
        background-color: rgb(235, 235, 235);
        position:absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        padding: 15px 0;
    }
     #footer_1{ margin-left:40px}
     #footer_1>a{
            font-weight:600;
            margin:15px;
            line-height:20px;
            color:rgb(97, 95, 95);
            font-size: 13px;
            text-decoration: none;
        }
        #footer_2{ margin-left:40px}
        #footer_2>p{
            width:100%;
            margin:0;
            box-sizing:border-box;
        }
        #p1{height:80%; padding:15px; font-size:12px;}
        #p2{height:20%; padding:15px; font-size:10px;}
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
    <div id="footer">
        <div id="footer_1">
            <a href="">서비스 이용약관</a> 
            <a href="">개인정보처리방침</a> 
            <a href="">협업/제휴 문의</a> 
            <a href="">고객센터</a>
        </div>
        <div id="footer_2">
            <p id="p1">
                (주)펫밀리 대표 :  개발하라묘    |     사업자 등록번호 : 123-45-67890 사업자정보확인     |     통신판매업신고번호 : 제 2021-서울강남-1004호     |       TEL : 1588-1588
서울특별시 강남구 테헤란로100 (kh빌딩) 7층
            </p>
            <p id="p2">
                Copyright © www.petmily.com all rights reserved.
            </p>
        </div>
    </div>
</body>
</html>