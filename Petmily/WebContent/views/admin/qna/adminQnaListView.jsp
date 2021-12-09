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
        height: 100%;
    }
    .outer>div{
        float:left;
    }


    /*사이드바 스타일*/
    .sidebar-area{
            float: left;
            width: 300px;
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


        /* 상단 회색바 */
        .top{
            width:70%;
            height:100px;
            margin:15px;
        }
        /* 카테고리 분류 포함 검색창 */
        .middle{
            width:70%;
            height:300px;
            padding-top:30px;
        }
        .middle div{
            float:left;
        }
        /* 버튼(등록,수정,삭제), 테이블, 페이징바 */
        .bottom{
            width:70%;
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 메뉴바 -->
	<%@ include file="../comon/menubar.jsp" %>


	<!-- 큰 틀 -->
	<div class="outer">
	
	    <!--  사이드바  -->
	    <div class="side">
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
	
	    <!-- 상단 회색바 (게시판 이름) -->
	    <div class="top">
	        <br>
	        <h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        <hr>
	        <h3>Q&A문의/상품문의 관리</h3>
	        <br>
	        
	    </div>
	
	    <!-- 카테고리 및 검색창 -->
	    <div class="middle">
	            <form>
	                <hr>   
	                <br><br>
	
	                <div class="dropdown">
	                        <button type="button" class="btn btn-light" disabled>* 답변</button>
	                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background:lightslategray">
	                        처리상태
	                        </button>
	                    <div class="dropdown-menu">
	                        <a class="dropdown-item" href="#">미답변</a>
	                        <a class="dropdown-item" href="#">처리완료</a>
	                    </div>
	                </div>
	
	                <div class="dropdown">
	                        <button type="button" class="btn btn-light" disabled>분류</button>
	                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background:lightslategray">
	                          문의유형
	                        </button>
	                    <div class="dropdown-menu">
	                          <a class="dropdown-item" href="#">Q&A문의</a>
	                          <a class="dropdown-item" href="#">상품문의</a>
	                    </div>
	                </div>
	
	                
	                <div class="selectzone">
	                    <button type="button" class="btn btn-light" disabled>검색어</button>                                                                                                                                                                                                                                                                                                            
	                    <input type="text" placeholder="검색어를 입력해주세요">
	                </div>
	                    
	                    <br><br><br><br><br>
	                    <button type="button" class="btn btn-warning" align="center">검색</button>
	                    <!-- 얘 오른쪽으로 바꿔야됨... -->
	                <hr>
	                <br><br>
	                
	                </form>
	    </div>
	    
	    <% if(loginUser != null && loginUser.getUserId().equals("admin")) { %>
	    <!-- 버튼(등록,수정,삭제), 테이블, 페이징바 -->
	    <div class="bottom">
	
	        <div class="rightbutton" align="right">
	            <a href="<%= contextPath %>/enrollFormAdmin.qna" class="btn btn-sm btn-warning">등록</a>
	            <a href="" class="btn btn-sm btn-warning">수정</a>
	            <a href="" class="btn btn-sm btn-danger">삭제</a>
	            <br><br>
	        </div>
	    
	
	        <div class="table table-bordered">
	            <table>
	                <thead>
	                    <tr>
	                        <th width="30"><input type="checkbox" name="" value=""></th>
	                        <th width="70">번호</th>
	                        <th width="150">접수일시</th>
	                        <th width="100">문의유형</th>
	                        <th width="450">문의제목</th>
	                        <th width="100">작성자</th>
	                        <th width="100">처리상태</th>
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
	                        <td>2021-12-04</td>
	                        <td>주문/결제</td>
	                        <td>번호 변경이 되지 않아요</td>
	                        <td>강동원</td>
	                        <td>미답변</td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	        <br>
	        
	        <% } %>
	
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
	
	<!-- 사이드바 -->
	<script>
	    $(function(){
	        $(".d-category").click(function(){
	            $(this).siblings(".d-category").css({background: "", color:"black"});
	            $(this).css({background: "rgb(247, 198, 4)", color:"white"});
	        })
	    })
	</script>
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