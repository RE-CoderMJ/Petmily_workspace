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

/* 내용 입력 영역 스타일 */
#content{
	margin-top: 40px;
	text-align: left;
	height: 1000px;
	position: relative;
}
/* 분류 스타일 */
#category-text{
	font-size: 17px;
	font-weight: bold;
	margin-left: 150px;
	margin-right: 15px;
}
/* 제목 스타일 */
#title{
	width: 700px;
	margin-top: 20px;
	margin-left: 150px;
}
#title-required{
	position: absolute;
	top: 40px;
	left: 860px;
}
/* 내용 스타일 */
#texts{
	width: 700px;
	height: 500px;
	margin-top: 40px;
	margin-left: 150px;
	resize: none;
}
#texts-required{
	position: absolute;
	top: 110px;
	left: 860px;
}
/* 파일첨부 영역 스타일 */
#file-area{
	margin-left: 150px;
	margin-top: 30px;
}
#file-area>p{
	margin-right: 20px;
	display: block;
	float: left;
}
#file-area>textarea{
	width: 610px;
	resize: none;
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
			<div id="required-area" align="right">
				<span class="required">*</span>
				<span id="required">필수입력사항</span>
			</div>
		</div>
		<div id="content">
			<span id="category-text">분류</span>
			<select name="category" id="category">
				<option value="dog">강아지</option>
				<option value="cat">고양이</option>
				<option value="etc">기타</option>
			</select>
			<span class="required">*</span>
			
			<input type="text" name="title" id="title" placeholder="제목을 입력해 주세요">
			<span class="required" id="title-required">*</span>
			
			<textarea name="texts" id="texts">

			</textarea>
			<span class="required" id="texts-required">*</span>
			
			<div id="file-area">
				<p>파일<br>첨부</p>
				<textarea name="attatchment" id="attatchment">
					
				</textarea>
			</div>
			
			<div>
				<button>파일 첨부하기</button>
			</div>
			<div>
				<button>올리기</button>
			</div>
		</div>
		
	</div>

	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>