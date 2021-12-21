<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.admin_Faq.model.vo.Faq" %>
<%
	Faq f = (Faq)request.getAttribute("f");  
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
    /* 별표 */
    #enroll-form-faq table th{
       width:10px;
    }
    /* 테이블 카테고리,박스들 */
    #enroll-form-faq table td{
       width:300px;
       padding:10px;
       text-align:left;
       font-weight:900;
       font-family: 'Gowun Dodum', sans-serif;
     }
     /* 테이블 테두리 */
     #enroll-form-faq table{
        border:2px solid lightgray;
        border-collapse: separate;
        border-radius: 10px;
        padding:20px;
     }
     /* 테이블 카테고리,박스들 */
     #enroll-form-faq input, #enroll-form-faq textarea{
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

    <!-- 전체 틀 -->
    <div class="outer" align="center">
        <br>
        <br>
        <br>
        
        <!-- FAQ 수정 폼 -->
        <form action="<%= contextPath %>/adminUpdate.faq" id="enroll-form-faq" method="post">
			
			<input type="hidden" name="num" value="<%= f.getFaqNo() %>">
			
			<!-- FAQ 수정테이블 -->
            <table>
                <tr>
                	<th width="10px"></th>
                    <td>FAQ 분류</td>
                    <td>
                        <select name="cate" id="">
                            <option value="1">회원가입</option>
                            <option value="2">비밀번호재설정</option>
                            <option value="3">회원정보</option>
                            <option value="4">탈퇴및재가입</option>
                            <option value="5">주문결제</option>
                            <option value="6">입점제휴</option>
                            <option value="7">포인트</option>
                            <option value="8">교환환불</option>
                            <option value="9">게시물등록</option>
                            <option value="10">사진영상</option>
                            <option value="11">펫적사항</option>
                            <option value="12">기타</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>FAQ 질문</td>
                    <td><input type="text" name="title" required value="<%= f.getFaqTitle() %>"></td>
                </tr>
                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>FAQ 답변</td>
                    <td>
                        <textarea rows="10" name="content" style="resize:none" required><%= f.getFaqContent() %></textarea>
                    </td>
                </tr>
            </table>
            <br><br>

            <!-- 하단 버튼 (수정 : 수정, 뒤로) -->
            <div>
                <button type="submit" class="btn btn-sm btn-warning">수정</button>
                <button type="reset" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>

        </form>


    </div>

</body>
</html>