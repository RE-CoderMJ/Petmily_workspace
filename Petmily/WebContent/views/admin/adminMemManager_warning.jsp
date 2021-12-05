<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>adminMemManager</title>
    <style>
        /* 전체적 구조 */
        .header{width:100%;height:140px;text-align: center;line-height: 140px;}
        .nav-area{height: 10px;width: 100%;}
    
        /* header부분 전반적인 구조 */
        .header>div{height: 100%; }
        #logo{width: 41%; position: relative; margin: 0 auto;}

        /* navigator 영역에 대한 세부 스타일 */
        .nav-area{
            position: relative;
            background: rgb(247, 198, 4);
            height: 60px;
            margin: 0 auto;
        }
        .nav-area .menu-box{
            width: 1200px;
        }
        .nav-area .right-box{
            position: absolute;
            right: 0;
            top: 0;
            width: 200px;
            height: 60px;
            line-height: 60px;
        }
        .nav-area .right-box a{
            display: block;
            color:black;
            font-size: 16px;
            font-weight: bold;
        }
        .menu{
            display: table-cell;
            width: 160px;
            height: 60px;
        }
        .menu a{
            text-decoration: none;
            color: black;
            font-size: 20px;
            font-weight: bold;
            display: block;
            width: 90%;
            height: 100%;
            line-height: 60px;
            cursor: pointer;
        }
        .menu a:hover{background: white; text-decoration: none; color:black}
        
        /*사이드바 스타일*/
        .sidebar-area{
            float: left;
            width: 350px;
            height: 800px;
            position: relative;
            /* margin-top: 70px; */
        }
        /* 사이드바 큰 제목 스타일 */
        #category{
            list-style-type: none;
            font-weight: bolder;
            font-size: 25px;
            position: absolute;
            left:90px;
        }
        /* 사이드바 스타일*/
        .d-category{
            list-style-type: none;
            font-size: 16px;
            font-weight: bolder;
            cursor:pointer;
            margin-bottom: 5px;
        }
        #d-category{
            position: absolute;
            top:80px;
            left: 90px;
            font-weight: bolder;
        }
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
        .title-box{
            border-bottom: 2px solid rgb(196, 195, 195);
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
            text-align: right;
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
        .modal-title{
            border-bottom: 0;
            text-align: center;
        }
        .md-box p{
            font-size: 14px;
            color: #555;
            font-weight: 500;
            margin: 0;
            text-align: center;
        }
        .md-box input{
            font-size: 22px;
            padding: 5px 0;
            border:0;
            width: 230px;
            text-align: center;
        }
        .md-box .btn-box{
            position: absolute;
            bottom: 0;
            right: 0;
        }
        .md-box .btn-box button{
            background-color: #d4d4d4;
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
        <!-- 상단 로고 -->
        <div class="header">
            <div id="logo">
                <a href="">
                    <img src="../../resources/img/logo_side.png" alt="">
                </a>
            </div>  
        </div>
       <!-- 메뉴바 -->
        <div class="nav-area" align="center">
            <div class="menu-box">
                <div class="menu"><a href="">회원관리</a></div> 
                <div class="menu"><a href="">쇼핑몰</a></div>
                <div class="menu"><a href="">게시판관리</a></div>
                <div class="menu"><a href="">Petlog</a></div>
                <div class="menu"><a href="">고객센터</a></div>
                <div class="menu"><a href="">신고관리</a></div>
            </div>
            <div class="right-box"> 
                <a href="">로그아웃</a>
            </div>
        </div>
        <div class="container" style="max-width:1600px;">
            <!--  사이드바  -->
            <div class="sidebar-area">
                <ul>
                    <div id="category">회원관리</div>
                    <div id="d-category">
                        <div class="d-category">회원정보 조회/수정/삭제</div>
        
                        <div class="d-category">회원 포인트 관리</div>
                        
                        <div class="d-category">블랙리스트 관리</div>
                        
                    </div>
                </ul>
            </div>
        
            <script>
                $(function(){
                    $(".d-category").click(function(){
                        $(this).siblings(".d-category").css({background: "", color:"black"});
                        $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                    })
                })
            </script>
    
            <!-- cont-wrap -->
            <div class="cont-wrap">
                <div class="title-box mt-5 pb-2">
                    <h3 class="mt-2">> 관리자 회원관리</h3>
                </div>
                <div class="content">
                    <p class="ct-tit pt-2 pb-3">블랙리스트 관리</p>
                    <!-- 회원 조회 -->
                    <div class="search-box pb-5">
                        <select class="selectpicker show-tick p-2">
                            <option>회원 아이디</option>
                            <option>회원 이름</option>
                            <option>회원 이메일</option>
                        </select>
                        <div class="search">
                            <form class="form-inline" action=" ">
                              <input class="form-control p-4" type="text" placeholder="조회할 회원을 입력해주세요." style="width: 350px;">
                              <button class="btn" type="submit">
                                <span class="material-icons">search</span>                                    
                              </button>
                            </form>
                        </div>
                    </div>

                    <!-- table -->
                    <div class="table">
                        <!-- btn-box -->
                        <div class="btn-box pb-5" style="width: 100%;">
                            <button class="btn btn-sm btn-danger mr-2"  data-toggle="modal" data-target="#myModal">계정 삭제</button>
                        </div>
                        <!-- 포인트관리 Modal -->
                        <div class="modal" id="myModal">
                            <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">해당 계정을 삭제 합니다.</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
                                    <button type="button" class="btn btn-light" data-dismiss="modal">아니오</button>
                                </div>
                            </div>
                        </div>
                        </div>
                        <table style="width: 100%;">
                            <thead>
                                <tr>
                                    <th width="30px"><input type="checkbox" name="" value=""></th>
                                    <th width="50px">No.</th>
                                    <th width="150px">회원 ID</th>
                                    <th width="120px">누적신고횟수</th>
                                    <th width="200px">일자</th>
                                    <th width="450px">재재 내용</th>
                                    <th width="100px">회원상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--1. 게시글 없을 경우-->
                                <tr style="display:none">
                                    <td colspan="6">조회된 게시글이 없습니다</td>
                                </tr>
                                <!--2. 게시글 있을 경우-->
                                <tr>
                                    <td><input type="checkbox" name="" value=""></td>
                                    <td>1</td>
                                    <td>id</td>
                                    <td>3회</td>
                                    <td>date</td>
                                    <td>content</td>
                                    <td>경고3회</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br><br><br><br>
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

    </body>
    </html>
   