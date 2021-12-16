<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
  <title>반려동물 정보는 펫밀리</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  

  <style>
    .outer {
          width: 100%;
    }

    .inner {
        max-width: 350px;
        margin: auto;
        padding : 40px
    }

    .img {
        margin-bottom: 10px;
    }

    img {
      width: 200px;
    }

    input {
        width: 100%;
        height: 50px !important;
        padding: 10px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    button {
        font-size: 15px;
        font-weight: bold !important;
        width: 100%;
        height: 50px;
    }
    
    .loginBottom {
        margin-top: 20px;
        font-size: 13px;
    }

    #findEmail {
        margin-bottom: 5px;
    }

    a {
        font-weight: bold;
        color: orange !important;
        text-decoration-line: none !important;
    }

    a:hover {
        color: tomato !important;
    }

    .notifyRed {
        font-size: 13px;
        color: red;
        font-weight: bold;
    }

  </style>
</head>

<body>

<div class="outer">

    <div class="inner">
        
        <div class="img" align="center">
          <a href="<%= contextPath %>">
            <img src="resources/img/logo_top.png" alt=""> 
          </a>
        </div>
        
       <%-- <form action="/action_page.php" class="needs-validation" novalidate> --%>
        	<form action="<%= contextPath %>/login.me" method="post">
            <!-- Email 인풋 null일 때-->
            <div class="form-group">
              <input type="text" class="form-control" id="userEmail" placeholder="E-mail" name="userEmail" required>
              <%-- <div class="valid-feedback"></div>
              <div class="invalid-feedback">이메일을 입력해주세요</div> --%>
            </div>
            <!-- 비밀번호 인풋 null일 때-->
            <div class="form-group">
              <input type="password" class="form-control" id="userPwd" placeholder="Password" name="userPwd" required>
              <%-- <div class="valid-feedback"></div>
              <div class="invalid-feedback">비밀번호를 입력해주세요</div> --%>
            </div>

            <!--
            // Email 틀렸을 시 
            <div>
              <p class="notifyRed">등록되지않은 이메일입니다</p>
            </div>

            // 비밀번호 틀렸을 시
            <div>
              <p class="notifyRed">비밀번호가 틀렸습니다</p>
            </div>
            -->

            <button type="submit" class="btn btn-warning">로그인</button>
        </form>

        <div class="loginBottom" align="center">
            <div id="findEmail">
                이메일 계정을 잊으셨나요? <a href="<%= contextPath %>/findEmailForm.me">이메일 찾기</a>
            </div>
            <div id="findPwdOrJoin">
                <a href="<%= contextPath %>/findPwdForm.me">비밀번호 재설정</a> 
                <a href="<%= contextPath %>/joinForm.me">&ensp; 회원가입</a>
            </div>
        </div>
    </div>
</div>

<script>
	// Disable form submissions if there are invalid fields
	(function() {
	  'use strict';
	  window.addEventListener('load', function() {
	    // Get the forms we want to add validation styles to
	    var forms = document.getElementsByClassName('needs-validation');
	    // Loop over them and prevent submission
	    var validation = Array.prototype.filter.call(forms, function(form) {
	      form.addEventListener('submit', function(event) {
	        if (form.checkValidity() === false) {
	          event.preventDefault();
	          event.stopPropagation();
	        }
	        form.classList.add('was-validated');
	      }, false);
	    });
	  }, false);
	})();
</script>
</body>
</html>
