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

    .outer {
        width: 1600px;
        margin: auto;
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
    
    <div class="outer">
 	<!-- 사이드바  -->
     <%@ include file="shoppingsidebar.jsp"%>
        
        <div class="inner">
            
            <div class="faq">
                
                <div>
                    <p id="title">상품 문의</p>
                    <span id="title_sm">Q&A</span>
                    <button type="button" id="faqlistbtn" class="faqbtn" onclick="location.href='<%= contextPath %>/shop.qna'">목록</button>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
                
                <p class="detailTitle">재입고는 언제 되는 건가요?</p>

                <div style="border-bottom: 2px solid lightgray;"></div>

 

                <div class="detailContent">
                   사료 다 떨어져가서 다시 주문하려고 하는데 <br>

                    품절 떠서 구매를 할수가 없네여 ㅠㅠ <br>

                    <br>

                   재입고 언제 되나요? <br>

                    우리 애기가 여기 사료를 제일 잘 먹어서요~ <br>

                    <br>

                    최대한 빨리 재입고 부탁드려요 <br>

                    
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