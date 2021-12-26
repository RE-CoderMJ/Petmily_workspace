<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.admin_Market.model.vo.Market" %>
<%
	Market m = (Market)request.getAttribute("market");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Market Detail View</title>
<style>
	/* 전체 틀 */
    .outer{
        font-size:20px;
        width:1000px;
        height:500px;
        margin:auto;
        margin-top:50px;
    }
    /* 필수상항 (별표) */
    .detail-area table th{
        width:150px;
        text-align:right;
        color:red;
       
    }
    /* 테이블 카테고리, 박스 */
    .detail-area table td{
        width:300px;
        padding:15px;
        text-align:left;

        font-family: 'Gowun Dodum', sans-serif;
    }
    /* 테이블 테두리 */
    .detail-area{
    	width:700px;
        border:2px solid lightgray;
        border-collapse: separate;
        border-radius: 10px;
        padding:20px;
    }
    /* 테이블 내 입력창 */
    .detail-area input, .detail-area textarea{
        width:100%;
        box-sizing:border-box;
    }
</style>

<link href="https://fonts.googleapis.com/css2?family=Qahiri&family=Quicksand:wght@300&family=Rampart+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<!-- 메뉴바 -->
    <%@ include file="../../common/admin_menubar.jsp" %>
    
    <!-- 사이드바 -->
    <%@ include file="../../common/admin_boardsmainSidebar.jsp" %>

	<!-- 전체 틀 -->
    <div class="outer">
    	<br>
    	<br>
    	<br>

       <div class="detail-area">
        <!-- 중고거래 상세테이블  -->
            <table>
            	<tr>
            		<th></th>
            		<td style="font-weight:900">작성자</td>
            		<td><%= m.getMarketWriter() %></td>
            	</tr>
            	<tr>
            		<th></th>
            		<td style="font-weight:900">작성일</td>
            		<td><%= m.getEnrollDate() %></td>
            	</tr>
                <tr>
                	<th></th>
                	<td style="font-weight:900">동물 분류</td>
                    <% 
                        String category = "";
                        
                        switch(Integer.parseInt(m.getCategory())) {
                        case 1: category="강아지"; break;
                        case 2: category="고양이"; break;
                        case 3: category="기타"; break;
                        }
                    %>
                    <td><%= category %></td>
                </tr>
                <tr>
                	<th></th>
                	<td style="font-weight:900">게시판 분류</td>
                    <% 
                        String dcategory = "";
                        
                        switch(Integer.parseInt(m.getdCategory())) {
                        case 1: dcategory="살래요"; break;
                        case 2: dcategory="팔래요"; break;
                        }
                    %>
                    <td><%= dcategory %></td>
                </tr>
                <tr>
                	<th></th>
                    <td style="font-weight:900">제목</td>
                    <td><%= m.getMarketTitle() %></td>
                </tr>
                <tr>
                	<th></th>
                    <td style="font-weight:900">가격</td>
                    <td>￦<%= m.getPrice() %></td>
                </tr>
            </table>
            <br><br>

            <!-- 하단 버튼 (상세: 삭제,뒤로) -->
            <div align="center">
                <a href="<%= contextPath %>/adminDelete.mk?num=<%= m.getMarketNo() %>" class="btn btn-sm btn-danger">삭제</a>
                <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>


		</div>
    </div>
    
</body>
</html>