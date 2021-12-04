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
     /* 전체적 구조 */
    .header{height: 140px;line-height: 140px;}
    .nav-area{height: 40px;}

     /* header부분 전반적인 구조 */
    .header>div{height: 100%; float: left;}
    #left{width: 30%; position: relative;}
    #logo{width: 41%; position: relative;text-align: center;}
    #right{width: 29%; position: relative;}

    /* 로고 이미지 스타일 */
    #logo img{
        width: 350px;
        height: 70px;
    }

    /* 오른쪽 상단 전반적 구조 */
    #right > div{
        height:30px; 
        float: left; 
        margin-top: 70px;
        margin-right: 12px; 
    }
    /* 사용자 이름 뜨는 부분 */
    #userName{
        font-size: 14px; 
        width: 40%; 
        margin-left: 20px; 
        line-height: 40px;
        font-weight: bold;
    }
    /* 로그인 버튼 */
    #loginBtn{
        font-size: 13px;
        width:20%;
        line-height: 40px;
        margin-left:80px;
        font-weight:bold;
    }
    #loginBtn>a{text-decoration: none; color: black;}
    /* 로그아웃 버튼 */
    #logout, #register{
        font-size:13px; 
        width: 20%; 
        line-height: 40px;
        font-weight: bold;
    }
    #logout>a{text-decoration: none; color: black;}

    /* 회원가입 버튼 */
    #register >a{
        text-decoration: none; color: black;
    }

    #heart, #shoppingCart{
        line-height: 30px;
    }
    /* 찜버튼 */
    #heart img{width: 20px; height: 20px;}
    /* 장바구니버튼 */
    #shoppingCart img{width: 20px; height: 20px;}

    /* navigator 영역에 대한 세부 스타일 */
    .nav-area{background: rgb(247, 198, 4); margin-bottom: 70px;}
    .menu{
        display: table-cell;
        width: 200px;
        height: 40px;
    }
    .menu a{
        text-decoration: none;
        color: black;
        font-size: 15px;
        font-weight: bold;
        display: block;
        width: 100%;
        height: 100%;
        line-height: 40px;
        cursor: pointer;
    }

    .menu a:hover{background: white; text-decoration: none; color:black}
    

	/*사이드바 스타일*/
    .sidebar-area{
        float: left;
        width: 250px;
        height: 800px;
        position: relative;
    }
    /* 사이드바 큰 제목 스타일 */
    #category{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:90px;
    }
    /* 강아지, 고양이, 기타 카테고리 스타일*/
    .d-category{
        list-style-type: none;
        font-size: 16px;
        width: 130px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    #d-category{
        position: absolute;
        top:80px;
        left: 90px;
    }

	/* 궁금해요 메인 스타일 */
	.content-area{
		float: left;
		width: 1400px;
		height: 800px;
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
	#search-area2>input{width: 250px; height: 30px;}



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
	<%@ include file="ask_sidebar.jsp" %>

	<div class="content-area" align="center">

		<div id="search-area">
			<div id="search-area1">
				<div id="search-title1">궁금해요! 고민이에요!</div>
				<div id="search-title2">PETMILY 가족들과 이야기를 나누어 보세요.</div>
			</div>
			<form action="" id="search-area2">
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
					<button type="submit" class="btn"><img src="" alt=""></button>
				<div id="search-area3">
					<span>검색 키워드 예시 : </span>
					<span class="badge badge-pill badge-light">사료</span>
					<span class="badge badge-pill badge-light">산책</span>
					<span class="badge badge-pill badge-light">훈련</span>
					<span class="badge badge-pill badge-light">장난감</span>
				</div>
			</form>
		</div>
		<div id="middle-bar">

		</div>
		<div id="notice-area">

		</div>
		<div id="content-area">

		</div>

	</div>


</body>
</html>