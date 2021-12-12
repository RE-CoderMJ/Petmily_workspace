<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* cont-wrap */
    .cont-wrap{
            margin-left: 350px;
        }
        .title-box h3{
            font-size: 24px;
            font-weight: bold;
            color: rgb(196, 195, 195);
        }
        .ct-tit{
            font-size: 26px;
            font-weight: bold;
        }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>

    <div class="container" style="max-width:1600px;">
            
        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>> 관리자 쇼핑몰</h3>
            </div>
            <div class="content">
                <hr>
                <p class="ct-tit pb-3">주문/배송 조회</p>
            </div>
        </div>
    </div>
</body>
</html>