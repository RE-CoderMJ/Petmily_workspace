<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>\
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    /* cont-wrap */
    .cont-wrap{
        margin: 0 auto;
        width: 1200px;
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

    /* 마이펫 관리 */
    .mypet-area{
        /* background-color: burlywood; */
        margin-left: 30px;
        width: 100%;
    }
    .mypet-area .pet-box{
        position: relative;
        width: 46%;
        min-width: 350px;/*요거 넣음 화면 줄여도 350이하로 안 줄어들어.*/
        height: auto;
        background-color: lightyellow;
        float: left;
        margin-right: 20px;
        padding: 15px;
        text-align: center;
    }
    .pet-box .add{
        position: absolute;
        top: 15px;
        right: 15px;
        color: gray;
        font-size: 45px;
        text-decoration: none;
    }
    .pet-box img{
        margin-top: 40px;
        width: 250px;/* 가로세로 크기도 너가 다시 조정하면됨 ㅋㅋ*/
        height: 250px;
        border-radius: 250px;
        margin-bottom: 20px;
        background-color: white;/*요건 이미지넣음 지워도돼 ㅋㅋ*/  
    }
    .pet-box p{
        margin-bottom: 20px;
        font-size: 20px;
        font-weight: 500;
    }
    .pet-box .name{
        font-size: 26px;
        font-weight: bold;
    }
    .pet-box .age{
        font-size: 26px;
        font-weight: bold;
    }
    .pet-box .date i{
        vertical-align: -4px;
    }
    /* 마이펫 등록하기 박스 */
    .mypet-area .pet-add{
        background-color: white;
    }
    .pet-add a{
        display: block;
        font-size: 70px;
        color: gray;
        margin-bottom: 20px;
        text-decoration: none;
    }
    /* 사이드바 색 고정 */
    #mypetinfor{
            background: rgb(247, 198, 4);
            color: white;
        }


</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>

    <div class="container" style="max-width:1600px;">

        <%@ include file="mpSidebar.jsp" %>
        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>펫적사항</h3>
            </div>
            <div class="content">
                <hr>
                <p class="ct-tit pb-3">마이펫 관리</p>
                <!-- 마이펫 관리 -->
                <div class="mypet-area">
                    <div class="pet-box">
                        <a href="" class="material-icons add">add_circle_outline</a>
                        <img src="" alt="">
                        <div class="info">
                            <p class="name">보미</p>
                            <p class="age">푸들/암컷/8살</p>
                            <p class="date">
                                <i class="material-icons">cake</i> 
                                2021.07.03
                            </p>
                            <p class="address">서울시 강남구 청담동<br>삼광빌라 102호</p>
                        </div>
                    </div>
                    <div class="pet-box pet-add"><!-- 펫등록 박스는 class="pet-add" 추가 -->
                        <p class="txt">마이펫 등록하고 펫로그를 이용해보세요</p>
                        <a href="" class="material-icons">add</a>
                        <button class="btn btn-warning">마이펫 등록하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br>
</body>
</html>