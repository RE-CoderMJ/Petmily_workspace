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
    #enroll-form-notice table th{
        width:10px;
    }
    /* 테이블 카테고리,박스들 */
    #enroll-form-notice table td{
        width:300px;
        padding:10px;
        text-align:left;
        font-weight:900;
        font-family: 'Gowun Dodum', sans-serif;
    }
    /* 테이블 테두리 */
    #enroll-form-notice table{
        border:2px solid lightgray;
        border-collapse: separate;
        border-radius: 10px;
        padding:20px;
    }
    /* 테이블 카테고리,박스들 */
    #enroll-form-notice input, #enroll-form-notice textarea{
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

        <!-- Notice 등록 폼 -->
        <form action="<%= contextPath %>/adminInsert.no" id="enroll-form-notice" method="post">

            <table>
            	<tr>
                    <th width="10px"></th>
                    <td>공지사항 분류</td>
                    <td>
                    	<select name="noticecate" id="">
                            <option value="1">궁금해요</option>
                            <option value="2">중고거래</option>
                            <option value="3">찾고있어요</option>
                            <option value="4" selected>고객센터 공지사항</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>공지사항 제목</td>
                    <td><input type="text" name="title" required></td>
                </tr>

                <tr>
                    <th style="color:red" width="10px">*</th>
                    <td>공지사항 내용</td>
                    <td>
                        <textarea rows="10" name="content" style="resize:none" required></textarea>
                    </td>
                </tr>
            </table>
            <br><br>

            <!-- 하단 버튼 (등록 : 등록, 취소) -->
            <div>
                <button type="submit" class="btn btn-sm btn-warning">등록</button>
                <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>

        </form>


    </div>
    
</body>
</html>