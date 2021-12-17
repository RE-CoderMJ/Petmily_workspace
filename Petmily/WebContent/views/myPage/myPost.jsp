<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* cont-wrap */
        .cont-wrap{
            /* margin-left: 350px; */
            margin: 0 auto;
            width: 1000px;
        }
        .title-box h3{
            font-size: 24px;
            font-weight: bold;
            color: black
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
        /* 검색영역 스타일 */
        .search-area{
            width: 900px;
        }
        .search-area>input{
            width: 845px;
            height: 39px;
            border: rgb(247, 198, 4) 2px solid;
            padding-right: 50px;
            padding-left: 5px;
        }
        /* 검색버튼 */
        #search-btn{
        background-image: url("resources/img/searchImg.png");
        background-size: cover;
        width: 30px;
        height: 30px;
        margin-left: -45px;
        }

        /* 표 */
        table {
            text-align: center;
        }

        table td {
            cursor: pointer;
        }

        /* 페이징바 */
        .paging-area button{
            border:  0;
            background-color: transparent;
            height: 40px;
            width: 40px;
            border-radius: 5px;
        }
        /* 사이드바 색 고정 */
        #mypost{
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
    <%@ include file="../common/menubar.jsp" %>

	<div class="container" style="max-width:1700px;">
    
        <%@ include file="../shop\mypage/mypageSidebar.jsp" %>

        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>내가 쓴 게시글 조회</h3>
            </div>
            <div class="content">
                <hr>
                <br><br>
                <!-- 글 조회 -->
                <div class="search-box pb-5">
                    <select class="selectpicker show-tick p-2">
                        <option>전체</option>
                        <option>궁금해요</option>
                        <option>찾고 있어요</option>
                        <option>보호하고 있어요</option>
                        <option>살래요</option>
                        <option>팔래요</option>
                    </select>
					<div class="search-area">
                        <input type="text" placeholder="검색어를 입력하세요.">
	            		<button class="btn" id="search-btn"></button>
                    </div>
                </div>

        
                    <table class="table table-hover" style="width: 1000px;">
                        <thead>
                            <tr style="background-color: lightgray;">
                                <th width="50px">No.</th>
                                <th width="150px">분류</th>
                                <th width="450px">제목</th>
                                <th width="200px">작성자</th>
                                <th width="150px">작성일</th>
                                <th width="100px">조회</th>
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
                                <td>살래요</td>
                                <td>가연이팝니다 쓸모없어요</td>
                                <td>김혜선</td>
                                <td>1995-07-19</td>
                                <td>719</td>
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

        <div style="margin-top: 200px;">
            
            <%@ include file="../common/footerbar.jsp" %>
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
    <br><br>
</body>
</html>