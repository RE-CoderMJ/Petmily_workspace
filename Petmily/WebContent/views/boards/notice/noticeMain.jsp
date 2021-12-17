<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .outer {
        width: 1400px;
        margin: auto;
    }

    .inner {
        width: 800px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .notice {
        margin: auto;
    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 100px;
        margin-top: -15px;
    }

    .accordion { 
        margin-bottom: 20px;
    }

    .accordion-head {
        height: 50px;
        text-align: left;
        cursor: pointer;
        font-size: 20px;
        font-weight: bold;
    }

    .down-arrow {
        float: right;
        width: 20px;
        height: 20px;
    }

    .date {
        text-align: left;
        font-size: 13px;
        font-weight: normal;
    }

    .accordion-body {
        background-color: rgb(235, 235, 235);
        border-radius: 5px;
        margin-top: 5px;
        padding: 20px;
        display: none;
    }

    .accordion.show i.fa-chevron-down {
      transform: rotate(180deg);
    }

</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>
    
    <div class="outer">
        <%@ include file="noticeSidebar.jsp" %>
        
        
        <div class="inner">
            
            <div class="notice">

                <div id="title">
                    <p>Notice</p>
                </div>
        
                <div class="content">

                    <div class="accordion">
                        <div class="accordion-head">
                            [체험단모집] 반려동물 디저트 딸기케이크
                            <img src="resources/img/down-arrow.png" class="down-arrow">
                            <p class="date">20XX-XX-XX</p>
                        </div>
                        <p class="accordion-body">
                            
                           	딸기의 계절이 돌아왔습니다 <br>
        
                           	인간들만 먹을게 아니라 우리의 반려가족들도 함께 먹어야 합니다 <br>
                	            
                            반려동물도 배탈없이 안전하게 먹을 수 있는 딸기케이크를 체험해보세요 <br>
                            
                            <br>
        
                            <a href="">[체험단 신청하기]</a> <br>
        
                            체험단 당첨 자신은 없는데 돈이 남아돈다..! <a href="">[구매하기]</a>
                        </p>
                    </div>


                    <div class="accordion">
                        <div class="accordion-head">
                           	 개인정보처리방침 개정안내(20XX년 X월 X일)
                            <img src="resources/img/down-arrow.png" class="down-arrow">
                            <p class="date">20XX-XX-XX</p>
                        </div>
                        <p class="accordion-body">
                            
                            개인정보처리방침 개정안내입니다.
                        </p>
                    </div>

                    <div class="accordion">
                        <div class="accordion-head">
                           	 개인정보 처리 위탁 업체 추가의 건
                            <img src="resources/img/down-arrow.png" class="down-arrow">
                            <p class="date">20XX-XX-XX</p>
                        </div>
                        <p class="accordion-body">
                            
                            개인정보 처리 위탁했다.
                        </p>
                    </div>

                    <div class="accordion">
                        <div class="accordion-head">
                           	 '펫밀리' 홈페이지 오픈
                            <i class="fa fa-chevron-down"><img src="resources/img/down-arrow.png" class="down-arrow"></i>
                            <p class="date">20XX-XX-XX</p>
                        </div>
                        <p class="accordion-body">
                            
                             OPEN~!
                        </p>
                    </div>
                    

                </div>
            </div>
        </div>

    </div>

    
    <script>
        $(function(){
            $(".accordion-head").click(function(){  
                
                const $p = $(this).next(); 
                // var img = document.getElementsByClassName("down-arrow");

                if($p.css("display") == "none"){
                    
                    // $(this).siblings("p").slideUp();
                    
                    $p.slideDown();
                    // img.style.transform = 'rotate()';
                } else {
                    
                    $p.slideUp();
                    // img.style.transform = 'rotate(180deg)';
                }
                
            })
        })
        </script>


    <div style="margin-top: 400px;">
        <%@ include file="../../common/footerbar.jsp" %>
    </div>
</body>
</html>