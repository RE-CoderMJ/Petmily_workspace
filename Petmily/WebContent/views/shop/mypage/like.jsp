<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 		div, img, li, a{
		     box-sizing: border-box;
		}
		     
		.content-area{
			width: 1400px;
			height: 1000px;
			padding:200px;
			padding-top:5px;
		}
         #outer{
            width:1000px;
            height:600px;
            border: 1px soild black;
            background-color: rgb(213,213,213);
            padding: 10px 20px;
            text-align: center;
            margin-left:200px;
        }
        #like-content{
            text-align: center;
            margin:50px 30px;
            font-size: 15px;
        }
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>

<div class="content-area">

    <img src="resources/img/nullheart.png" width="60px" height="60px" alt="" style="margin-left:200px; margin-bottom:20px;">
    
    <div id="outer">

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <br>
            <img src="resources/img/likeheart.png" alt="" width="40px" height="40px">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>


        <br>



        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
            상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
           	 상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px"> 
            <br>
          	  상품명
            <br>
            20,000원
            <img src="" alt="">
            
        </div>

    </div>
 </div>
<%@ include file="../../common/footerbar.jsp" %> 
</body>
</html>