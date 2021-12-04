<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 정보는 펫밀리</title>
<style>
    .outer {
        width: 100%;
    }

    .center {
        max-width: 350px;
        margin: auto;
        padding : 40px
    }

    input {
        width: 100%;
        height: 50px;
        padding: 10px;
        margin: 1px;
    }

    button {
        font-size: 15px;
        font-weight: bold !important;
        width: 100%;
        height: 50px;
    }

    button:hover {
        background-color: sandybrown;
    }

    .loginBottom {
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

</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>

    <!-- 메뉴바, 사이드바 해당 X -->
	
	<div class="outer">

        <div class="center" align="center">

           	 이미지 
            <br><br>
            
            <form action="">
                <div>
                    <input type="email" placeholder="이메일" required>
                </div>
                
                <div>
                    <input type="password" placeholder="비밀번호" required>
                </div>

                <br>

       
                <button type="submit" class="btn btn-warning">로그인</button>
               

                <br><br>
                <div class="loginBottom">
                    <div id="findEmail">
                       	 이메일 계정을 잊으셨나요? <a href="이메일찾기경로">이메일 찾기</a>
                    </div>
                    <div id="findPwdOrJoin">
                        <a href="비밀번호찾기경로">비밀번호 재설정</a> 
                        <a href="회원가입경로">&ensp; 회원가입</a>
                    </div>
                </div>

            </form>

        </div>

    </div>
</body>
</html>