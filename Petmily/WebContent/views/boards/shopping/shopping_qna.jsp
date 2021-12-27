<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.shopping.model.vo.ShoppingQna" %>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<ShoppingQna> list = (ArrayList<ShoppingQna>)request.getAttribute("list");
 
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    div {
        /* border: 1px solid green; */
    }

	.inner {
        width: 1300px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .qna-top {
        margin: auto;
        width: 80%;

    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 50px;
        margin-top: -15px;
        float: left;
    }

    #title_sm {
        position: relative;
        left: 15px;
        top: 15px;
        font-weight: bold;
        font-size: 18px;
    }

    #enrollBtn {
        float: right;
        margin-top: 20px;
    }

    .titleBottom {
        margin: 10px;
        margin-bottom: 100px;
        
    }

    #notify {
        float: left;
        margin: 5px;
        
    }
   
    table {
        text-align: center;
    }

    thead {
        background-color: rgb(235, 235, 235);   
    }

    tbody {
        cursor: pointer;
    }

</style>
</head>

<body>
    <!-- 메뉴바 -->
	<%@ include file="../../common/menubar.jsp"%>

	<!-- 사이드바  -->
	<%@ include file="shoppingsidebar.jsp"%>
 
    <div class="outer">
                
        <div class="inner">
            
            <div class="qna-top">

                <div>
                    <p id="title">상품 문의</p>
                    <span id="title_sm">Q&A</span>
                    <button type="button" id="enrollBtn" class="btn btn-sm btn-warning"
                            onclick="location.href='<%= contextPath %>/shop.qnaenroll'">문의하기</button>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
                
                <div class="titleBottom">
                   <p id="notify">구매하시려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.</p>
                                  </div>


                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>조회</th>
                        </tr>
    
                    </thead>
    
                    <tbody>
         
    					<% if(list.isEmpty()) { %>
	    					<tr>
	    						<td colspan="5">조회된 게시글이 없습니다</td>
	    					</tr>
	    				<% } else { %>
    						<% for(ShoppingQna s : list) { %>
		                        <tr>
		                            <td class="tdNo"><%= s.getPinquiryNo() %></td>
		                            <td class="tdTitle"><%= s.getPinquiryTitle() %> <span class="tdreply">(1)</span></td>
		                            <td class="tdWriter"><%= s.getMemberNick() %></td>
		                            <td class="tdDate"><%= s.getPinquiryDate() %></td>
		                            <td class="tdCount"><%= s.getCount() %></td>
		                        </tr>
		                    <% } %>
	                    <% } %>
    
    
                    </tbody>
                </table>

                <div class="paging-area" align="center">
					<% if(currentPage != 1) { %> 
		            	<button onclick="location.href='<%= contextPath %>/shop.qna?cpage=<%=currentPage-1%>';"> &lt; </button>
					<% } %>
		
					<% for(int p=startPage; p<=endPage; p++) { %>            
		            	<% if(p == currentPage) { %> <!-- 페이지가 현재 보고 있는 페이지라면 -->
		            		<button disabled><%= p %></button> <!-- 클릭 안되는 버튼으로 -->
		            	<% } else { %>
		            		<!-- 숫자 클릭 시 페이지 요청 -->
		            		<button onclick="location.href='<%= contextPath %>/shop.qna?cpage=<%= p %>';"><%= p %></button>
		            	<% } %>
		            <% } %>
		            
		            <% if(currentPage != maxPage) { %> <!-- 마지막 페이지 버튼 아닐 경우 다음버튼이 보여진다 -->
		            	<button onclick="location.href='<%= contextPath %>/shop.qna?cpage=<%= currentPage+1 %>';"> &gt; </button>
					<% } %> <!-- 마지막 페이지일 경우 다음버튼이 없다 -->
		        </div>
		        
            </div>

            <script>
	            $(function(){
	                $("table>tbody>tr").click(function(){
	                location.href= '<%= contextPath %>/detail.sqna?qno=' + $(this).children().eq(0).text();
	                })
	            })
	        </script>

	  
            <div style="margin-top: 200px;">
                <%@ include file="../../common/footerbar.jsp" %>
            </div>
        </div>
 
</body>
</html>