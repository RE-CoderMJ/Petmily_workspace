<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 큰 틀 */
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
        <form action="<%= contextPath %>/admininsert.faq" id="enroll-form-faq" method="post">
			<!-- FAQ 수정테이블 -->
            <table>
                <tr>
                	<th width="10px">&nbsp</th>
                    <td>분류</td>
                    <td>
                        <select name="" id="">
                            <option value="">전체</option>
                            <option value="">취소/환불</option>
                            <option value="">배송관련</option>
                            <option value="">반품/교환</option>
                            <option value="">회원정보</option>
                            <option value="">상품문의</option>
                            <option value="">쿠폰/적립금</option>
                            <option value="">기타</option>
                        </select>
                    </td>
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

            <!-- 하단 버튼 (수정 : 수정, 뒤로) -->
            <div>
                <button type="submit" class="btn btn-sm btn-warning">수정</button>
                <button type="reset" class="btn btn-sm btn-secondary">취소</button>
            </div>

        </form>


    </div>

</body>
</html>