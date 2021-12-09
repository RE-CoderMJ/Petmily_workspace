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
}
.content-area{
	width: 1400px;
	height: auto;
	margin: auto;
	padding:200px;
	padding-top:35px
}

/* 위쪽 부분 스타일 */
/* 목록 버튼 */
#list-btn{
	width: 997px;
	margin-bottom: -10px;
}
#list{
	height: 27px;
	font-size: 14px;
	line-height: 2px;
}
/* 필수입력사항 */
.required{
	color: orange; 
	font-weight: bold;
}
#required{
	font-size: 13px;
}
#required-area{
	margin-top: -15px;
}
/* 전체 입력 영역 스타일 */
#content{
	text-align: left;
	height: 900px;
	position: relative;
}
/* 분류 스타일 */
#category-area{
	margin-top: 60px;
}
#category-area>div{
	width: 700px;
	height: 26px;
}
#category-area>div>div{
	float: left;
	margin-right: 20px;
	font-size: 17px;
	font-weight: bolder;
}
#required-category{
	margin-left: -570px;
}
/* 제목 스타일 */
#title{
	width: 700px;
	margin-top: 20px;
	margin-left: 150px;
}
#title-required{
	position: absolute;
	top: 20px;
	left: 860px;
}
/* 내용 스타일 */
#texts{
	width: 700px;
	height: 500px;
	margin-top: 30px;
	margin-left: 150px;
	resize: none;
}
#texts-required{
	position: absolute;
	top: 80px;
	left: 860px;
}
/* 파일첨부 영역 스타일 */
#file-area{
	margin-left: 150px;
	margin-top: 30px;
	position: relative;
}
#file-area>p{
	margin-right: 30px;
	float: left;
	font-weight: bolder;
}
#file-area>input{
	position: absolute;
	top: 8px;
}
/*
#file-area>textarea{
	width: 610px;
	resize: none;
}
*/
/* 올리기 버튼 영역 스타일 */
#btn-area{
	margin-top: 75px;
	width:850px;
}
#btn-area>button{
	background-color: orange;
	color: white;
	font-weight: bolder;
	font-size: 14px;
	height: 27px;
	line-height: 2px;
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
				<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.ask?page=1';">목록</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
			<div id="required-area" align="right">
				<span class="required">*</span>
				<span id="required">필수입력사항</span>
			</div>
		</div>
		<form action="" method="post" enctype="multipart/form-data">
			<div id="category-area">
				<div>
					<div>분류</div>
					<div>
						<select name="category" id="category" required>
							<option value="dog">강아지</option>
							<option value="cat">고양이</option>
							<option value="etc">기타</option>
						</select>
					</div>
					<span class="required" id="required-category">*</span>
				</div>
			</div>
			<div id="content">
				<div>
					<input type="text" name="title" id="title" placeholder="제목을 입력해 주세요" required>
					<span class="required" id="title-required">*</span>
				</div>
				<div>
					<textarea name="texts" id="texts" required>
		
					</textarea>
					<span class="required" id="texts-required">*</span>
				</div>
				
				<div id="file-area">
					<p>파일<br>첨부</p>
					<!--
						<textarea name="attatchment" id="attatchment">
							
						</textarea>
					-->
					<input type="file">
				</div>
				<div id="btn-area" align="right">
					<button class="btn">올리기</button>
				</div>
			</div>
		</form>
		
	</div>
	
	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>