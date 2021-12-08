<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

    input {
        width: 270px;
        padding: 10px;
        padding-right: 55px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    button[type=submit] {
        margin-top: -10px;
        width: 270px;
        height: 50px;
        font-weight: bold !important;
    }

    #checkBtn {
        margin-bottom: 5px;
        margin-left: -55px;
    }


    .inputP {
        margin-top: 10px;
        margin-bottom: 5px;
        font-size: 13px;
    }

    p {
        font-weight: bold;
    }

    .btnBottom {
        margin-top: 60px;
        font-size: 13px;
    }

    #bb_p1 {
        color: gray;
    }

    #bb_p2 {
        margin-top: -10px;
        width: 180px;
        background-color: orange;
    }

    
</style>

</head>

<body>
    
    <%@ include file="../common/menubar.jsp" %>

    <div class="content">

        <div class="form">
            
            <div align="center" style="margin-bottom: 50px;">
                <h3>비밀번호 재설정</h3>
            </div>

            <div align="center">
                <p class="inputP">이메일로 발송된 인증번호를 입력하세요</p>
                <div class="inputWrap">
                    <input type="text" name="userEmail" placeholder="인증번호" required>
                </div>
                <br>
            </div>

            <div align="center" style="margin-bottom: 20px;">
                <button type="submit" class="btn btn-outline-secondary">인증번호 재전송</button>
            </div>

            <div align="center">
                <button type="submit" class="btn btn-warning">다 음</button>
            </div>

            <div align="center" class="btnBottom">
                <p id="bb_p1">회원가입 시 입력한 정보가 기억나지 않는다면?</p>
                <p id="bb_p2">고객센터 문의하기 2222-2222</p>
            </div>

        </div>

    </div>
</body>
</html>