<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/missing/missingEnrollUpdateForm.css" rel="stylesheet">

<%@ include file="../../common/links.jsp" %>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
    <%@ include file="missingSidebar.jsp" %>
    
    <div class="content-area" align="center">
	    <div id="top">
			<div id="list-btn" align="right">
				<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.missing?page=1'">목록</button>
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
            <div id="file-upload-area">
                <p>사진<br>첨부</p>
                <input type="file">
            </div>
        </div>

        <!-- 찾고있어요 작성폼 -->
        <form action="">
            <div id="input-area">
                <div id="select-ddcategory">
                    <span>구분</span>
                    <select name="d-category" id="select-dcategory">
                    <option value="missing">찾고있어요</option>
                    <option value="found">보호하고있어요</option>
                    </select>
                </div>
                <div id="category-select-area">
                    <span>대상</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category" checked>강아지
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
                        <input type="radio" class="form-check-input" name="gender" checked>암컷
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender">수컷
                    </label>
                    </div>
                </div>
                <div id="name-area">
                    <span>이름</span>
                    <input type="text" name="mpName" required>
                </div>
                <div id="age-area">
                    <span style="margin-right: 49px;">나이</span>
                    <input type="number" name="mpAgeFrom" required>
                    <span>세 ~</span>
                    <input type="number" name="mpAgeTo" id="mpAgeTo" required>
                    <span>세</span>
                </div>
                <div id="missing-date-area">
                    <span>발생일</span>
                    <input type="date" required>
                </div>
                <div id="missing-place-area">
                    <span>발생장소</span>
                    <input type="text" name="mpPlace" required>
                    <div>
                    ex) 서울시 용산구 갈월동 놀이터 앞
                    <br>상세주소로 검색이 가능합니다.
                    </div>
                </div>
                <div id="feature-area">
                    <span>신체특징</span>
                    <textarea name="feature"></textarea>
                    <div>
                    ex)'시츄', '파란색 눈', '초록색 줄무늬 옷'
                    <br>키워드로 검색이 가능합니다.
                    </div>
                </div>
            </div>    
            <div align="right" id="enroll-btn-area"><button class= "btn">수정하기</button></div>
        </form>

        <!-- 보호하고있어요 작성폼 -->
        <!-- <form action="">
            <div id="input-area">
                <div id="select-ddcategory">
                    <span>구분</span>
                    <select name="d-category" id="select-dcategory">
                    <option value="missing">찾고있어요</option>
                    <option value="found">보호하고있어요</option>
                    </select>
                </div>
                <div id="category-select-area">
                    <span>대상</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category" checked>강아지
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
                        <input type="radio" class="form-check-input" name="gender" checked>암컷
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender">수컷
                    </label>
                    </div>
                </div>
                <div id="name-area">
                    <span>이름</span>
                    <input type="text" name="mpName">
                </div>
                <div id="age-area">
                    <span style="margin-right: 49px;">나이</span>
                    <input type="number" name="mpAgeFrom" required>
                    <span>세 ~</span>
                    <input type="number" name="mpAgeTo" id="mpAgeTo" required>
                    <span>세</span>
                </div>
                <div id="missing-date-area">
                    <span>발생일</span>
                    <input type="date" required>
                </div>
                <div id="missing-place-area">
                    <span>발생장소</span>
                    <input type="text" name="mpPlace" required>
                    <div>
                        ex) 서울시 용산구 갈월동 놀이터 앞
                        <br>상세주소로 검색이 가능합니다.
                    </div>
                </div>
                <div id="feature-area">
                    <span>신체특징</span>
                    <textarea name="feature"></textarea>
                    <div>
                    ex)'시츄', '파란색 눈', '초록색 줄무늬 옷'
                    <br>키워드로 검색이 가능합니다.
                    </div>
                </div>
            </div>    
            <div align="right" id="enroll-btn-area"><button class= "btn">수정하기</button></div>
        </form>
    </div> -->


	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>