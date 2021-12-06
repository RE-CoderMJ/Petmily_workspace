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
                    <p class="ct-tit pt-2 pb-3">회원정보 조회/수정/삭제</p>
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
                        <div class="btn-box">
                            <!-- btn-box -->
                            <div class="pb-5">
                                <button class="btn btn-sm btn-warning mr-2"  data-toggle="modal" data-target="#myModal">회원수정</button>
                            </div>
                            <!-- 회원수정 Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="md-box">
                                            <p>회원 ID</p>
                                            <input type="text" value="id">
                                        </div>
                                        <div class="md-box">
                                            <p>이름 / 성별</p>
                                            <input type="text" value="name / gender">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 이메일</p>
                                            <input type="text" value="email">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 번화번호</p>
                                            <input type="text" value="phone">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 포인트</p>
                                            <input id="point1" class="point" type="number" value="3000">
                                            
                                            <div class="btn-box">
                                                <button onclick="plus();" class="btn btn-sm material-icons">add</button>
                                                <button onclick="minus();" class="btn btn-sm material-icons">remove</button>
                                            </div>
                                        </div>
                                        <!-- 회원 포인트 +,- 구현 -->
                                        <script>
                                            function plus(){
                                                
                                                const p1 = document.getElementById("point1").value;

                                                const sum = Number(p1) + Number(10);

                                                document.getElementById("point1").value = sum;

                                            }
                                        </script>
                                        <script>
                                            function minus(){

                                                const m1 = document.getElementById("point1").value;

                                                const minus = Number(m1) - Number(10);

                                                document.getElementById("point1").value = minus;
                                            }
                                        </script>

                                    </div>
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-warning" data-dismiss="modal">회원수정</button>
                                        <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="pb-5">
                                <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#myModal2">회원삭제</button>
                            </div>
                            <!-- 회원삭제 모달 -->
                            <div class="modal" id="myModal2">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                
                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">정말로 해당 회원을 삭제 하시겠습니까?</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                
                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
                                            <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                                        </div>
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
                                    <th width="150px">회원 이름</th>
                                    <th width="500px">회원 이메일</th>
                                    <th width="300px">회원 전화번호</th>
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
                                    <td>name</td>
                                    <td>email</td>
                                    <td>phone</td>
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
   