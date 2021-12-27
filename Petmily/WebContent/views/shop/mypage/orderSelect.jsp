<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.shop.model.vo.OrderSelect" %>
 <%
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	ArrayList<OrderSelect> list = (ArrayList<OrderSelect>)request.getAttribute("list");
 	
 	int currentPage = pi.getCurrentPage();
 	int startPage = pi.getStartPage();
 	int endPage = pi.getEndPage();
 	int maxPage = pi.getMaxPage();
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY</title>

  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet">
  
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  

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
        #outer{
            width:800px;
            border: 1px soild black;
            margin:auto;
            margin-left:100px;
        }
         
        #content{
            width:1000px;
            border:1px solid black;
            border-radius: 5px;
            margin:30px 0px;
            padding-top :5px;
            padding-bottom:5px;
            cursor:pointer;
            position:relative;
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
            font-size: 18px;
        }

        #c3{
            color:gray;  /*색 바꾸기*/
            margin-left: 320px;
            font-size:16px;
        }
        #c4{
            color:darkslategray; /*색 바꾸기*/
            margin:5px 20px;
            font-size: 30px;
            font-weight: 700;
        }

		.down-arrow {
        width: 30px;
        height: 30px;
        margin:auto;
        position:absolute;
        top:20px;
        right: 50px
        }
        
		/*주문내역 상품정보 슬라이드*/  
		.orderProduct {
            display: none;
            overflow: hidden;
            font-size: 20px;
            position:relative;
            left:400px;
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
            width:500px;
            height:100px;
            border-radius: 10px;
            margin-top:5px;
		}

		

        .inline-block{display:inline-block;}
        
         #content-img{
			width:80px;
			height:80px;
            position:absolute; 
            top:50%; 
            left:5%;
            margin-top:-40px; 
        }

        #cart-option{
            width:350px;
            position:absolute;
            margin-left: 10px;
            top:20px;
            right:10px;
        }
        
         #money{position:absolute; right:2%; bottom:5%; font-size:18px;}
        
        /* 페이징바 스타일 */
		.paging-area{
		margin:auto;
		text-align:center;
		margin-top:50px;
		margin-left:100px;
		}
		/* 페이징바 */
		.paging-area button{
		border:  0;
		background-color: transparent;
		height: 40px;
		width: 40px;
		border-radius: 5px;
		}
    </style>
</head>
<body>

<%@ include file="../../common/menubar.jsp" %>

<div class="oouter">
<%@ include file="mypageSidebar.jsp" %>
    
<div class="content-area">
    <div id="title">주문내역조회</div>

    <div id="outer">
<% if(list.isEmpty()) { %>
	<div align="center" id="nullcase">주문 내역이 없습니다.</div>
<% } else { %>
	<% for(OrderSelect os : list) { %>
	
        <div id="content">
            <div class="inline-block" id="c1"><%= os.getOrderDate() %> 구매</div>
            <div class="inline-block" id="c2" onclick="location.href='<%= contextPath %>/orderselectdetail.my?orderno=<%= os.getOrderNo() %>'">주문번호 : <%= os.getOrderNo() %></div>
            <div class="inline-block" id="c3" onclick="location.href='<%= contextPath %>/orderselectdetail.my?orderno<%= os.getOrderNo() %>'">총 x개</div>
            <div class="inline-block" id="c4">총 xxxx원</div>
            <button class="btn" data-toggle="modal" data-target="#my80sizeModal"> 
            	<img src="resources/img/down-arrow.png" class="down-arrow">
            </button>
            
            <div class="orderProduct">
				<div class="inline-block" >	             
	                <img src=""  id="content-img">    
	        	</div>
	            <div class="inline-block"  id="cart-option" >	                
	               	 <%=os.getProductName() %>
	                <br>
	             	  <%= os.getpOption() %>	
	            </div>
	            <div class="inline-block" id="money">
	                <h3><%= os.getPrice() %> 원</h3>
	            </div>
			</div>
        </div>
    
    <% } %>
<% } %>   
    <!-- 페이징 바 -->
      <div class="paging-area" >
            <% if(currentPage != startPage) { %>
            	<button onclick="location.href='<%=contextPath%>/orderselect.my?cpage=<%= currentPage-1 %>';"> &lt; </button>
            <% } %>		
            <% for(int pp=startPage; pp<=endPage; pp++){ %>
            	<% if(pp == currentPage) { %> 
            		<button disabled><%=pp %></button>
            	<% } else { %>
            		<button onclick="location.href='<%=contextPath %>/orderselect.my?cpage=<%=pp%>';"><%=pp %></button>
            	<% } %>	
            <% } %>

			<% if(currentPage != maxPage) { %>
				<button onclick="location.href='<%= contextPath %>/orderselect.my?cpage=<%= currentPage+1 %>';"> &gt; </button>
			<% } %>	
    	</div>
    </div>
</div>


</div>

<script>

$("button").click(function() {
	   $(this).next(".orderProduct").stop().slideToggle(300);
	  $(this).toggleClass('on').siblings().removeClass('on');
	  $(this).next(".orderProduct").siblings(".orderProduct").slideUp(300); // 1개씩 펼치기
	});
	
$(function(){
    $(".paging-area button").click(function(){
        $(this).siblings(".paging-area button").css({background: "", color:"black"});
        $(this).css({background: "rgb(247, 198, 4)", color:"black"});
    })
})	
</script>

<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>