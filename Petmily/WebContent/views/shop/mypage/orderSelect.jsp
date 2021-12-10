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
			height: 1200px;
			padding:200px;
			padding-top:5px;
			
		}

       #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
            margin-left:150px;
        } 
        #outer{
            width:800px;
            border: 1px soild black;
            margin-left:150px;
        }
         
        #content{
            width:800px;
            border:1px solid black;
            border-radius: 5px;
            margin:25px 0px;
        }
        
        #c1{
            color:gray;  /*색 바꾸기*/
            margin-left:40px;
            margin-bottom:5px;
        }
        #c2{
            color:darkslategray; /*색 바꾸기*/
            margin-left:30px;
            font-weight: 700;
            font-size: 15px;
        }

        #c3{
            color:gray;  /*색 바꾸기*/
            margin-left: 250px;
        }
        #c4{
            color:darkslategray; /*색 바꾸기*/
            margin:5px 20px;
            font-size: 23px;
            font-weight: 700;
        }


        .inline-block{display:inline-block;}
    </style>
</head>
<body>

<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>
    
<div class="content-area">
    <div id="title">주문내역 / 배송조회</div>

    <div id="outer">

        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매</div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>

        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매  </div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>

        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매  </div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>


        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매  </div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>


        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매  </div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>

        <div id="content">
            <div class="inline-block" id="c1">21.11.15 구매  </div>
            <div class="inline-block" id="c2">주문번호 : A-13124954</div>
            <div class="inline-block" id="c3">총3개</div>
            <div class="inline-block" id="c4">60,000원</div>
            <button> ▼ </button>
        </div>

        




    </div>
</div>

<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>