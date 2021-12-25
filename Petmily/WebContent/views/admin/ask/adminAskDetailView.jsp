<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Ask a = (Ask)request.getAttribute("ask");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ask Detail View</title>
</head>
<body>
<style>
	/* 전체 틀 */
    .outer{
        font-size:15px;
        width:1000px;
        height:500px;
        margin:auto;
        margin-top:50px;
    }
    /* 필수상항 (별표) */
    .detail-area table th{
        width:10px;
    }
    /* 테이블 카테고리, 박스 */
    .detail-area table td{
        width:300px;
        padding:10px;
        text-align:left;
        font-weight:900;
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
        <!-- 궁금해요 상세테이블  -->
            <table>
            	<tr>
            		<th></th>
            		<td>작성자</td>
            		<td><%= a.getAskWriter() %></td>
            	</tr>
                <tr>
                	<th width="10px"></th>
                    <td>동물 분류</td>
                    <% 
                        String category = "";
                        
                        switch(Integer.parseInt(a.getCategory())) {
                        case 1: category="강아지"; break;
                        case 2: category="고양이"; break;
                        case 3: category="기타"; break;
                        }
                    %>
                    <td><%= category %></td>
                </tr>
                <tr>
                    <th style="color:red" width="10px"></th>
                    <td>제목</td>
                    <td><%= a.getAskTitle() %></td>
                </tr>
                <tr>
                    <th style="color:red" width="10px"></th>
                    <td>작성일</td>
                    <td><%= a.getEnrollDate() %></td>
                </tr>
            </table>
            <br><br>

            <!-- 하단 버튼 (상세: 삭제,뒤로) -->
            <div>
                <a href="<%= contextPath %>/adminDelete.ak?num=<%= a.getAskNo() %>" class="btn btn-sm btn-danger">삭제</a>
                <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>


		</div>
    </div>
    
</body>
</html>