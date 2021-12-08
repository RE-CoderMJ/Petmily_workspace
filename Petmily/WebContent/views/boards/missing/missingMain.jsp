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
        border: soli 1px black;
}
     
/* 찾고있어요 메인 스타일 */
.content-area{
   width: 1400px;
   height: 1600px;
   margin: auto;
}
.content-area > div{
   width: 85%;
}

/* 게시판 설명 영역 스타일 */
#title-area{
   height: 65px;
   background: rgb(235, 235, 235);
   margin-bottom: 20px;
   padding: 12px;
}
#title1{
   font-weight: bolder;
}
#title2{
   color: rgb(153, 20, 20);
   font-size: 11px;
   font-weight: bolder;
}

/* 검색영역 스타일 */
#search-area{
   padding: 20px;
   border: solid 1px rgb(247, 198, 4);
   height: 250px;
}
#search-area span,p{
   color: gray;
   font-weight: bolder;
   font-size: 15px;
}
#search-area input{
   font-size: 17px;
}
#search-left{
   float: left;
   width: 50%;
   text-align: left;
   margin-left: 80px;
}
#search-right{
   text-align: left;
}
/* 대상 스타일 */
#category-select-area{
   margin-bottom: 15px;
}
#category-select-area label{
   font-size: 15px;
}
#category-select-area >span{
   margin-right: 38px;
}
/* 성별 스타일 */
#gender-select-area{
   font-size: 15px;
   margin-bottom: 15px;
}
#gender-select-area >span{
   margin-right: 38px;
}
/* 발생, 발견일 스타일*/
#missing-date-area>p{
   float: left;
   text-align: left;
   margin-right: 30px;
}
#missing-date-area input{
   font-size: 14px;
   margin-top: 7px;
}
#missing-date-area{
   margin-bottom: 20px;
}
/* 신체특징 스타일 */
#feature-area>span{
   margin-left: -68px;
   margin-right: 12px;
}
#feature-area>input{
   font-size: 15px;
   width: 295px;
}
#feature-area>div{
   margin-left: 75px;
   font-size: 11px;
   color: orange;
   font-weight: bolder;
}

/* 중간영역 스타일 */
#middle-area>div{
   float: left; 
   width:592px;
   margin-top: 25px;
}
#write{
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

/* 페이징바 스타일 */
#paging-bar{
   margin-top: 120px;
}
/* 페이징바 */
.paging-area button{
   border:  0;
   background-color: transparent;
   height: 40px;
   width: 40px;
   border-radius: 5px;
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
               <div>
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
               <div>
                  <span>나이</span>
                  <input type="number" name="mpAgeFrom">
               </div>
               <div>
                  <p>발생,<br>발견장소</p>
                  <input type="number" name="mpAgeFrom">
               </div>
               <div>
                  ex) 서울시 용산구 갈월동 놀이터 앞<br>
                  상세주소로 검색이 가능합니다.
               </div>
            </div>
            <div>
               <button>검색</button>
            </div>
         </form>
      </div>

      <div id="middle-area">
         <div align="left">
            전체 xxx건
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