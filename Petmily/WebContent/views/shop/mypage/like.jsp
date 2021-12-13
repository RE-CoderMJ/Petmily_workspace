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
		.oouter{
			width: 1600px;
			height: 1000px;
			margin:auto;
		}     
		.content-area{
			width: 1600px;
			height: 1000px;
			padding:200px;
			padding-top:0px;
			margin:auto;
		}
		
         #outer{
            width:1000px;
            height:600px;
            border: 1px soild black;
            background-color: rgb(235, 235, 235);
            padding: 0px 20px;
            text-align: center;
            margin:auto !important;
        }
        #like-content{
            text-align: center;
            margin:50px 30px;
            font-size: 18px;
        }
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>

<div class="oouter">

<%@ include file="mypageSidebar.jsp" %>

<div class="content-area">

    <img src="resources/img/nullheart.png" width="60px" height="60px" alt="" style="margin-left:100px; margin-bottom:20px;">
    
    <div id="outer">

        <div class="inline-block" id="like-content" align="center">
            <img src=""  id="content-img" width="100px" height="100px" > 
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
<%@ include file="../../common/footerbar.jsp" %> 
 </div>
</div> 
</body>
</html>