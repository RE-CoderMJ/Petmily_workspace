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
        margin-bottom: 10px !important;
    }

    button[type=submit] {
        margin-top: 5px;
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

    #notify {
        width: 280px;
    }

    .notifyRed {
        font-size: 13px;
        color: red;
        font-weight: bold;
        margin: 0 10px 10px;
        float: left;
    }

    .notifyGreen {
        font-size: 13px;
        color: mediumseagreen;
        font-weight: bold;
        margin: 0 10px 10px;
        float: left;
    }

    .notifyOrange {
        font-size: 13px;
        color: orange;
        font-weight: bold;
        margin: 0 10px 10px;
        float: right;
        text-decoration-line: none !important;
    }

    .notifyOrange:hover {
        color: tomato;
    }

    
</style>

</head>

<body>
    
    <%@ include file="../common/menubar.jsp" %>

    <div class="content">

        <div class="form">
            
            <div align="center" style="margin-bottom: 50px;">
                <h3 style="font-weight: bold">비밀번호 재설정</h3>
            </div>

            <div align="center">
                <p class="inputP">가입한 이메일 주소를 입력해주세요</p>
                <div class="inputWrap">
                    <input type="text" name="userEmail" placeholder="이메일" required>
                    <button id="checkBtn" class="btn btn-sm btn-outline-warning">확인</button>
                </div>

                <!-- 가입한 정보 있을 때 나타나는 div -->
                <!-- <div id="notify">
                    <p class="notifyGreen">가입된 이메일입니다</p>
                </div> -->

                <!-- 가입한 정보 없을 때 나타나는 div -->
                <!-- <div id="notify">
                    <p class="notifyRed">등록되지 않은 이메일입니다</p>
                    <a class="notifyOrange" href="<%= contextPath %>/joinForm.me">회원가입하기</a>
                    이메일로 인증코드 받기 버튼도 disabled 처리
                </div> -->
               
            </div>
            
            
            <div align="center">
                <button type="submit" class="btn btn-warning">이메일로 인증코드 받기</button>
            </div>

            <div align="center" class="btnBottom">
                <p id="bb_p1">회원가입 시 입력한 정보가 기억나지 않는다면?</p>
                <p id="bb_p2">고객센터 문의하기 2222-2222</p>
            </div>

        </div>

    </div>
</body>
</html>