<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div, img, li, a{
    box-sizing: border-box;
    border: black 1px solid;
}
.content-area{
	width: 1400px;
	height: auto;
	margin: auto;
	padding:200px;
	padding-top:35px
}
/* 목록버튼 스타일 */
#list-btn{
	width: 997px;
	margin-bottom: -10px;
}
#list{
	height: 27px;
	font-size: 14px;
	line-height: 2px;
}
/* 사진 부분 스타일 */
#photo-area{
    width: 400px;
    height: 500px;
    margin-top: 60px;
    float: left;
}
#demo{
    width: 100%;
    height: 400px;
}
.carousel-inner img {
    width: 100%;
    height: 100%;
}

/* 입력부분 스타일 */
#input-area{
    width: 500px;
    height: 500px;
    margin-left: 495px;
    margin-top: 60px;
    background: rgb(235, 235, 235);
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
    <%@ include file="missingSidebar.jsp" %>
    
    <div class="content-area" align="center">
	    <div id="top">
			<div id="list-btn" align="right">
				<button type="button" class="btn btn-secondary" id="list">목록</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
		</div>

        <div id="photo-area">
            <div id="demo" class="carousel" data-ride="carousel">
              
                <!-- The slideshow -->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="" alt="">
                  </div>
                </div>
              
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                  <span class="carousel-control-next-icon"></span>
                </a>
              
            </div>
            <div>
                <span>사진<br>첨부</span>
                <input type="file">
            </div>
        </div>

        <form action="">
            <div id="input-area">
                <div id="select-ddcategory">
                    <span>구분</span>
                    <select name="d-category" id="select-dcategory">
                    <option value="">전체</option>
                    <option value="">찾고있어요</option>
                    <option value="">보호하고있어요</option>
                    </select>
                </div>
                <div id="category-select-area">
                    <span>대상</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category">전체
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category">강아지
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category">고양이
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category">기타
                    </label>
                    </div>
                </div>
                <div id="gender-select-area">
                    <span>성별</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender">전체
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender">수컷
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender">암컷
                    </label>
                    </div>
                </div>
                <div>
                    <span>이름</span>
                    <input type="text" name="mpName">
                </div>
                <div id="age-area">
                    <span>나이</span>
                    <input type="number" name="mpAgeFrom">
                    <span>세 ~</span>
                    <input type="number" name="mpAgeTo" id="mpAgeTo">
                    <span>세</span>
                </div>
                <div id="missing-place-area">
                    <p>발생,<br>발견장소</p>
                    <input type="text" name="mpPlace">
                    <div>
                    ex) 서울시 용산구 갈월동 놀이터 앞
                    <br>상세주소로 검색이 가능합니다.
                    </div>
                </div>
                <div id="feature-area">
                    <span>신체특징</span>
                    <input type="text">
                    <div>
                    ex)'시츄', '파란색 눈', '초록색 줄무늬 옷'
                    <br>키워드로 검색이 가능합니다.
                    </div>
                </div>
            </div>    
            <div><button>올리기</button></div>
        </form>
	</div>
</body>
</html>