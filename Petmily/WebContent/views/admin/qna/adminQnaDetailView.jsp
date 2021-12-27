<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.admin_Qna.model.vo.Qna" %>
<%
	Qna q = (Qna)request.getAttribute("qna");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 전체 틀 */
    .outer{
       font-size:15px;
       width:1000px;
       height:500px;
       margin:auto;
       margin-top:50px;   
    }
	/* 테이블 카테고리,박스들 */
    #enroll-form-inquiry table td{
       width:300px;
       padding:10px;
       text-align:left;
       font-family: 'Gowun Dodum', sans-serif;
    }
    /* 테이블 테두리 */
    #enroll-form-inquiry table{
       border:2px solid lightgray;
       border-collapse: separate;
       border-radius: 10px;
       padding:20px;
    }
    /* 테이블 카테고리,박스들 */
    #enroll-form-inquiry textarea{
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
    <%@ include file="../../common/admin_cusmainSidebar.jsp" %>
	
	
    <!-- 큰틀 -->
    <div class="outer" align="center">
        <br>
        <br>
        <br>

	<div class="detail-area">
		<table>
        	<tr>
            	<th width="70px">등록일</th>
                <td><%= q.getQnaDate() %></td>
                <td></td>
                </tr>
            <tr>
                <th width="70px">작성자</th>
                <td><%= q.getMemNo() %></td>
                <td rowspan="3"><textarea rows="10" name="content" style="resize:none" required></textarea></td>
            </tr>
            <tr>
                <th width="70px">문의제목</th>
                <td><%= q.getQnaTitle() %></td>
            </tr>
            <tr>
                <td colspan="2"><%= q.getQnaContent() %></td>
            </tr>
         </table>
         <br><br>

         <!-- 하단 버튼 (상세: 수정, 삭제, 뒤로) -->
         <div>
             <button type="submit" class="btn btn-sm btn-warning">수정</button>
             <a href="" class="btn btn-sm btn-danger">삭제</a>
             <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
         </div>


	</div>
    </div>
    
    
</body>
</html>