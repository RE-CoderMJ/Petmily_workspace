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
     border: 1px solid black; 
}
     
.content-area{
	width: 1400px;
	height: 1000px;
	float:left;
	padding:200px;
	padding-top:35px
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
		<div id="top">
			<div id="list-btn" align="right">
				<button type="button" class="btn btn-secondary" id="list">목록</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
            <span>*</span>
            <span>필수입력사항</span>
		</div>
		<div id="content">
			
		</div>
		<div>

		</div>
		
	</div>

	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>