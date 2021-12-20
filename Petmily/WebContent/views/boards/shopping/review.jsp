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
     
   /* 상품 후기 메인 스타일 */
   .content-area{
      width: 1400px;
      height: auto;
      margin: auto;
      margin-bottom: 230px;
   }
   .content-area > div{
      width: 85%;
   }
   
   
   /* 중간영역 스타일 */
   #middle-bar>div{
      float: left; 
      width:592px;
      margin-top: 25px;
      font-size: 25px;
   }
   #orderBy, #write{
      height: 27px;
      line-height: 3px;
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
  
   /* 사진 들어갈 영역 */
   .photo{
      width: 130px;
   }

   .nophoto{
      width: 130px;
   }
   
   /*아코디언*/

   .accordion { 
        margin-bottom: 5px;
    }

    .accordion-head {
           
        cursor: pointer;
        
    }
        .accordion-body {
         font-size: 13px;
        background-color: rgb(251, 255, 239);
        border-radius: 4px;
        margin-top: 4px;
        padding: 10px;
        display: none;
        
    }

  

   /* 리뷰 제목, 내용, 작성날짜, 작성자, 별점 */
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

   .nophoto{ 
      border: 1px solid white;
      margin-right: 25px;

   }
   
/*호버 효과*/
.hover11 figure {
	opacity: 1;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover11 figure:hover {
	opacity: .5;
}



   .checked {
      color: orange;
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

.text {
   float: left;
   text-align: left;
   width: 700px;
}

.star {
   float: right;
   margin-left: 30px;
}
.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 2.25rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
   
 	<!-- 메뉴바 -->
    <%@ include file="../../common/menubar.jsp"%>

    <!-- 사이드바  -->
    <%@ include file="shoppingsidebar.jsp"%>
   
   <div class="content-area" align="center">

      <div id="middle-bar">
         <div align="left">
           <b>후기</b>
            </select>
         </div>
         <div align="right">
			<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">
				리뷰 작성
				</button>
                     </div>
         <br><br>
         
         <hr style="border: solid 1px rgb(179, 178, 178);">
      </div>
      <div id="notice-area" align="left">
             리뷰 수 20 사용자 평점 4.9/5
			 	
		</div>
      
      
      <div id="content-area">
        
         <div class="contents">
  
       
            <div class="photo"></div>
            <div class="texts">
               <div class="title">잘 먹네요</div>
               <div class="info">쭈니 &nbsp;&nbsp;2021.11.10</div>
               <div class="text">여러 사료를 찾다가 구매하게 됐어요. 입맛이 까다로워서 잘 안먹어서 힘들었는데 요건 잘 먹네요</div>
               
               <!-- 별점 -->
               <div class="star">

                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                 
                  <div class="accordion"> 
                     <div class="accordion-head"> 
                        답변 </div>                                            

                     <p class="accordion-body">
                          <b>└</b> 안녕하세요 고객님 :D 소중한 구매 후기 감사드립니다. 앞으로도 좋은 상품으로 고객님께 만족감 드리기 위해 항상 노력하겠습니다!
                     </p>                
                 </div>
                  
               </div>  
                       </div>
         </div>
         
         <div class="contents">
            
            <div class="nophoto"></div>
            <div class="texts">
               <div class="title">만족</div>
               <div class="info">잭슨 &nbsp;&nbsp;2021.11.10</div>
                             

               <div class="text">기존에 먹이던 사료 일부러 섞어줬는데 요것만 골라먹네요ㅜㅋ
                    
                     
               </div>
               <div class="star">
   
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
   
                  <div class="accordion"> 
                     <div class="accordion-head"> 
                        답변 </div>                                            

                     <p class="accordion-body">
                          <b>└</b> 안녕하세요 고객님 :D 소중한 구매 후기 감사드립니다. 앞으로도 좋은 상품으로 고객님께 만족감 드리기 위해 항상 노력하겠습니다!
                     </p>                
                 </div>

               </div>
            </div>
         </div>
         <div class="contents">
            
            <div class="photo"></div>
            <div class="texts">
               <div class="title">배송 빨랐어요</div>
               <div class="info">뽀야미&nbsp;&nbsp;2021.11.10</div>
               <div class="text">원래 닥터독 먹이다가 기호성이 넘 떨어져서 바꿨는데 잘 먹습니다. ^^</div>
               <div class="star">
   
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <div class="accordion"> 
                     <div class="accordion-head"> 
                        답변 </div>                                            

                     <p class="accordion-body">
                          <b>└</b> 안녕하세요 고객님 :D 소중한 구매 후기 감사드립니다. 앞으로도 좋은 상품으로 고객님께 만족감 드리기 위해 항상 노력하겠습니다!
                     </p>                
                 </div>
               </div>
            </div>
         </div>
         <div class="contents">
            
            <div class="photo"></div>
            <div class="texts">
               <div class="title">쏘쏘</div>
               <div class="info">밍키&nbsp;&nbsp;2021.11.10</div>
               <div class="text">후기가 좋아서 산건데 저희 집 밍키는 그냥저냥 먹네요 눈물자국은 지켜보려구요 </div>
               <div class="star">
   
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <div class="accordion"> 
                     <div class="accordion-head"> 
                        답변 </div>                                            

                     <p class="accordion-body">
                          <b>└</b> 안녕하세요 고객님 :D 소중한 구매 후기 감사드립니다. 앞으로도 좋은 상품으로 고객님께 만족감 드리기 위해 항상 노력하겠습니다!
                     </p>                
                 </div>
               </div>
               
            </div>
         </div>
         <div class="contents">
           
            <div class="nophoto"></div>
            <div class="texts">
               <div class="title">벌써 세번째 구매</div>
               <div class="info">철이 &nbsp;&nbsp;2021.11.10</div>
               <div class="text">우리 철이가 너무 잘 먹어서 계속 재구매하네요 문제는 너무 많이 먹어서 계속 시켜야 하네여 ㅋ</div>
               <div class="star">
   
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <div class="accordion"> 
                     <div class="accordion-head"> 
                        답변 </div>                                            

                     <p class="accordion-body">
                          <b>└</b> 안녕하세요 고객님 :D 소중한 구매 후기 감사드립니다. 앞으로도 좋은 상품으로 고객님께 만족감 드리기 위해 항상 노력하겠습니다!
                     </p>                
                 </div>
               </div>
            </div>
         </div>
      </div>

      <script>
         $(function(){
             $(".accordion-head").click(function(){  
                 
                 const $p = $(this).next(); 
                 // var img = document.getElementsByClassName("down-arrow");
 
                 if($p.css("display") == "none"){
                     
                     // $(this).siblings("p").slideUp();
                     
                     $p.slideDown();
                     // img.style.transform = 'rotate()';
                 } else {
                     
                     $p.slideUp();
                     // img.style.transform = 'rotate(180deg)';
                 }
                 
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
         
      
    <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">상품 리뷰</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           
  <body class="shopping" style="overflow-y:scroll">
    <div id=MAIN_CONTENT_ROOT_ID><div class="" data-reactroot="">
<div id="MODAL_ROOT_ID"></div><div><header class="_1eiZSxfMdh"><a href="#" role="button" class="_2GFmOgYde3 N=a:wrtmnt.hdcls"></a>
</header><div class="_1LztV9Gn1N">
<div class="_17SfRtJRiV"><div class="_1Io8uMURuH"><div class="_337CR8aFdT">

<div class="kJ81vG97gK">

<img style="height:" src="https://shop-phinf.pstatic.net/20210929_233/1632885926895GggFG_JPEG/34021760454554645_1655983429.jpg?type=f170_170" data-src="https://shop-phinf.pstatic.net/20210929_233/1632885926895GggFG_JPEG/34021760454554645_1655983429.jpg?type=f170_170" class="_29b2KUooCX" alt="상품이미지"/></div></div>

<div class="_3GfzsewzVp"><p class="dWg6RQkP53">[멍멍조아샵] <!-- -->그레인프리 사료 3kg</p></div></div></div><div class="-OcYLr6Qe6">
<div class="oViOeBoH3d"><!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      </head>
  <body>
   <div class="star-rating space-x-4 mx-auto">
      <input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
      <label for="5-stars" class="star pr-4">★</label>
      <input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
      <label for="4-stars" class="star">★</label>
      <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
      <label for="3-stars" class="star">★</label>
      <input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
      <label for="2-stars" class="star">★</label>
      <input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
      <label for="1-star" class="star">★</label>
   </div>
        
   </body>
 <br>
<strong class="_3y9Ly2IiVh">어떤 점이 좋았나요?</strong>
<div class="ystMZ36gvH"><div class="_30-j0z23yB _2CEGIJbJ0M">
<textarea class="_2mqbEheJIc" id="reviewInput" cols="50" style="height:100px"></textarea><div class="_2WdOh6YXC8"><em class="_3LoikG0PPT"></div></div></div>

<div class="_3DpEZeFAIG">
     <input type="file" style="margin-top: 8px;">

     <br>
<p>상품과 무관한 사진/동영상을 첨부한 리뷰는 통보없이 삭제 및 적립 혜택이 회수됩니다.</p>
</div></div></div><div class="-OcYLr6Qe6"><div class="_2FL-GHAhIL"><div class="_3SQqSVM0EV">
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-warning">등록</button> <button type="button" class="btn  btn-outline-secondary" data-dismiss="modal">취소</button>
        </div>

 


</body>
</html>