<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
    /* 큰 틀 */
    .outer{
        width:100%;
        height:100%;
        margin:auto;
    }
    .outer div{
       
        float:left;
    }

    /* 현재 게시판이름 */
    .top {
        width:70%;
    }
    /* 노란박스 (new) */
    .middle {
        width:800px;
        height:100px;
        background:rgb(247, 198, 4);
        padding-left:300px;
        line-height:90px;
        font-size:20px;
        font-weight:900;
        margin:20px;
    }
    .list-area{

        width:800px;
        margin:auto;
    }
    /* 썸네일 (아직 수정중 : 기본이미지 배치) */
    .thumbnail{
        border:1px solid gold;
        width:200px;
        display:inline-block;
        margin:30px;
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
</head>
<body>

	<!-- 메뉴바 -->
    <%@ include file="../../common/admin_menubar.jsp" %>
    
    <!-- 사이드바 (리뷰) -->
    <%@ include file="admin_petlogSidebar.jsp" %>

	    <!-- 큰 틀 -->
    <div class="outer">

        <!-- 현재 게시판이름 -->
        <div class="top">
            <br>
            <h2 style="color:gray">&gt; 관리자 Petlog</h2>
            <hr>
            <h5>피드 관리</h5>
        </div>

        <!-- 중간 노란박스 -->
        <div class="middle">
            <div>새로 추가된 피드</div>
            <div>102</div>
        </div>

        <!-- 리스트 -->
        <div class="list-area">

            <!-- 썸네일 -->
            <div class="thumbnail" align="center">
                    <img src="" alt="">
                    <img src="" class="rounded-circle" alt="Cinque Terre">
                <p>
                    <a href="">뽐뽀미</a>
                    <br>
                    <a href="">신고</a>
                    <a href="">수정</a>
                    <a href="">이동</a>
                </p>
            </div>

            <div class="thumbnail" align="center">
                    <img src="" alt="">
                    <img src="" class="rounded-circle" alt="Cinque Terre">
                <p>
                    <a href="">뽐뽀미</a>
                    <br>
                    <a href="">신고</a>
                    <a href="">수정</a>
                    <a href="">이동</a>
                </p>
            </div>

            <div class="thumbnail" align="center">
                    <img src="" alt="">
                    <img src="" class="rounded-circle" alt="Cinque Terre">
                <p>
                    <a href="">뽐뽀미</a>
                    <br>
                    <a href="">신고</a>
                    <a href="">수정</a>
                    <a href="">이동</a>
                </p>
            </div>
            


            <!-- 페이징 바 / 아직 수정중 : (중간 정렬 안먹히네)-->
            <div class="paging-area" align="center">
                <button> &lt; </button>
                <button>1</button>
                <button>2</button>
                <button>3</button>
                <button>4</button>
                <button>5</button>
                <button> &gt; </button>
            </div>
        </div>

    </div>

    <!-- 페이징바 -->
    <script>
        $(function(){
        $(".paging-area button").click(function(){
            $(this).siblings(".paging-area button").css({background: "", color:"black"});
            $(this).css({background: "rgb(247, 198, 4)", color:"black"});
            })
        })
    </script>

</body>
</html>