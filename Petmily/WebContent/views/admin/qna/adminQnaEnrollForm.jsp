<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	/* 테이블 카테고리, 입력창 */
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
    /* Q&A 답변창 */
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

        <!-- Q&A 답변 입력폼 -->
        <form action="<%= contextPath %>/adminInsert.qna" id="enroll-form-inquiry" method="post">
        
        				<input type="hidden" name="managerNo" value="<%= loginAdmin.getManagerNo() %>">
			
			<!-- 조회 및 입력창 -->
            <table>
                <tr>
                	<td>Q&A 답변내용</td>
                	<td rowspan="4"><textarea rows="10" name="content" style="resize:none" required></textarea></td>
                </tr>
                <tr>
                	<td></td>
                </tr>
                <tr>
                	<td></td>
                </tr>
                <tr>
                	<td></td>
                </tr>
                
            </table>
            <br><br>

            <!-- 하단 버튼 (등록: 등록, 뒤로) -->
            <div>
                <button type="submit" class="btn btn-sm btn-warning">등록</button>
                <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
            </div>

        </form>


    </div>
    
    
</body>
</html>