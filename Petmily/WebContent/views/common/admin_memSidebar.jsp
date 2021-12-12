<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPathas = request.getContextPath();
 %>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>adminMemManager</title>
    <style>
      /*사이드바 스타일*/
      .sidebar-area{
            float: left;
            width: 350px;
            height: 800px;
            position: relative;
            position: fixed;
            /* margin-top: 70px; */
        }
        /* 사이드바 큰 제목 스타일 */
        #category{
            list-style-type: none;
            font-weight: bolder;
            font-size: 25px;
            position: absolute;
            /* left:90px; */
        }
        /* 사이드바 스타일*/
        .d-category{
            list-style-type: none;
            font-size: 16px;
            font-weight: bolder;
            cursor:pointer;
            margin-bottom: 5px;
        }
        .d-category {
            color: black;
            font-weight: bolder;
            text-decoration: none;
        }
        #d-category{
            position: absolute;
            top:80px;
            /* left: 90px; */
            font-weight: bolder;
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
        <!--  사이드바  -->
        <br>
        <div class="sidebar-area">
            <ul>
                <div id="category">회원관리</div>
                <div id="d-category">
                    <div class="d-category" id="memInfor" onclick="location.href='<%= contextPathas %>/memMg.ad';">회원정보 조회/수정/삭제</div>
    
                    <div class="d-category" id="memPoint" onclick="location.href='<%= contextPathas %>/memPoint.ad';">회원 포인트 관리</div>
                    
                    <div class="d-category" id="memWarning" onclick="location.href='<%= contextPathas %>/memWarning.ad';">블랙리스트 관리</div>
                    
                </div>
            </ul>
        </div>

    </body>
    </html>