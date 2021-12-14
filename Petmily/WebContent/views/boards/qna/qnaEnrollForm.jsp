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
        /* border: 1px solid green; */
    }

	.inner {
        width: 1300px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .qna-top {
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

    .qnaEnroll {
        margin: 50px;
        background-color: yellow;
        width: 1000px;
        height: auto;
    }

    #secretCheck {
        width: 20px;
    }
</style>
</head>
<body>

    <body>
        <%@ include file="../../common/menubar.jsp" %>
        <%@ include file="../notice/noticeSidebar.jsp" %>
        
        <div class="outer">
            
            
            <div class="inner">
                
                <div class="qna-top">
    
                    <div>
                        <p id="title">QnA</p>
                        <span id="title_sm">1:1</span>
                    </div>
                    
                    <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>

                    <div class="qnaEnroll" align="center">
                        <p align="left">상품 / 배송 등 쇼핑 관련 문의는 <b style="color: seagreen;">쇼핑몰의 QnA</b>를 이용해주세요</p>
                        <div align="right">
                            <input type="checkBox" id="secretCheck"> 비밀글
                            <button type="button" id="saveBtn" class="btn btn-sm btn-secondary">임시저장</button>
                            <button type="submit" class="btn btn-sm btn-warning">올리기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>