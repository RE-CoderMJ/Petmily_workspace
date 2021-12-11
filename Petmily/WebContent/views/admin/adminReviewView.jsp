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
        margin:auto;
    }
    .outer div{
    	float:left;
    }
    
    .top{
    	width:600px;
    	height:70px;
    }
    .middle{
    	width:600px;
    	height:500px;
    }
    

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 메뉴바 -->
	<%@ include file="../common/admin_menubar.jsp" %>

	<!-- 사이드바 -->
	<%@ include file="../common/admin_reviewSidebar.jsp" %>

	<!-- 큰 틀 -->
	<div class="outer">


	
	    <!-- 상단바 -->
	    <div class="top">
	        <br>
	        <h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        <hr>
	        <h5>리뷰관리</h5>
	        <br>
	    </div>
	
	    <!-- 검색창 -->
	    <div class="middle" align="left">
	        <form>
	            <div class="input-group mb-3">
	            <div class="input-group-prepend">
	                <span class="input-group-text" style="color:black">상품명</span>
	            </div>
	                <input type="text" class="form-control" placeholder="검색어를 입력해주세요(키워드)">
	                <a href="" class="btn btn-sm btn-warning">검색</a>
	            </div>
	        </form>
	        <br><br>
	    </div>
		
	    <!-- 버튼들(등록, 삭제) -->
	    <div class="adminbuttons">
	        <div align="right">
	            <a href="" class="btn btn-sm btn-warning">답변 등록</a>
	            <a href="" class="btn btn-sm btn-danger">답변 삭제</a>
	            <br><br>
	        </div>
	    </div>
	
	    <!-- 조회 테이블 -->
	    <div class="table table-bordered" >
	        <table>
	            <thead>
	                <tr>
	                    <th width="50"><input type="checkbox" name="" value=""></th>
	                    <th width="10">번호</th>
	                    <th width="200">등록일</th>
	                    <th width="300">상품명</th>
	                    <th width="450">리뷰 내용</th>
	                    <th width="100">아이디</th>
	                    <th width="100">처리상태</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!--1. 게시글 없을 경우-->
	                <tr>
	                    <td colspan="7">조회된 게시글이 없습니다</td>
	                </tr>
	                <!--2. 게시글 있을 경우-->
	                <tr>
	                    <td>v</td>
	                    <td>12</td>
	                    <td>2021-12-04</td>
	                    <td>챠오츄르</td>
	                    <td>맛있대요</td>
	                    <td>sql</td>
	                    <td>미답변</td>
	                </tr>
	            </tbody>
	        </table>
	    </div>
	<br><br><br>
	

	</div>

	<!-- 페이징 바 -->

	
</body>
</html>