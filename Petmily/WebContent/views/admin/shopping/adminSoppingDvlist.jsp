<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>adminSoppingPdUd</title>
    <style>
        /* 세부 카테고리 전체 스타일 */
        .dd-category{
            list-style-type: none;
            color: darkgray;
            font-weight: bolder;
            font-size: 13px;
            width: 60px;
            display: none;
            margin-bottom: 3px;
            cursor: pointer;
            margin-left: 15px;
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
        
        /* 셀렉트 박스 */
        .search-box{
            display: flex;
        }

        .selectpicker{
            width: 150px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        /* 검색 박스 */
        .search .form-control{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .search button{
            width: 50px;
            height: 50px;
            border: 1px solid #ddd;
            border-radius: 4px;
            line-height: 50px;
        }
        /* 버튼 박스 */
        .btn-box{
            display: flex;
            justify-content: flex-end;
        }
        /* 표 */
        table {
            text-align: center;
        }
        /* 페이징바 */
        .paging-area button{
            border:  0;
            background-color: transparent;
            height: 40px;
            width: 40px;
            border-radius: 5px;
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
        #memInfor{
            background: rgb(247, 198, 4);
            color: white;
        }
        /* 삭제모달창 */
        .modalMsg-area{
            font-weight: bolder;
            font-size: 17px;
            margin-top: 20px;
            height: 70px;
            text-align: center;
        }
        #deletebtn-area>*{
            color: white;
            font-weight: bolder;
            font-size: 15px;
            height: 35px;
            line-height: 5px;
            width: 70px;
            margin-top: -10px;
        }
        #confirm-btn{
            background-color: red;
            margin-right: 2px;
            line-height: 22px;
        }
        #closebtn{
            background-color: gray;
            margin-left: 2px;
        }
        #deleteCompletedclosebtn{
            background-color: orange;
            width: 100px;
            color: white;
            font-weight: bolder;
        }
        /* 발생, 발견일 스타일*/
        #missing-date-area>p{
        float: left;
        text-align: left;
        margin-right: 30px;
        }
        /* 사이드바 색 고정 */
        #spDvlist{
            background: rgb(247, 198, 4);
            color: white;
        }



    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

        <div class="container" style="max-width:1600px;">
            
            <!-- cont-wrap -->
            <div class="cont-wrap">
                <div class="title-box mt-1 pb-2">
                    <h3>> 관리자 쇼핑몰</h3>
                </div>
                <div class="content">
                    <hr>
                    <p class="ct-tit pb-3">주문/배송 조회</p>
                    
                    <!-- 회원 조회 -->
                    <div class="search-box pb-5">
                        <select class="selectpicker show-tick p-2">
                            <option>주문 번호</option>
                            <option>배송 중</option>
                            <option>배송 전</option>
                            <option>배송 완료</option>
                        </select>
                        <div class="search">
                            <form class="form-inline" action=" ">
                              <input class="form-control p-4" type="text" placeholder="내용을 입력해주세요." style="width: 350px;">
                              <button class="btn" type="submit">
                                <span class="material-icons">search</span>                                    
                              </button>
                            </form>
                        </div>
                    </div>
                    <div id="missing-date-area">
                        <div style="width: 160px;" class="d-flex">
                           <input class="form-control mr-2" type="date"> ~ <input class="form-control mr-2" type="date">
                        </div>
                     </div>
                     <br>
                    <!-- table -->
                    <div class="table">
                        
                        
                        <table style="width: 100%;">
                            <thead>
                                <tr>
                                    <th width="50px">No.</th>
                                    <th width="200px">주문번호</th>
                                    <th width="170px">고객명</th>
                                    <th width="200px">배송상태</th>
                                    <th width="350px">배송주소</th>
                                    <th width="170px">주문일자</th>
                                    <th width="200px">수량방법</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--1. 게시글 없을 경우-->
                                <tr style="display:none">
                                    <td colspan="6">조회된 게시글이 없습니다</td>
                                </tr>
                                <!--2. 게시글 있을 경우-->
                                <tr>
                                    <td>1</td>
                                    <td>A-13124954</td>
                                    <td>김혜선</td>
                                    <td>배송중</td>
                                    <td>서울시동작구사당동</td>
                                    <td>21.11.13</td>
                                    <td>경비실</td>
                                </tr>
                            </tbody>
                        </table>
                        <br><br><br><br><br>
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
            </div>
        </div>
        <br><br>
    </body>
    </html>
   