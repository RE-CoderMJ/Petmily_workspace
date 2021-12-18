<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.shop.model.vo.Point" %>
 <%
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	ArrayList<Point> list = (ArrayList<Point>)request.getAttribute("list");
 	
 	int currentPage = pi.getCurrentPage();
 	int startPage = pi.getStartPage();
 	int endPage = pi.getEndPage();
 	int maxPage = pi.getMaxPage();
 	
 %>
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
            background-color:#E5E5E4;
            border-radius:2px;
            padding: 10px 60px;
            margin-left:100px;
            margin:auto;
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
		margin-top:30px;
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

<input type="hidden" name="memNo" value="<%= loginUser.getMemNo() %>">

<% if(list.isEmpty()) { %>
	<div align="center">포인트 내역이 없습니다.</div>
<% } else { %>
	<% for(Point p : list) { %>
	
		<div class="outer">
		    <div class="inline-block" id="date">
		        <%= p.getPointDate() %>
		    </div>
		    
		    <div class="inline-block" id="pointcontent" style="margin-top:30px;">
		    
		    <% 
		    String point= p.getPoint();
		    String str = point.subString(0,0); 
		    %>
		    
		    <% if(str.equals("+")){ %>
		        <img src="resources/img/mypage/point-plus.png" alt="" width="50px" height="50px">
		    <% } else { %> 
		    	<img src="resources/img/mypage/point-minus.png" alt="" width="50px" height="50px">
		    <% } %>   
		    
		        <div class="inline-block" id="content">
		            <%= p.getPoint() %> p
		            <br> 
		            <%= p.getPointContent() %>     
		
		        </div>
		    </div>
		</div>
		
	<% } %>
<% } %>


 <!-- 페이징 바 -->
      <div class="paging-area" >
            <% if(currentPage != startPage) { %>
            	<button onclick="location.href='<%=contextPath%>/point.my?cpage=<%= currentPage-1 %>';"> &lt; </button>
            <% } %>		
            <% for(int pp=startPage; pp<=endPage; pp++){ %>
            	<% if(pp == currentPage) { %> 
            		<button disabled><%=pp %></button>
            	<% } else { %>
            		<button onclick="location.href='<%=contextPath %>/point.my?cpage=<%=pp%>';"><%=pp %></button>
            	<% } %>	
            <% } %>

			<% if(currentPage != maxPage) { %>
				<button onclick="location.href='<%= contextPath %>/point.my?cpage=<%= currentPage+1 %>';"> &gt; </button>
			<% } %>	
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