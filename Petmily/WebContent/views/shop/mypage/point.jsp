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
			width: 1700px;
			height: 1000px;
			margin:auto;
		}     
		.content-area{
			width: 1700px;
			height: 1000px;
			padding:200px;
			padding-top:0px;
			margin:auto;
		}

       #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
			margin-left:100px;
        } 

        #pointview{
            width:300px;
            height:100px;
            background-color: orange;
            border-radius: 13px;
            color:white;
            position:relative;
            margin-left:100px;
            margin-bottom:20px;
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
            margin-left:100px;
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



		/* 페이징바 스타일 */
		.paging-area{
		margin:auto;
		text-align:center;
		}
		/* 페이징바 */
		.paging-area button{
		border:  0;
		background-color: transparent;
		height: 40px;
		width: 40px;
		border-radius: 5px;
		}

        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>

<div class="oouter">

<%@ include file="mypageSidebar.jsp" %>
 
<div class="content-area">
<div id="title" >포인트 사용 및 적립내역 조회</div>

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

 <!-- 페이징 바 -->
      <div class="paging-area" >
            <button> &lt; </button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button> &gt; </button>
    </div>

</div>
<%@ include file="../../common/footerbar.jsp" %>
</div>

 <script>
        $(function(){
            $(".paging-area button").click(function(){
                $(this).siblings(".paging-area button").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
            })
        })
    </script>



</body>
</html>