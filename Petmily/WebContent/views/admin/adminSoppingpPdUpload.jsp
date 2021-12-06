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
        .content input{
            display: flex;
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;

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

        /* 버튼 박스 */
        .btn-box{
            text-align: right;
        }
        
        /* 표 */
        table {
            text-align: left;
        }
        table tbody td{
            display: flex;
            margin-bottom: 20px;
        }
        table tbody td input{
         margin-right: 20px;
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
                    <div id="category">쇼핑몰</div>
                    <div id="d-category">
                        <div class="d-category">상품등록</div>
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
                    <h3 class="mt-2">> 관리자 쇼핑몰</h3>
                </div>
                <div class="content">
                    <p class="ct-tit pt-2 pb-3">상품 등록</p>
                    <table>
                        <tbody>
                            <tr>
                                <th width="130px">*카테고리</th>
                                <td>
                                    <select class="selectpicker show-tick p-2">
                                        <option>1차</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                    <select class="selectpicker show-tick p-2">
                                        <option>1차</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">* 상품명</th>
                                <td>
                                    <input class="form-control" type="text" placeholder="상품명을 입력하세요.">
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">상품 옵션</th>
                                <td>
                                    <input class="form-control" type="text" placeholder="옵션1">
                                    <div class="btn-box">
                                        <button onclick="plus();" class="btn btn-sm material-icons">add</button>
                                        <button onclick="minus();" class="btn btn-sm material-icons">remove</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">* 판매가</th>
                                <td>
                                    <input class="form-control" type="text" placeholder="판매가를 입력해주세요">
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">한줄평</th>
                                <td>
                                    <input class="form-control" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">* 기본이미지</th>
                                <td>
                                    <input class="form-control" type="text" placeholder="상품이미지를 등록하세요.">
                                    <button class="btn btn-sm btn-primary">파일선택</button>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">세부 이미지1</th>
                                <td>
                                    <input class="form-control" type="text">
                                    <button class="btn btn-sm btn-primary">파일선택</button>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">세부 이미지2</th>
                                <td>
                                    <input class="form-control" type="text">
                                    <button class="btn btn-sm btn-primary">파일선택</button>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">상품상세정보</th>
                                <td>
                                    <input class="form-control" type="text">
                                    <button class="btn btn-sm btn-primary">파일선택</button>
                                </td>
                            </tr>
                            <tr>
                                <th width="130px">* 수량</th>
                                <td>
                                    <input class="form-control" type="text" placeholder="수량을 입력해주세요">
                                </td>
                            </tr>
                        </tbody>    
                    </table>
                    <div style="width: 550px; text-align: center;">
                        <br><br>
                        <button class="btn btn-sm btn-warning mr-3">확인</button>
                        <button class="btn btn-sm btn-light">취소</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
    </html>
   