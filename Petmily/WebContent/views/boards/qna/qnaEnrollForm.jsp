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
        margin: auto;
        margin-top: 50px;
        width: 600px;
        height: auto;
    }
    
    
    #qnaTitle {
        width: 600px;
        height: 40px;
        padding: 10px;
        border: 1px solid lightgray;
        border-radius: 5px;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    textarea {
        width: 600px;
        height: 500px;
        padding: 10px;
        border: 1px solid lightgray;
        border-radius: 7px;
        margin-top: 10px;
        margin-bottom: 20px;
    }

    label {
        margin: 5px;
    }

    #secretCheck {
        transform : scale(1.5);
        margin: 5px;
    }

    .btn {
        margin: 5px;
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>

    <body>
        <%@ include file="../../common/menubar.jsp" %>
        
        <div class="outer">
            <%@ include file="../notice/noticeSidebar.jsp" %>
            
            
            <div class="inner">
                
                <div class="qna-top">
    
                    <div>
                        <p id="title">QnA</p>
                        <span id="title_sm">1:1</span>
                    </div>
                    
                    <form id="enroll-form" action="<%= contextPath %>/insert.qna" method="post" enctype="multipart/form-data">
                    
	                    <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
	
	                    <div class="qnaEnroll" align="center">
	                        <p align="left">상품 / 배송 등 쇼핑 관련 문의는 <b style="color: seagreen;">쇼핑몰의 QnA</b>를 이용해주세요</p>
	                        
	                        <input type="hidden" name="memNo" value="<%= loginUser.getMemNo() %>">
	                        
	                        <input type="text" id="qnaTitle" name="qnaTitle" placeholder="제목">
	                        <textarea id="qnaContent" name="qnaContent" style="resize: none;" placeholder="내용"></textarea>
	                        
	                        <div style="margin-top: 20px;">
	                            <p style="margin: 0px -70px 30px 40px; float: left;">파일<br>첨부</p>
	                            <input type="file" name="upfile" style="margin-top: 8px;">
	                        </div>
	                        
	                        <div align="right" style="margin-top: 50px;">
	                            <label for="secretCheck"><input type="checkbox" id="secretCheck"> 비밀글</label>
	                            <!-- <button type="button" id="saveBtn" class="btn btn-sm btn-secondary">임시저장</button> -->
	                            <button type="submit" class="btn btn-sm btn-warning">올리기</button>
	                        </div>
	                    </div>
                    
                    </form>
                    

                </div>
            </div>
        </div>

        <div style="margin-top: 250px;">
            <%@ include file="../../common/footerbar.jsp" %>
        </div>
</body>
</html>