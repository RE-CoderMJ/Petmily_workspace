<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.shop.model.vo.Point" %>
 <%
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	ArrayList<Point> list = (ArrayList<Point>)request.getAttribute("list");
 	int pointSum = (int)request.getAttribute("pointSum");
 	
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
			height: 1300px;
			margin:auto;
		}     
		.content-area{
			width: 1700px;
			min-height: 1000px;
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
            font-size:18px;
            position:absolute;
            top:10px;
            left:10px;
        }
        #point2{
            font-size: 50px;
            position: absolute;
            top:20px;
            left:80px;
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
        	margin-top:30px;
            margin-left: 30px;
		    position:relative;
        }
        
         #getPoint{
            position: absolute;
            top:10px;
            margin-left:20px;
            font-size:23px;
            font-weight:700;
        }
        #getPointContent{
            position: absolute;
            top:15px;
            left:160px;
            font-size:18px;
            font-weight:600;
            color:orange;
            
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
    <div class="inline-block" id="point2"><%= pointSum %>p</div>
</div>

<input type="hidden" name="memNo" value="<%= loginUser.getMemNo() %>">

<% if(list.isEmpty()) { %>
	<div align="center">포인트 내역이 없습니다.</div>
<% } else { %>


	<% 
      int i=0; 
      boolean flag = true;
   %>
    <% while(i < list.size() && flag){ // i가 마지막 인덱스일때는 더이상 블럭이 안만들어지도록  %>
   
      <!-- 우선 회색 블럭을 하나 만들고 -->
      <div class="outer">
          <div class="inline-block" id="date">
              <%= list.get(i).getPointDate() %> <!-- 현재 인덱스의 포인트 날짜가 한번 보여지도록 -->
          </div>
          
          <!-- 회색 블럭이 만들어지면 기본적으로 포인트 하나의 정보는 보여줘야됨 무조건 현재 i번째 인덱스 Point 정보는 먼저 보여지도록 -->
          <div id="pointcontent">
              <% if(list.get(i).getPoint().substring(0,1).equals("+")){ %>
                 <img src="resources/img/mypage/point-plus.png" alt="" width="50px" height="50px">
              <% } else { %> 
                 <img src="resources/img/mypage/point-minus.png" alt="" width="50px" height="50px">
              <% } %>   
              
              <div class="inline-block" id="getPoint">
                 <%= list.get(i).getPoint() %>p
              </div>
               <div class="inline-block" id="getPointContent">
                 - <%= list.get(i).getPointContent() %>
              </div>
          </div>
          
          <% if(i == list.size()-1) { flag = false; } %>
          
          <!-- 현재 i번째 인덱스 Point와 그 "다음 Point"와 날짜를 비교하면서 일치하면 반복적으로 div요소가 만들어지도록 for문 -->
          <% for(int j=i+1; j<list.size(); j++) { // j=i+1로 다음 요소를 선택할 수 있도록%>
             <% if(list.get(i).getPointDate().equals(list.get(j).getPointDate())) { // 현재 i번째와 그 다음요소의 날짜가 일치할경우 %>
                 <div id="pointcontent">
                       <% if(list.get(j).getPoint().substring(0,1).equals("+")){ %>
                           <img src="resources/img/mypage/point-plus.png" alt="" width="50px" height="50px">
                       <% } else { %> 
                           <img src="resources/img/mypage/point-minus.png" alt="" width="50px" height="50px">
                       <% } %>   
                       
                      <div class="inline-block" id="getPoint">
                        <%= list.get(i).getPoint() %>p
                     </div>
                      <div class="inline-block" id="getPointContent">
                        - <%= list.get(i).getPointContent() %>
                     </div>
                 </div>
                 <% i++; if(j == list.size()-1) { flag = false;} %>
                 
              <% }%>
                
              <% if(!list.get(i).getPointDate().equals(list.get(j).getPointDate())) {i++; break;} %>                  
          <% } %>
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