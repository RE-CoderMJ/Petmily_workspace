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
            margin-left: 350px;
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
        /* 검색 박스 */
        .search .form-control{
            width: 300px;
            border: 2px solid rgb(247, 198, 4);
            border-radius: 4px;
            margin-left: 10px;
        }
        .search button{
            width: 50px;
            height: 50px;
            border: 2px solid rgb(247, 198, 4);
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

	<div class="container" style="max-width:1600px;">

        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>내가 쓴 게시글 조회</h3>
            </div>
            <div class="content">
                <hr>
                <br><br>
                <!-- 회원 조회 -->
                <div class="search-box pb-5">
                    <select class="selectpicker show-tick p-2">
                        <option>전체</option>
                        <option>궁금해요</option>
                        <option>찾고 있어요</option>
                        <option>보호하고 있어요</option>
                        <option>살래요</option>
                        <option>팔래요</option>
                    </select>
                    <div class="search">
                        <form class="form-inline" action=" ">
                          <input class="form-control p-4" type="text" style="width: 950px;">
                          <button class="btn" type="submit">
                            <span class="material-icons">search</span>                                    
                          </button>
                        </form>
                    </div>
                </div>

                <!-- table -->
                    <table class="table" style="width: 1160px;">
                        <thead>
                            <tr class="table-secondary">
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