<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pm.member.model.vo.Member"%>
<%
	String email = (String)request.getAttribute("email");
	String userName = (String)request.getAttribute("userName");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>반려동물 정보는 펫밀리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .content {
        margin: auto;
        width: 500px;
        height: 200px;
    }

    button {
        margin-top: 20px !important;
        width: 270px;
        height: 50px;
        font-weight: bold !important;
    }

    .emailP {
        margin-top: 20px !important; 
        font-weight: bold;
    }

    span {
        background-color: orange;
        color: white;
    }

    .btnBottom {
        margin-top: 20px;
        font-size: 13px;
    }

    #bb_p1 {
        color: gray;
    }

    #bb_p2 {
        margin-top: -10px;
        width: 180px;
        text-decoration-line: none !important;
        color: orange !important;
        font-weight: bold;
    }

    #bb_p2:hover {
        color: tomato !important;
    }
</style>

</head>

<body>
    
    <%@ include file="../common/menubar.jsp" %>

    <div class="content">

        <div class="form">
            
            <div align="center" style="margin-bottom: 50px;">
                <h3 style="font-weight: bold">이메일 찾기</h3>
            </div>

            <div class="img" align="center">
                <img src="resources/img/dog.png"></img>
            </div>

            <div class="emailP" align="center">
                <p><%= userName %>님의 이메일 계정은 <br> <span><%= email %></span>입니다.</p>
            </div>

            <div align="center">
                <button type="submit" class="btn btn-warning" onclick="location.href='<%= contextPath%>/loginForm.me';">로그인 하러 가기</button>
            </div>

            <div align="center" class="btnBottom">
                <p id="bb_p1">비밀번호도 잊으셨나요? <a id="bb_p2" href="<%= contextPath %>/findPwdForm.me">&ensp;비밀번호 재설정</a></p>
            </div>

        </div>

    </div>

</body>
</html>