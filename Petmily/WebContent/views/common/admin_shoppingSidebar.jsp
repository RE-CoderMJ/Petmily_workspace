<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .d-category {
            color: black;
            font-weight: bolder;
            text-decoration: none;
        }
        #d-category{
            position: absolute;
            top:80px;
            left: 90px;
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
                <div id="category">쇼핑몰</div>
                <div id="d-category">
                    <div class="d-category" id="spErPd" onclick="location.href='<%= contextPath %>/spErPd.ad';">상품 등록</div>
    
                    <div class="d-category" id="spPdUd" onclick="location.href='<%= contextPath %>/spPdUd.ad';">상품 관리(수정,삭제)</div>
                    
                    <div class="d-category" id="spDvlist" onclick="location.href='<%= contextPath %>/spDvlist.ad';">주문/배송 조회</div>

                    <div class="d-category" id="spPdlist" onclick="location.href='<%= contextPath %>/spPdlist.ad';">취소/환불/교환/반품 조회</div>

                    <div class="d-category" id="spPmlist" onclick="location.href='<%= contextPath %>/spPmlist.ad';">결제 내역 조회</div>
                    
                </div>
            </ul>
        </div>
        
    </body>
    </html>