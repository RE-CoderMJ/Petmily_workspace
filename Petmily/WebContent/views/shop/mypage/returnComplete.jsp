<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
       	div, img, li, a{
	    	box-sizing: border-box;
		}
		     
		.content-area{
			width: 1400px;
			height: 1000px;
			margin:auto;
			margin-top:200px;
		}

        #outer{
            width:1000px;
            padding: 10px 20px;
            margin-left:200px;
            text-align: center;
            margin:auto;
        }
        #btnshop{
            color:black;
            background-color: rgb(196, 196, 196); /*색 바꾸기*/
            width:180px;
            padding:15px 15px;
            border:0;
            border-radius: 4px;
            margin:20px;
            font-weight: 700;
            font-size:20px;
            text-decoration: none;
        }
         #btncancel{
            color:white;
            background-color:rgb(99, 96, 96) ; /*색 바꾸기*/
            width:180px;
            padding:15px 15px;
            border:0;
            border-radius: 4px;
            margin:20px;
            font-weight: 700;
            font-size:20px;
        }
        /* 커서 대면 투명해지는거 적용 안됨
        #btncancel:hover{
        	oapacity:0.5;
        }
        */
        #text1{
            font-size: 30px;
            font-weight: bold;
            margin: 20px;
        }
        #text2{
            font-size: 18px;
        }
		a { text-decoration:none; color:white !important  } 
		a:hover { text-decoration:none !important }
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>
    <div id="outer">
        <img src="resources/img/foot_logo.png" width="200" height="200" align="center">
        <br>
        <div align="center" id="text1">반품 요청이 완료되었습니다.</div>
        <div align="center" id="text2">요청 확인 후 고객센터에서 반품 관련 안내 드리겠습니다.</div>
    
        <br><br><br>
        <button id="btnshop">쇼핑 계속하기</button>

    </div>
</body>
</html>