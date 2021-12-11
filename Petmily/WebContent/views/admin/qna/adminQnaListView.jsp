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
        .table-bordered{
        	margin:none;
        }
        /* 버튼(등록,수정,삭제), 테이블, 페이징바 */
        .bottom{
            width:70%;
            float:center;

        }
        .dropdown{
            padding-right:30px;
        }
        .allselect{
        	width:100%;
        	
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

	<!--  사이드바  -->
	<%@ include file="admin_qnaSidebar.jsp" %>

	<!-- 큰 틀 -->
	<div class="outer">

	
	    <!-- 상단 회색바 (게시판 이름) -->
	    <div class="top">
	        <br>
	        <h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        <hr>
	        <h5>Q&A문의/상품문의 관리</h5>
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
	                    <div class="allselect" align="center">
	                    <button type="button" class="btn btn-warning" >검색</button>
	                    
	                <hr>
	                </div>
	                <br><br><br><br><br>
	                
	                </form>
	    </div>
	    
	    
	    <!-- 버튼(등록,수정,삭제), 테이블, 페이징바 -->
	    <div class="bottom">
	
	        <div class="rightbutton" align="right">
	            <a href="" class="btn btn-sm btn-warning">등록</a>
	            <a href="" class="btn btn-sm btn-warning">수정</a>
	            <a href="" class="btn btn-sm btn-danger">삭제</a>
	            <br><br>
	        </div>
	    
	
			<div style="width:100%">
	            <table class="table table-bordered" style="margin:none;">
	                <thead>
	                    <tr align="center">
	                        <th width="50"><input type="checkbox" name="" value=""></th>
	                        <th width="100">번호</th>
	                        <th width="150">등록일</th>
	                        <th width="100">문의유형</th>
	                        <th width="500">문의제목</th>
	                        <th width="100">작성자</th>
	                        <th width="100">처리상태</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <!--1. 게시글 없을 경우-->
	                    <tr align="center">
	                        <td colspan="7">조회된 게시글이 없습니다</td>
	                    </tr>
	                    <!--2. 게시글 있을 경우-->
	                    <tr align="center">
	                        <td>v</td>
	                        <td>12</td>
	                        <td>2021-12-04</td>
	                        <td>Q&A</td>
	                        <td>번호 변경이 되지 않아요</td>
	                        <td>강동원</td>
	                        <td>미답변</td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	        </div>
	        <br>
	        
	        
	
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