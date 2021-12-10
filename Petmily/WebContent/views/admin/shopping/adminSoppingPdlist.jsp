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
    .list-area .item{
        position: relative;
        margin-bottom: 30px;
    }
    .list-area .item p{
        margin: 0;
    }
    .list-area .item .name{
        font-size: 26px;
        font-weight: 700;
        padding-bottom: 5px;
    }
    /*  */
    .list-area .item .state{
        font-size:22px;
        font-weight: 700;
        padding-top: 4px;
        margin-right: 5px;
        color:orange;
        cursor: pointer;
    }
    .list-area .item .btn{
        vertical-align: -7px;
    }
    .list-area .item .price{
        position: absolute;
        right: 0;
        bottom: 0;
        font-size: 30px;
        font-weight: 700;
    }
    /* input style */
    .cancel-history input{
        display: inline-block;
        width: 150px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .property{
        font-size: 22px;
        font-weight: bold;
    }
    .info p {
        font-size: 18px;
    }
    /* 모달 팝업 */
    .modal .modal-footer{
            justify-content: center;
        }
        .modal .modal-header{
            border-bottom: 0;
        }
        .modal .modal-body{
            margin: 0 70px;
        }
        #madalTitle{
            text-align: center;
        }
        .modal-body .md-box{
            position: relative;
            margin-bottom: 25px;
        }
        .md-box p{
            font-size: 14px;
            color: #555;
            font-weight: 500;
            margin: 0;
        }
        .md-box input{
            font-size: 22px;
            padding: 5px 0;
            border:0;
            width: 230px;
        }
        .md-box .btn-box{
            position: absolute;
            bottom: 0;
            right: 0;
        }
        .md-box .btn-box button{
            background-color: #d4d4d4;
        }
        #reason{
            width: 300px;
            height: 200px;
        }

        /* 상태변경 모달창 */
        .modalMsg-area{
            font-weight: bolder;
            font-size: 17px;
            margin-top: 20px;
            height: 70px;
            text-align: center;
        }
        #statusChangebtn-area-area>*{
            color: white;
            font-weight: bolder;
            font-size: 15px;
            height: 35px;
            line-height: 5px;
            width: 130px;
            margin-top: -10px;
            float: left;
        }
        #changeCompletedclosebtn{
            background-color: orange;
            width: 100px;
            color: white;
            font-weight: bolder;
        }
    /* 사이드바 색 고정 */
    #spPdlist{
            background: rgb(247, 198, 4);
            color: white;
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
    
    <%@ include file="../../common/admin_menubar.jsp" %>
    <%@ include file="../../common/admin_shoppingSidebar.jsp" %>

    <!-- cont-wrap -->
    <div class="cont-wrap"><!-- 사후처리 내역 조회 부분 -->
        <div class="title-box mt-5 pb-2">
            <h3 class="mt-2">> 관리자 쇼핑몰</h3>
        </div>
        <div class="content cancel-history">
            <!-- 사후처리 내역 조회 검색 -->
            <div class="history-area ">
                <hr>
                <p class="ct-tit pt-2 pb-3">취소/환불/교환/반품 내역조회</p>
                <div class="inner ml-5">
                    <div class="hs-box d-flex mb-4">
                        <span class="tit text-danger mr-2">* 사후처리 기간</span>
                        <div class="input-box">
                            <input class="form-control mr-2" type="date" style="width: 155px;">
                            <span class="icon material-icons">
                                <!-- calendar_month -->
                            </span>
                        </div>
                        <span class="mr-2">~</span>
                        <div class="input-box">
                            <input class="form-control mr-2" type="date" style="width: 155px;">
                            <span class="icon material-icons">
                                <!-- calendar_month -->
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
                        <img class="mr-4" src="resources/img/sp_coshion.jpg" alt="" style="width: 100px;height: 100px;">
                        <div class="info">
                            <p class="name">강아지 마약 방석</p>
                            <p class="user text-dark">구매자:김빙근</p>
                            <a class="state float-left" data-toggle="modal" data-target="#statusChange">취소/환불 완료</a>
                        </div>
                        <p class="price flex-fill">40,000원</p>
                    </div>
                </div>
                <div class="list-box">
                    <p class="property text-dark mb-2">취소/환불</p>
                    <div class="item d-flex">
                        <img class="mr-4" src="resources/img/sp_wheel.jpg" alt="" style="width: 100px;height: 100px;">
                        <div class="info">
                            <p class="name">친칠라 쳇바퀴</p>
                            <p class="user text-dark">구매자:원남이</p>
                            <a class="state float-left" data-toggle="modal" data-target="#statusChange">취소/환불 처리중</a>
                        </div>
                        <p class="price flex-fill">20,000원</p>
                    </div>
                </div>
                <div class="list-box">
                    <p class="property text-dark mb-2">교환/반품</p>
                    <div class="item d-flex">
                        <img class="mr-4" src="resources/img/sp_churu.jpg" alt="" style="width: 100px;height: 100px;">
                        <div class="info">
                            <p class="name">새콤달콤 츄르</p>
                            <p class="user text-dark">구매자:김민지</p>
                            <a class="state float-left" data-toggle="modal" data-target="#statusChange">교환 처리중</a>
                            <button class="btn btn-sm btn-warning text-white" data-toggle="modal" data-target="#myModal">교환 사유</button>
                        </div>
                        <p class="price flex-fill">5,000원</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 상태변경 모달 -->
        <div class="modal fade" id="statusChange">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content" style="width: 500px;">
    
                    <!-- Modal body -->
                    <div class="modal-body" align="center">
                        <div class="modalMsg-area">
                                            다음으로 상태를 변경합니다
                        </div>
                        <div id="statusChangebtn-area">
                          <button type="button" class="btn btn-warning text-white" id="confirm-btn" data-dismiss="modal" data-toggle="modal" href="#changeCompleted">처리중</button>
                          <button type="button" class="btn btn-warning text-white" data-dismiss="modal" id="closebtn" data-toggle="modal" href="#changeCompleted">처리완료</button>
                        </div>              
                    </div>
            
                </div>
            </div>
        </div>
        <!-- 처리완료 Modal -->
        <div class="modal fade" id="changeCompleted">
            <div class="modal-dialog modal-sm modal-dialog-centered">
                <div class="modal-content">

                    <!-- Modal body -->
                    <div class="modal-body" align="center" style="text-align: center;">
                        <div class="modalMsg-area">
                            정상적으로 변경되었습니다.
                        </div>
                        <div>
                        <button type="button" class="btn btn-warning text-white" data-dismiss="modal" id="changeCompletedclosebtn">닫기</button>
                        </div>              
                    </div>
            
                </div>
            </div>
        </div>
        <!-- 교환사유 Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="md-box">
                        <h2 id="madalTitle">교환 사유</h2>
                    </div>
                    <div class="md-box">
                        <p>#불량 교환시 [불량교환] 기대 부탁드립니다.</p>
                        <textarea id="reason" type="text" style="resize: none;">사이즈가 개판이에요.ㅡㅡ l시켰는데 s왔어요 원래 장사 이렇게 하시나요?
                        </textarea> 
                    </div>
                    
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">확인</button>
                    <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>

        
    </div>
</div>
<!-- // cont-wrap -->
<br><br>
</body>
</html>