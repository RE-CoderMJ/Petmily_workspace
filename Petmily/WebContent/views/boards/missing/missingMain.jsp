<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/missing/missingMain.css" rel="stylesheet">
</head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
   
   <%@ include file="../../common/menubar.jsp" %>
   <%@ include file="missingSidebar.jsp" %>
   
   <div class="content-area" align="center">

      <div id="title-area">
            <div id="title1">아이들이 가족들의 곁으로 돌아갈 수 있게 도와주세요.</div>
            <div id="title2">* 실종 신고 외에 허위 글 작성 시 최소 5000만원의 과태료를 부과합니다.</div>
      </div>
      
      <div id="search-area">
         <form action="" method="">
            <div id="search-left">
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
               <div id="missing-date-area">
                  <p>발생,<br>발견일</p>
                  <div>
                     <input type="date"> ~ <input type="date">
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
            <div id="search-right">
               <div id="select-ddcategory">
                  <span>구분</span>
                  <select name="d-category" id="select-dcategory">
                     <option value="">전체</option>
                     <option value="">찾고있어요</option>
                     <option value="">보호하고있어요</option>
                  </select>
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
            </div>
            <div id="missing-search-btn-area">
               <button type="submit" class="btn" id="missing-search-btn">검색</button>
            </div>
         </form>
      </div>

      <div id="middle-area">
         <div align="left" id="selectBy">
            <!-- 선택한 카테고리에 따라 문구 변경됨 -->
            전체 xxx건
         </div>
         <div align="right">
            <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/enrollForm.ask';">글쓰기</button>
         </div>
         <br><br><hr style="border: solid 1px rgb(179, 178, 178);">
      </div>
      <div id="notice-area" align="left">
         <span class="badge badge-pill" id="notice" onclick= "location.href = '<%= contextPath%>/no.missing';">공지사항</span>
         <span onclick= "location.href = '<%= contextPath%>/no.missing';">게시글 작성시 유의사항</span>
      </div>

      <!-- 게시글 영역 -->
      <div id="content-area">
         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="found-title">보호하고있어요</div>
               <div class="gender-age">수컷 | 추정나이: 만 3세</div>
               <div>발견일자 : 2021년 11월 12일
                  <br>발견지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="found-title">보호하고있어요</div>
               <div class="gender-age">수컷 | 추정나이: 만 3세</div>
               <div>발견일자 : 2021년 11월 12일
                  <br>발견지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="found-title">보호하고있어요</div>
               <div class="gender-age">수컷 | 추정나이: 만 3세</div>
               <div>발견일자 : 2021년 11월 12일
                  <br>발견지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="found-title">보호하고있어요</div>
               <div class="gender-age">수컷 | 추정나이: 만 3세</div>
               <div>발견일자 : 2021년 11월 12일
                  <br>발견지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="missing-title">찾고있어요</div>
               <div class="gender-age">루루 | 암컷 | 추정나이: 만 3세</div>
               <div>실종일자 : 2021년 11월 12일
                  <br>실종지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>
         
         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="missing-title">찾고있어요</div>
               <div class="gender-age">루루 | 암컷 | 추정나이: 만 3세</div>
               <div>실종일자 : 2021년 11월 12일
                  <br>실종지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="missing-title">찾고있어요</div>
               <div class="gender-age">루루 | 암컷 | 추정나이: 만 3세</div>
               <div>실종일자 : 2021년 11월 12일
                  <br>실종지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>

         <div class="content-box-area">
            <div style="border:1px solid black;" class="missing-img">
               <img src="" alt="">
            </div>
            <div class="content-info-area" align="left">
               <div class="missing-title">찾고있어요</div>
               <div class="gender-age">루루 | 암컷 | 추정나이: 만 3세</div>
               <div>실종일자 : 2021년 11월 12일
                  <br>실종지역 : 구갈동 ak플라자 앞
                  <br>신체특징 : 귀가 큼
               </div>
            </div>
         </div>
      </div>

      <!-- 페이징 바 -->
      <div class="paging-area" align="center">
            <button> &lt; </button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button> &gt; </button>
    </div>
    <script>
        $(function(){
            $(".paging-area button").click(function(){
                $(this).siblings(".paging-area button").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
            })
        })
    </script>
         
      <!-- <div>등록된 게시글이 없습니다.</div> -->
   </div>

   
   <%@ include file="../../common/footerbar.jsp" %>


</body>
</html>