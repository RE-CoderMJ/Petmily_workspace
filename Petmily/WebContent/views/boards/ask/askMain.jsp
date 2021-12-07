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
     
	/* 궁금해요 메인 스타일 */
	.content-area{
		/* float: left; */
		width: 100%;
		height: 1600px;
	}
	.content-area .inner{
		width: 1400px;
	}
	.content-area > div{
		width: 85%;
	}

	/* 검색영역 스타일 */
	#search-area{
		height: 200px;
		background-color: rgb(235, 235, 235);
		padding: 25px;
	}
	#search-title1{
		font-size: 18px;
		font-weight: bolder;
		margin-bottom: 1px;
	}
	#search-title2{
		font-size: 13px;
		margin-bottom: 20px;
	}
	#search-area2>select{
		width: 80px;
		height: 30px;
		margin-bottom: 15px;
		margin-right: 5px;;
	}
	#search-area2>input{
		width: 250px; 
		height: 30px;
		border: none;
	}
	#search-keyword{font-size: 13px;}

	/* 중간영역 스타일 */
	#middle-bar>div{
		float: left; 
		width:592px;
		margin-top: 25px;
	}
	#orderBy, #write{
		height: 27px;
		line-height: 3px;
	}
	/* 공지사항 영역 스타일 */
	#notice{
		background-color: orange;
	}
	#notice-area>span{
		font-size: 12px;
		margin-right: 10px;
		font-weight: bold;
		cursor: pointer;
	}

	/* 게시글 영역 스타일 */
	.contents{
		cursor: pointer;
	}
	#content-area{
		margin-top: 80px;
	}
	#content-area>div{
		height: 130px;
		margin-bottom: 50px;
	}
	.contents>div{
		height: 130px;
		float: left;
	}
	/* 게시글 번호 들어갈 영역 */
	.number{
		width: 15%;
		text-align: center;
		line-height: 130px;
	}
	/* 사진 들어갈 영역 */
	.photo{
		width: 130px;
	}
	/* 제목, 내용, 작성날짜, 작성자, 댓글수, 조회수 */
	.texts{width:70%;}
	.texts>div{float: left;}
	.title{
		font-weight: bolder;
		font-size: 17px;
		text-align: left;
		width: 60%;
		height: 21%;
		margin-top: 7px;
	}
	.info{
		font-size: 13px;
		text-align: right;
		width: 40%;
		height: 21%;
		line-height: 29px;
		margin-top: 7px;
		margin-bottom: 10px;
	}
	.photo{
		border: 1px solid black;
		margin-right: 25px;
	}

	/* 페이징바 스타일 */
	#paging-bar{
		margin-top: 120px;
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
		<div class="inner">
			<div id="search-area">
				<div id="search-area1">
					<div id="search-title1">궁금해요! 고민이에요!</div>
					<div id="search-title2">PETMILY 가족들과 이야기를 나누어 보세요.</div>
				</div>
				<form action="" method="get" id="search-area2">
						<select name="category" id="search-condition1">
							<option value="entire">전체</option>
							<option value="dog">강아지</option>
							<option value="cat">고양이</option>
							<option value="etc">기타</option>
						</select>
						<select name="keyword-option" id="search-condition2">
							<option value="entire">전체</option>
							<option value="dog">제목+내용</option>
							<option value="etc">작성자</option>
						</select>
						<input type="search" name="keyword">
						<button type="submit" class="btn">버튼자리<img src="" alt=""></button>
					<div id="search-area3">
						<span id="search-keyword">검색 키워드 예시 : </span>
						<span class="badge badge-pill badge-light">사료</span>
						<span class="badge badge-pill badge-light">산책</span>
						<span class="badge badge-pill badge-light">훈련</span>
						<span class="badge badge-pill badge-light">장난감</span>
					</div>
				</form>
			</div>
			<div id="middle-bar">
				<div align="left">
					<select name="orderBy" id="orderBy">
						<option value="date">최신순</option>
						<option value="count">조회순</option>
						<option value="reply">댓글순</option>
					</select>
				</div>
				<div align="right">
					<button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.ask';">글쓰기</button>
				</div>
				<br><br><hr style="border: solid 1px rgb(179, 178, 178);">
			</div>
			<div id="notice-area" align="left">
				<span class="badge badge-pill" id="notice" onclick= "location.href = '<%= contextPath%>/no.ask';">공지사항</span>
				<span onclick= "location.href = '<%= contextPath%>/no.ask';">게시글 작성시 유의사항</span>
			</div>
			<div id="content-area">
				<div class="contents">
					<div class="number">1</div>
					<div class="photo"></div>
					<div class="texts">
						<div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
						<div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
						<div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
					</div>
				</div>
				<div class="contents">
					<div class="number">2</div>
					<div class="photo"></div>
					<div class="texts">
						<div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
						<div class="info">쪼꼬언니 &nbsp;&nbsp;2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
						<div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
					</div>
				</div>
				<div class="contents">
					<div class="number">3</div>
					<div class="photo"></div>
					<div class="texts">
						<div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
						<div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
						<div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
					</div>
				</div>
				<div class="contents">
					<div class="number">4</div>
					<div class="photo"></div>
					<div class="texts">
						<div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
						<div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
						<div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
					</div>
				</div>
				<div class="contents">
					<div class="number">5</div>
					<div class="photo"></div>
					<div class="texts">
						<div class="title">쪼꼬가 요새 밥을 잘 안먹어요.. 왜그럴까요?</div>
						<div class="info">쪼꼬언니&nbsp;&nbsp; 2021.11.10 &nbsp;&nbsp;&nbsp;댓글0 &nbsp;&nbsp;&nbsp;조회3</div>
						<div class="text">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			$(function(){
				$(".contents").click(function(){
					//const num = $(this).children().eq(0).text();
					
					// /jsp/detail.no?num=클릭한글번호
					location.href = '<%=contextPath%>/detail.ask';
				})
			})
		</script>
		<div id="paging-bar">
			페이징바가 들어갈 공간입니다.
		</div>
	</div>

	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>