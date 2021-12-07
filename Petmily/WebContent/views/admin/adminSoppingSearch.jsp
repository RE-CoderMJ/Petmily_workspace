<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 셀렉트 박스 */
    .search-box{
        display: flex;
    }
    .selectpicker{
        width: 150px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
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
    /* 사후처리 내역 조회 */
    .cancel-history .inner{
        width: 1000px
    }
    .history-area .hs-box{
        align-items: center;
        width: 70%;
    }
    .history-area .hs-box .tit{
        width: 120px;
        text-align: left;
    }
    .history-area .hs-box .input-box{
        position: relative;
    }
    .history-area .hs-box .input-box .icon{
        position: absolute;
        top: 6px;
        right: 30px;
    }
    /* 전체 조회 된 목록 */
    
    /* input style */
    .cancel-history input{
        display: inline-block;
        width: 150px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    /* 페이징바 */
    .paging-area button{
        border:  0;
        background-color: transparent;
        height: 40px;
        width: 40px;
        border-radius: 5px;
    }
</style>
<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<!-- cont-wrap -->
<div class="cont-wrap"><!-- 사후처리 내역 조회 부분 -->
    <div class="title-box mt-5 pb-2">
        <h3 class="mt-2">> 관리자 쇼핑몰</h3>
    </div>
    <div class="content cancel-history">
        <!-- 사후처리 내역 조회 검색 -->
        <div class="history-area ">
            <hr>
            <p class="ct-tit pt-2 pb-3">사후처리 내역 조회</p>
            <div class="inner ml-5">
                <div class="hs-box d-flex mb-4">
                    <span class="tit text-danger mr-2">* 사후처리 기간</span>
                    <div class="input-box">
                        <input class="form-control mr-2" type="text" value="21.10.14">
                        <span class="icon material-icons">
                            calendar_month
                        </span>
                    </div>
                    <span class="mr-2">~</span>
                    <div class="input-box">
                        <input class="form-control mr-2" type="text" value="21.11.14">
                        <span class="icon material-icons">
                            calendar_month
                        </span>
                    </div>
                    <span class="tit ml-5">상품 상태</span>
                    <select class="selectpicker show-tick p-2">
                        <option>전체</option>
                        <option>취소/환불</option>
                        <option>교환/환불</option>
                    </select>
                </div>
                <div class="hs-box d-flex mb-4">
                    <span class="tit mr-2">고객명</span>
                    <input class="form-control mr-5" type="text" style="width: 120px;">
                    <span class="tit mr-2">고객ID</span>
                    <input class="form-control mr-2" type="text">
                </div>
                <div class="hs-box mb-4 text-center">
                    <button class="btn btn-warning text-white">검색 하기</button>
                </div>
            </div>
        </div>
        <!-- 전체 조회 된 목록 -->
        <div class="list-area">
            <hr>
            <p class="ct-tit pt-2 pb-3">전체 조회 된 목록</p>
            <div class="inner ml-5">
                <div class="list-box">
                    <p class="property text-dark mb-2">취소/환불</p>
                    <div class="item d-flex">
                        <img src="" alt="" style="width: 50px;height: 50px;">
                        <div class="info">
                            <p class="name">강아지 마약 방석</p>
                            <p class="user text-dark">구매자:김빙근</p>
                            <p class="state text-warning">취소/환불 완료</p>
                        </div>
                        <p class="price flex-fill text-right">40,000원</p>
                    </div>
                </div>
                <div class="list-box">
                    <p class="property text-dark mb-2">취소/환불</p>
                    <div class="item d-flex">
                        <img src="" alt="" style="width: 50px;height: 50px;">
                        <div class="info">
                            <p class="name">친칠라 쳇바퀴</p>
                            <p class="user text-dark">구매자:원남이</p>
                            <p class="state text-warning">즉시 취소</p>
                        </div>
                        <p class="price flex-fill text-right">20,000원</p>
                    </div>
                </div>
                <div class="list-box">
                    <p class="property text-dark mb-2">교환/반품</p>
                    <div class="item d-flex">
                        <img src="" alt="" style="width: 50px;height: 50px;">
                        <div class="info">
                            <p class="name">새콤달콤 츄르</p>
                            <p class="user text-dark">구매자:김민지</p>
                            <p class="state text-warning float-left">교환 처리중</p>
                            <button class="btn btn-sm btn-warning">교환 사유</button>
                        </div>
                        <p class="price flex-fill text-right">5,000원</p>
                    </div>
                </div>
                <!-- 페이징 바 -->
            <div class="paging-area" align="center">
                <button> &lt; </button>
                <button>1</button>
                <button>2</button>
                <button>3</button>
                <button>4</button>
                <button>5</button>
                <button> &gt; </button>
            </div>
            <script>
                $(function(){
                    $(".paging-area button").click(function(){
                        $(this).siblings(".paging-area button").css({background: "", color:"black"});
                        $(this).css({background: "rgb(247, 198, 4)", color:"black"});
                    })
                })
            </script>
            </div>
        </div>
        <!-- // 전체 조회 된 목록 -->
    </div>
</div>
<!-- // cont-wrap -->
</body>
</html>