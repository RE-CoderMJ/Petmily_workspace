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
			padding-top:35px
		}
        #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin:20px;
            margin-left:150px;
        } 
      

        #pointview{
            width:300px;
            height:100px;
            background-color: orange;
            border-radius: 13px;
            color:white;
            position:relative;
        }
        #point1{
            font-size:14px;
            position:absolute;
            top:10px;
            left:10px;
        }
        #point2{
            font-size: 50px;
            position: absolute;
            top:20px;
            left:100px;
        }

        /*포인트 내역*/
        .outer{
            width:1000px;
            border: 1px soild black;
            background-color: rgb(213,213,213);
            padding: 10px 20px;
            margin-left:200px;
            margin-bottom: 20px;
        }
        #date{
            position:absolute;
            font-size: 14px;
        }
        #pointcontent{
            margin-left: 30px;

        }
        
        #content{
            position: absolute;
            margin-left:10px;
        }





        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>
 
<div id="title" class="inline-block" >포인트 사용 및 적립내역 조회</div>
<div class="content-area">

<div class="inline-block" id="pointview">
    <div class="inline-block" id="point1">보유</div>
    <div class="inline-block" id="point2">7,000p</div>
</div>

<div class="outer">
    <div class="inline-block" id="date">
        21.11.12
    </div>
    
    <div class="inline-block" id="pointcontent" style="margin-top:30px;">
        <img src="" alt="" width="50px" height="50px">
        <div class="inline-block" id="content">
            +500p 
            <br> 
            리뷰 작성 적립
        </div>
        <br>
        <img src="" alt="" width="50px" height="50px">
        <div class="inline-block" id="content">
            +500p 
            <br> 
            리뷰 작성 적립
        </div>
        
    </div>
</div>


<div class="outer">
    <div class="inline-block" id="date">
        21.11.11
    </div>
    
    <div class="inline-block" id="pointcontent" style="margin-top:30px;">
        <img src="" alt="" width="50px" height="50px">
        <div class="inline-block" id="content">
            -1300p
            <br> 
            결제 시 사용
        </div>
    </div>
</div>

<div class="outer">
    <div class="inline-block" id="date">
        21.11.9
    </div>
    
    <div class="inline-block" id="pointcontent" style="margin-top:30px;">
        <img src="" alt="" width="50px" height="50px">
        <div class="inline-block" id="content">
            +5000p
            <br> 
            가입 환영 포인트
        </div>
    </div>
</div>

<div class="paging-area" align="center">
<button class="pagging inline-block">&lt</button>
<button class="pagging inline-block">1</button>
<button class="pagging inline-block">2</button>
<button class="pagging inline-block">3</button>
<button class="pagging inline-block">4</button>
<button class="pagging inline-block">&gt</button>
</div>

</div>

<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>