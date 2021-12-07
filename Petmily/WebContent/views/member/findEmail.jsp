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
        border: 1px solid lightgray;
        border-radius: 5px;
        margin-bottom: 10px;
    }

    button {
        margin-top: 20px;
        width: 270px;
        height: 50px;
        font-weight: bold !important;
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
    
    <%@ include file="../../common/menubar.jsp" %>

    <div class="content">

        <div class="form">
            
            <div align="center" style="margin-bottom: 50px;">
                <h3>이메일 찾기</h3>
            </div>

            <div align="center">
                <p class="inputP">회원정보에 등록한 이름을 입력해주세요</p>
                <input type="text" name="userName" required placeholder="이름">
                <br>
                <p class="inputP">회원정보에 등록한 전화번호를 입력해주세요</p>
                <input type="text" name="phone" placeholder="010" style="width: 60px;" required>
                -
                <input type="text" name="phone2" placeholder="0000" style="width: 90px;" required>
                -
                <input type="text" name="phone3" placeholder="0000" style="width: 90px;" required>
            </div>

            <div align="center">
                <button type="submit" class="btn btn-warning">이메일 찾기</button>
            </div>

            <div align="center" class="btnBottom">
                <p id="bb_p1">회원가입 시 입력한 정보가 기억나지 않는다면?</p>
                <p id="bb_p2">고객센터 문의하기 2222-2222</p>
            </div>

        </div>

    </div>
</body>
</html>