<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    /* cont-wrap */
    .cont-wrap{
		/* margin-left: 350px; */
        margin: 0 auto;
        width: 1200px;
	}
	.title-box h3{
		font-size: 24px;
		font-weight: bold;
		color: black;
	}
	.ct-tit{
		font-size: 26px;
		font-weight: bold;
	}
	/* 마이펫 등록 */
	.register-area{
		width: 650px;
		margin: 0 auto;
		text-align: center;
	}
	.register-area h3{
		margin-top: 50px;
		font-weight: bold;
	}
	.register-area .category{
		margin-top: 50px;
		display: flex;
		justify-content: center;
	}
	.category .item{
		flex: 1;
	}
	.category .item img{
		width: 100px;
		height: 100px;
		border-radius: 100px;
		object-fit: cover;
	}
	.category .radio-box{
		margin-top: 20px;
		font-size: 20px;
		font-weight: bold;
	}
	.profile{
		width: 650px;
		padding-top: 80px;
		padding-bottom: 80px;
		margin:0 auto;
	}
	.profile .img-box{
		position: relative;
		margin: 0 auto;
		width: 200px;
		height: 200px;
		border-radius: 200px;
		background-color: gray;
	}
	.profile .img-box img{
		width: 100%;
		height: 100%;
		border-radius: 200px;
		object-fit: cover;
	}
	.profile .img-box .icon{
		display: block;
		position: absolute;
		bottom: 0;
		right: 0;
		width: 50px;
		height: 50px;
		border: 1px solid #ddd;
		border-radius: 50px;
		background-color: white;
		font-size: 40px;/* 아이콘 크기조절ㅋㅋ */
		text-align: center;
		padding-top: 4px;
		color: orange;
		text-decoration: none;
		cursor: pointer;
	}
	#registerForm{
		width: 650px;
		margin: 0 auto;
	}
	#registerForm div > input[type=radio]{
		margin-right: 5px;
	}

	/* 훔쳐옴ㅋㅋ */
    .leftText {
        float: left;
        width: 160px;
        font-size: 20px;
        font-weight: bold;
        height: 40px;
        line-height: 40px;
    }

    input[type=text], input[type=date] {
		padding: 10px;
        height: 40px;
        width: 325px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    input[type=password] {
        height: 40px;
        width: 325px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    select {
        width: 150px;
        height: 40px;
        font-size: 14px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    .rightBtn {
        float: right;
        height: 40px;
        width: 140px;
        border: 1px solid lightgray;
        border-radius: 5px;
        cursor: pointer;
    }

    #registerForm>div {
        padding-bottom: 20px;
    }

    .star {
        color: orange;
    }

    .tip {
        margin-left: 0px;
        font-size: 12px;
    }

    #termsBox {
        margin-left: 160px;
        border-radius: 5px;
        border: 1px solid lightgray; 
        width: 325px;
        height: 180px;
    }

    .termsCheck {
        margin: 20px;
    }

    input[type=checkbox] {
        transform : scale(1.5);
    }

    .checkText {
        padding-left: 10px;
        font-size: 15px;
    }

    .smallSpan {
        font-size: 13px;
    }

    .joinButton {
        margin-left: 160px;
        margin-top: 40px;
        width: 325px;
        height: 50px;
        border-radius: 5px;
        border: none;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }

    .notify {
        font-size: 13px;
        color: mediumseagreen;
        font-weight: bold;
    }

    .notifyRed {
        font-size: 13px;
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>

    <div class="container" style="max-width:1600px;">
            
        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>마이펫 수정하기</h3>
            </div>
            <div class="content">
                <hr>
				<!-- 마이펫 등록 -->
				<div class="register-area">
					<h3>어떤 반려동물과 함께하시나요?</h3>
					<div class="category">
						<div class="item">
							<img src="resources/img/bomi.jpg" alt="">
							<div class="radio-box">
								<input type="radio" id="dog" name="dog-radio">
								<label for="dog">강아지</label>
							</div>
						</div>
						<div class="item">
							<img src="resources/img/bomi.jpg" alt="">
							<div class="radio-box">
								<input type="radio" id="cat" name="dog-radio">
								<label for="cat">고양이</label>
							</div>
						</div>
						<div class="item">
							<img src="resources/img/bomi.jpg" alt="">
							<div class="radio-box">
								<input type="radio" id="etc" name="dog-radio">
								<label for="etc">기타</label>
							</div>
						</div>
					</div>
				</div>
				<!-- 프로필 이미지 수정 부분 -->
				<div class="profile">
					<div class="img-box">
						<img src="resources/img/bomi.jpg" alt="보미사진">
						<a href="" class="material-icons icon">photo_camera</a>
					</div>
				</div>
				<!-- 견적사항 -->
				<form action="" id="registerForm" method="post">
                    <p class="text-right" style="width: 485px;"><span class="star">*</span>필수입력사항</p>
					<div>
						<label class="leftText" for="">종<span class="star">*</span></label>
						<input type="text" name="" placeholder="종" required>
                    </div>
                    <div>
						<label class="leftText" for="">이름<span class="star">*</span></label>
						<input type="text" name="" placeholder="이름" required>
                    </div>
					<div>
						<label class="leftText" for="">성별<span class="star">*</span></label>
						<input type="radio" id="m" name="gender-radio">
						<label class="mr-5" for="m">수컷</label>
						<input type="radio" id="f" name="gender-radio">
						<label for="f">암컷</label>
                    </div>
					<div>
						<label class="leftText" for="">나이<span class="star">*</span></label>
                        <div style="width: 325px;display: inline-block;"> 
                            <input type="radio" id="month" name="age-radio">
							<label class="mr-5" for="month">개월 수 입력</label>
							<input type="text" placeholder="개월 수" style="width: 125px;">
							<label for="">개월</label>
                        </div>
						<div>
                            <input type="radio" id="month"  name="age-radio">
							<label class="mr-4 mt-4" for="month">생년월일 입력</label>
							<input type="date" placeholder="생년월일" style="width: 150px;">
                        </div>
                    </div>
                    <div>
						<label class="leftText" for="address">주소<span class="star">*</span></label>
                        <div>
                            <input type="text" name="address" placeholder="우편번호">
                            <button type="button" class="rightBtn btn-sm btn-light">우편번호 찾기</button>
                        </div>
                        <div style="margin : 10px 160px">
                            <input type="text" name="address2" placeholder="주소">
                        </div>
                    </div>
					<button type="submit" class="joinButton btn-warning">마이펫 수정하기</button>
                </form>
            </div>
        </div>
    </div>
    <br><br>
</body>
</html>