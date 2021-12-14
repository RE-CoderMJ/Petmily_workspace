<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

    div {
        /* border: 1px solid blue; */
    }
    
    .inner {
        width: 1300px;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .faq {
        margin: auto;
        width: 80%;

    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 50px;
        margin-top: -15px;
        float: left;
    }

    #title_sm {
        position: relative;
        left: 15px;
        top: 15px;
        font-weight: bold;
        font-size: 18px;
    }

    .faqbtn {
        background-color: rgb(201, 199, 199);
        width: 80px;
        padding: 1px;
        font-weight: bold;
        font-size: 15px;
        float: right;
        border: none;
        border-radius: 5px;
    }

    #faqlistbtn {
        height: 30px;
        margin-top: 20px;
    }

    .detailTitle {
        font-size: 20px;
        font-weight: bold;
        padding: 20px 0px 0px;
    }

    #copybtn {
        height: 33px;
        margin-top: 7px;
    }

    .detailContent {
        padding: 30px;
        font-size: 18px;
    }


</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>
    <%@ include file="../notice/noticeSidebar.jsp" %>
    
    <div class="outer">
        
        
        <div class="inner">
            
            <div class="faq">
                
                <div>
                    <p id="title">FAQ</p>
                    <span id="title_sm">자주 찾는 질문</span>
                    <button type="button" id="faqlistbtn" class="faqbtn" onclick="location.href='<%= contextPath %>/main.faq'">목록</button>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
                
                <p class="detailTitle">[회원가입] 회원가입은 어떻게 하나요?</p>

                <div style="border-bottom: 2px solid lightgray;"></div>

                <button type="button" id="copybtn" class="faqbtn">주소 복사</button>

                <div class="detailContent">
                    오른쪽 상단에 [로그인] 옆 [회원가입] 버튼을 눌러주세요 <br>

                    사용하시는 이메일을 입력 후 인증을 거쳐야 합니다. <br>

                    메일함에 도착한 인증번호를 입력란에 입력 후 인증해주세요. <br>

                    (메일함에 인증번호메일이 오지 않을 경우 스팸메일함도 확인해주세요) <br>

                    개인정보 필수입력란을 입력 후 [회원가입 하기] 버튼을 누르면 완료됩니다 <br>

                    <br><br>

                    만일 웹사이트를 통해 회원가입이 되지 않을 경우 <br>

                    고객센터 (XXXX-XXXX, 평일10시~17시)를 통해 연락주시기 바랍니다 <br>

			        ＊ 원하시는 답변을 찾지 못하셨나요?  
                </div>

                <div style="border-bottom: 2px solid lightgray; margin-top: 20px;"></div>

            </div>
        </div>
    </div>
    
    <div style="margin-top: 300px;">
        <%@ include file="../../common/footerbar.jsp" %>
    </div>
</body>
</html>