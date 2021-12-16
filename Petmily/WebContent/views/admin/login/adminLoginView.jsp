<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPathal = request.getContextPath();
 %>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* 전체적 구조 */
        .header{width:100%;height:140px;text-align: center;line-height: 140px;}
        .nav-area{height: 10px;}
    
        /* header부분 전반적인 구조 */
        .header>div{height: 100%; }
        /* #left{width: 30%; position: relative;} */
        #logo{width: 140px;height: 140px;margin: 0 auto;}
        
        /* 발바닥 이미지 */
        #logo2{width: 80px;height: 140px;margin: 0 auto; margin-top: 100px;}
        #logo2 a img{width: 80px;}
        /* 관리자 로그인 텍스트 */
        #login_text{width: 100%;text-align: center; font-size: 33px; font-weight: bold; color: rgb(247, 198, 4); letter-spacing: -2px;}
        /* 상단 로고 이미지 스타일 */
        #logo a{width: 100%;}
        #logo a img{width: 140px;height: 140px;}
        /* navigator 영역에 대한 세부 스타일 */
        .nav-area{background: rgb(247, 198, 4);height: 60px;}
        .menu{
            display: table-cell;
            width: 20%;
            height: 60px;
        }
        .menu a{
            text-decoration: none;
            color: black;
            font-size: 15px;
            font-weight: bold;
            display: block;
            width: 100%;
            height: 100%;
            line-height: 40px;
            cursor: pointer;
        }
        .menu a:hover{background: white; text-decoration: none; color:black}

        /* 전체 로그인폼 */
        #login_form{
            width:100%;height:140px;text-align: center;
        }
        #login_input_id_pwd input{
            display: inline-block;
            width: 250px;
            padding:10px 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #c5c5c5;
        }
        #login_form_etc a{
            font-size: 18px;
            font-weight: bold;
        }
        #login_form_etc input{
            width: 20px;
            height: 20px;
            margin-right: 5px;
            vertical-align: -3px;    
        }
        /* 로그인 버튼 */
        #login_login_btn .btn{
            font-size: 15px;
            font-weight: bold !important;
            width: 250px;
            height: 50px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
                    <img src="resources/img/logo_top.png" alt="">
                </a>
            </div>  
        </div>
       <!-- 메뉴바 -->
        <div class="nav-area" align="center">
            <!-- <div class="menu"><a href=""></a></div>
            <div class="menu"><a href=""></a></div>
            <div class="menu"><a href=""></a></div>
            <div class="menu"><a href=""></a></div>
            <div class="menu"><a href=""></a></div>
            <div class="menu"><a href=""></a></div> -->
        </div>
    
        <form action="<%= contextPathal %>/admin.main" class="body">
            <!-- 발바닥 이미지 -->
            <div id="logo2">
                <a href="">
                    <img src="resources/img/foot_logo.png" alt="">
                </a>
            </div>
            <!-- 로그인 텍스트 -->
            <div id="login_text">
                <p>관리자 로그인</p>
            </div>
            <!-- 로그인 폼 -->
            <div id="login_form">
                <form action id="login_form_input">
                    <div id="login_input_id_pwd">
                        <input type="text" name="userId" placeholder="UserName" required>
                        <br>
                        <input type="password" name="userPwd" placeholder="****" required>
                    </div>
                </form><br>
                <!-- 로그인 상태 유지 -->
                <div id="login_form_etc">
                    <input type="checkbox">
                    <a href="" style="color: rgb(247, 198, 4);">로그인 상태 유지</a>
                </div><br>
                <!-- 로그인 버튼 -->
                <div id="login_login_btn">
                    <button type="submit" class="btn btn-warning">로그인</button>
                </div>
            </div>
        </form>
    
    </body>
    </html>