<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.admin_Faq.model.vo.Faq" %>
<%
	Faq f = (Faq)request.getAttribute("faq");
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
    /* 필수상항 (별표) */
    #enroll-form-faq table th{
        width:10px;
    }
    /* 테이블 카테고리, 박스 */
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
    /* 테이블 내 입력창 */
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
        
        <div class="detail-area">
        <!-- FAQ 상세테이블  -->
            <table>
                <tr>
                	<th width="10px"></th>
                    <td>분류</td>
                    <% 
                        String category = "";
                        
                        switch(Integer.parseInt(f.getFaqCate())) {
                        case 1: category="회원가입"; break;
                        case 2: category="비밀번호재설정"; break;
                        case 3: category="회원정보"; break;
                        case 4: category="탈퇴및재가입"; break;
                        case 5: category="주문결제"; break;
                        case 6: category="입점제휴"; break;
                        case 7: category="포인트"; break;
                        case 8: category="교환환불"; break;
                        case 9: category="게시물등록"; break;
                        case 10: category="사진영상"; break;
                        case 11: category="펫적사항"; break;
                        case 12: category="기타"; break;
                        }
                    %>
                    <td><%= category %></td>
                </tr>
                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>FAQ 질문</td>
                    <td><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>FAQ 답변</td>
                    <td>
                        <textarea rows="10" name="content" style="resize:none" required></textarea>
                    </td>
                </tr>
            </table>
            <br><br>

            <!-- 하단 버튼 (상세: 수정,삭제,뒤로) -->
            <div>
            	
                <a href="<%= contextPath %>/adminUpdateForm.faq?num=<% f.getfaqNo() %>" class="btn btn-sm btn-warning">수정</a>
                <a href="<%= contextPath %>/adminDelete.faq?num=<% f.getfaqNo() %>" class="btn btn-sm btn-danger">삭제</a>
                <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>


		</div>
    </div>

</body>
</html>