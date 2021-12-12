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
        width:1100px;
        height:800px;
    }
    .outer>div{
        float:left;
    }

    /* 상단 회색바 */
    .top{
        width:700px;
    }
    /* 3개 게시판별 조회 */
    .middle{
        width:700px;
        height:120px;
    }
    .middle div{
        width:150px;
        float:left;
        text-align:center;
        line-height:35px;
        font-weight:900;
        font-size:15px;
    }
    .middle>div{
        margin:10px;
        background-color: rgb(247, 198, 4);
    }
  
    /* 버튼(등록,수정,삭제), 테이블, 페이징바 */
    .bottom{
        width:700px;
        float:center;
        padding-top:20px;
    }
    .bottom table tr{
        text-align:center;
    }
    .adminselect{
        text-align:center;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 메뉴바 -->
    <%@ include file="../../common/admin_menubar.jsp" %>
    
    <!-- 사이드바 -->
    <%@ include file="../../common/admin_boardsmainSidebar.jsp" %>

	<!-- 큰 틀 -->
    <div class="outer">

        <!-- 상단바 -->
        <div class="top">
            <br>
            <h2 style="color:gray">&gt; 관리자 게시판 관리</h2>
            <hr>
            <h5>전체 게시글 조회</h5>
        </div>

        <!-- 게시판별 알림박스 -->
        <div class="middle">
            <div>
                <div>궁금해요</div>
                <div>157</div>
            </div>
            <div>
                <div>찾고있어요</div>
                <div>23</div>
            </div>
            <div>
                <div>중고거래</div>
                <div>102</div>
            </div>
        </div>

        <!-- 테이블, 검색창, 페이징바 -->
        <div class="bottom">

			<!-- 오른쪽 버튼 -->
            <div class="adminbutton" align="right">
                <a href="" class="btn btn-sm btn-danger">삭제</a>
                <br><br>
            </div>
			
			<!-- 조회 테이블 -->
            <div class="table table-bordered">
                <table>
                    <thead>
                        <tr>
                            <th width="50"><input type="checkbox" name="" value=""></th>
                            <th width="100">번호</th>
                            <th width="100">아이디</th>
                            <th width="200">게시판 제목</th>
                            <th width="150">동물 분류</th>
                            <th width="400">글 제목</th>
                            <th width="100">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--1. 게시글 없을 경우-->
                        <tr>
                            <td colspan="6">조회된 게시글이 없습니다</td>
                        </tr>
                        <!--2. 게시글 있을 경우-->
                        <tr>
                            <td>v</td>
                            <td>1</td>
                            <td>bbomi</td>
                            <td>찾고있어요</td>
                            <td>강아지</td>
                            <td>우리집 코코를 찾아주세요</td>
                            <td>21.11.15</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br><br>

			<!-- 하단 검색창 -->
            <div class="adminselect">
                <select>
                    <option>궁금해요</option>
                    <option>중고거래</option>
                    <option>찾고있어요</option>
                </select>
                <input type="text">
                <button type="button" class="btn btn-light">검색</button>
            </div>
            

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