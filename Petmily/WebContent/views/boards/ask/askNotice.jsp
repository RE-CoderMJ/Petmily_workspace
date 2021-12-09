<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

div, img, li, a{
     box-sizing: border-box;
     border: 1px soli black; 
}
     
.content-area{
	width: 1400px;
	height: auto;
	margin: auto;
	padding:200px;
	padding-top:35px;
}

/* 위쪽 부분 스타일 */
#list-btn{
	width: 997px;
}
#list{
	height: 27px;
	font-size: 14px;
	line-height: 2px;
}
#notice{
	background-color: orange;
	font-size: 17px;
}
#notice-title{
	font-size: 17px;
	font-weight: bolder;	
	margin-left: 14px;
}
#enroll-date{
	font-size: 17px;
	float: right;
}
#content{
	margin-top: 40px;
	text-align: left;
	height: 350px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
	
	<%@ include file="../../common/menubar.jsp" %>
	<%@ include file="askSidebar.jsp" %>

	<div class="content-area" align="center">
		<div id="info">
			<div id="list-btn" align="right">
				<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.ask';">목록</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
			<div align="left">
				<span class="badge badge-pill" id="notice">공지사항</span>
				<span id="notice-title">게시글 작성시 유의사항</span>
				<span id="enroll-date">2021-12-05</span>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
		</div>
		<div id="content">
			궁금해요 게시판은 반려동물과 함께하시면서 고민거리나 궁금한 점이 생겼을 때
			펫밀리 가족들과 함께 이야기를 나눌 수 있는 공간입니다.
			게시글 작성시 참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.
			비슷한 어려움을 겪는 유저를 위해 격려나 응원의 댓글 또는 도움이 되는 댓글을 작성해주세요.
			욕설, 비방, 광고성 댓글이나 게시물은 소중한 펫밀리 유저 여러분을 위해 삭제가 될 수 있음을 알려드리며,
			또한 궁금해요 게시판과 관련되지 않은 게시글은 삭제될 수 있습니다.
	
			감사합니다.
		</div>
		<div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
		</div>
		
	</div>

	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>