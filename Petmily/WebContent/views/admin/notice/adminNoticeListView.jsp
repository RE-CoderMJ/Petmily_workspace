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
        }
        .outer>div{
            float:left;
        }

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

        /* 맨 위 게시판이름 바 */
        .top{
            width:70%;
            height:70px;
        }
        /* 검색창, 버튼들(등록,수정,삭제) */
        .bottom{
            width:70%;
            height:150px;
            margin-top:5px;
        }
        /* 검색창 */
        .noticeselect{
            width:700px;
            height:300px;
        }

        .bottom>div{
            width:400px;
            height:150px;
            padding-top:15px;
        }
        /* 버튼들(등록,수정,삭제) */
        .buttons{
            width:70%;
            height:50px;
            /* float:right; */
            margin:0;          
        }

        /* 공지사항 테이블 */
        #noticetable{
            width:800px; 
        }
        /* 테이블 + 페이징바 */
        .table-paging{
            float:center;
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
    
    
  <!--  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<!-- 메뉴바 -->
    <%@ include file="../../common/admin_menubar.jsp" %>

    <!-- 큰 틀-->
    <div class="outer">

        <!--  사이드바  -->
        <div class="sidebar">
            <div class="sidebar-area">
                <ul>
                    <div id="category">고객센터</div>
                    <div id="d-category">
                        <div class="d-category">공지사항 관리</div>
        
                        <div class="d-category">FAQ 관리</div>
                        
                        <div class="d-category">Q&A문의/상품문의 관리</div>

                        <div class="d-category">리뷰 관리</div>
                    </div>
                </ul>
            </div>
        </div>

        <!-- 맨 위 게시판이름 -->
        <div class="top">
            <br>
            <h2 style="color:gray">&gt; 관리자 고객센터</h2>
            <hr>
            <h5>공지사항 관리</h5>
            <br>
        </div>

        <br><br><br><br><br>
        
        <!-- 검색창 -->
        <div class="bottom">
            <div class="noticeselect">
                <form>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="color:black">제목</span>
                    </div>
                        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">

                        <a href="" class="btn btn-sm btn-warning">검색</a>
                        
                    </div>
                </form>
                <br><br>
            </div>
        </div>
            
            <!-- 버튼들(등록,수정,삭제) -->
            
            <div class="buttons" align="right">
            
                <a href="<%= contextPath %>/enrollFormAdmin.no" class="btn btn-sm btn-warning">등록</a>
                <a href="" class="btn btn-sm btn-warning">수정</a>
                <a href="" class="btn btn-sm btn-danger">삭제</a>
                <br><br>
            </div>
        
		<!-- 테이블 + 페이징 바 -->
		<div class="table-paging">

        <!-- 테이블 -->
        <div class="table table-bordered" id="noticetable">
            <table>
                <thead>
                    <tr>
                        <th width="30"><input type="checkbox" name="" value=""></th>
                        <th width="120">번호</th>
                        <th width="550">제목</th>
                        <th width="150">작성자</th>
                        <th width="150">작성일</th>
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
                        <td>12</td>
                        <td>개인정보처리방침 안내</td>
                        <td>펫밀리</td>
                        <td>2021-12-04</td>
                    </tr>
                </tbody>
        	</table>
    	</div>
    	<% } %>
    <br><br><br>

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





    <!-- 사이드 바-->
    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
            })
        })
    </script>
    <!-- 페이징 바-->
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