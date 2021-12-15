<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PEMILY</title>

  
    <style>

        div, img, li, a{
            box-sizing: border-box;
        }
        /*전체적인 틀*/
        .outer{
            width: 1400px;
            height: 1200px;
            margin:auto;

        }     
        .content-area{
            width: 1400px;
            height: 1000px;
            padding:200px;
            padding-top:0px;
            margin:auto;
        }
        #petlog{
            width:1100px;
            height:30%;
        }

        #store{
            width:1100px;
            height:250px;
            margin-top:20px;
        }

        #board{
            width:1100px;
            height:350px;
            margin-top:10px;
            display: flex;
            justify-content: center;
        }
        #ask{
            width:360px;
            height:100%;
            display: inline-block;
            margin-right:25px;
        }
        #market{
            width:320px;
            height:100%;
            display: inline-block;
            margin:0 15px;
        }
        #missing{
            width:360px;
            height:100%;
            display: inline-block;
            margin-left:25px;
        }
        .smallTitle{
            font-size: 23px;
            font-weight: 700;
            text-align: left;
            margin-left:10px;
            color: rgb(247, 198, 4);
        }
        /*펫로그*/
        #content1{
            background-color: rgb(247, 198, 4);
            width:100%;
            height:88%;
            margin: auto;
        }
        #profile{
            width:150px;
            height: 100%;
            padding-top:30px;
            display: inline-block;
        }
        #profileimg img{
            display: inline-block;
            width:100px;
            height:100px;
            border-radius: 100px;
        }
        #login-user{
        	display: inline-block; 
        	border-radius:5px;
        	background-color:white;
        	width:150px;
        }
        #petlogSummary{
            width:830px;
            height: 100%;
            background-color: white;
            float:right;
            display: inline-block;
        }
	    /*펫로그 슬라이드메뉴*/
	    .swiper-container {
	        width:800px;
	        height: 98%;
	    }
	    .swiper-slide {
	        text-align:center;
	        display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	        align-items:center; /* 위아래 기준 중앙정렬 */
	        justify-content:center; /* 좌우 기준 중앙정렬 */
	        box-sizing:border-box;
	    }
	    .swiper-slide img {
	    	width:150px;
	    	height:150px;
	        /*max-width:80%;*/ /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	
	    }
	
		 .swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet {
		 	background:black;
		 }
		.button-next{
			position:absolute;
			right: -5px;
		    top: 70px;
		    z-index: 10;
		    cursor: pointer;
		    background-size: 27px 44px;
		    background-position: center;
		    background-repeat: no-repeat;
		}
		
		.button-next img{
		    width: 27px;
		    height: 44px;
		    opacity: 0.7;
		    
		}
	
		.button-prev{
			position:absolute;
			left: -5px;
		    top: 70px;
		    z-index: 10;
		    cursor: pointer;
		    background-size: 27px 44px;
		    background-position: center;
		    background-repeat: no-repeat;
		    margin-right:100px;
		}
		
		.button-prev img{
		    width: 27px;
		    height: 44px;
		    opacity: 0.7;
		}
		
		
        /*스토어*/
        .storecontent{
            height:210px;
            display: inline-block;
            padding-top: 20px;
            margin:0 20px;
            font-size: 15px;
            font-weight: 600;
            color:rgb(78, 78, 78);

        }
        .storecontentimg img{
            display: inline-block;
            width:110px;
            height:110px;
            border-radius: 100px;
            display: inline-block;
            background:#FAE6B9;
        }

        /*궁금해요 게시판*/
        .ask-contents{
            width:100%;
        }

        /* 제목, 내용, 작성날짜, 작성자, 댓글수, 조회수 */
        .ask-photo{
            border: 1px solid black;
            margin-bottom: 15px;
            margin-right: 5px;
            width: 60px;
            height: 60px;
            display: inline-block;
        }
        .ask-texts{
            width:75%;
            display: inline-block;
        }
        .ask-title{
            font-weight: bolder;
            font-size: 17px;
            text-align: left;
            width: 100%;
            height: 21%;
            margin-top: 7px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
            display: inline-block;
        }
        
        .ask-text{
            width:100%;
            text-align: left;
            text-overflow:ellipsis;
            overflow:hidden;
            display: -webkit-box !important;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            white-space: normal;
            display: inline-block;
            font-size: 13px;
        }
        

        /*중고거래게시판*/
        #market-content-area{
            height: 300px;
        }
        .market-content-box-area{
            width: 120px;
            height: 170px;
            cursor: pointer;
            display: inline-block;
            margin:0 10px;
            margin-top:50px;
        }
        .sell-icon{
            font-size: 11px;
            color: white;
            background: rgb(199, 64, 15);
            margin-left: -75px;
            margin-bottom: 5px;
            font-weight: lighter;
        }
        .buy-icon{
            font-size: 11px;
            color: white;
            background: rgb(4, 77, 4);
            margin-left: -75px;
            margin-bottom: 5px;
            font-weight: lighter;
        }
        .photo-box{
            width: 120px;
            height: 120px;
            border: 1px solid black;
        }
        .content-title{
            font-weight: bolder;
            font-size: 15px;
            margin-top: 3px;

            height: 23px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
        }
        .sell-price{
            font-weight: bolder;
            color: orange;
            font-size: 14px;
        }
        .buy-price{
            font-weight: bolder;
            color: rgb(4, 77, 4);
            font-size: 14px;
        }


        /*찾고있어요 게시판*/
        #missing-content-area{
            height: 300px;
        }
        .missing-content-box-area{
            width: 340px;
            margin:10px 0px;	
        }
        .missing-content-info-area, .missing-img{
            cursor:pointer;	
        }
        .missing-img{
            float: left;
            width: 100px;
            height: 100px;
            margin-top:15px;
            margin-left:10px;
        }
        .found-title{
            background: rgb(2, 68, 2);
            color: white;
            font-weight: bolder;
            font-size: 14px;
            width: 100px;
            text-align: center;
        }
        .missing-title{
            background: rgba(255, 110, 32, 0.946);
            color: white;
            font-weight: bolder;
            font-size: 14px;
            width: 80px;
            text-align: center;
        }
        .missing-content-info-area{
            width: 200px;
            margin-left: 100px;
            font-size: 14px;
        }
        .gender-age{
            font-weight: bolder;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .dpf-area >div{
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
        }






    </style>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

</head>
<body>

    <div class="outer">


        <div class="content-area" align="center">

            <!-- 로그인전
            <div id="petlog">
                <div class="smallTitle">PETLOG</div>
                <div id="content1">
                    <div id="profile">
                        <div id="profileimg">
                            <img src="resources/img/dog.png">
                        </div>
                        <br>
                        <div style="display: inline-block;">로그인해주세요</div>

                    </div>
             -->       
          <!-- 로그인후-->
            <div id="petlog">
                <div class="smallTitle">PETLOG</div>
                <div id="content1">
                    <div id="profile">
                        <div id="profileimg">
                            <img src="resources/img/dog.png">
                        </div>
                        <br>
                        <div id="login-user">뽐뽀미</div>

                    </div>          
                    
                    
                    
                    <div id="petlogSummary">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="resources/img/coco.jpg"></div>
                                <div class="swiper-slide"><img src="resources/img/bomi4.jpg"></div>
                                <div class="swiper-slide"><img src="resources/img/coco2.jpg"></div>
                                <div class="swiper-slide"><img src="resources/img/coco3.jpg"></div>
                                <div class="swiper-slide"><img src="resources/img/coco4.jpg"></div>
                                <div class="swiper-slide"><img src="resources/img/bomi2.jpg"></div>
                            </div>
                        
                            <!-- 네비게이션 -->
                            <div class="button-next"><img src="resources/img/right-arrow.png" style="color:pink;"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
                            <div class="button-prev"><img src="resources/img/left-arrow.png"></div><!-- 이전 버튼 -->

                            <!-- 페이징 -->
                            <div class="swiper-pagination"></div>
                        </div>




                    </div>
                </div>



            <div id="store">
                <div class="smallTitle">스토어</div>
                <div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/dog.png">
                        </div>
                        <br><br> 강아지
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/cat.png">
                        </div>
                        <br><br> 고양이
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/hamster.png">
                        </div>
                        <br><br> 햄스터
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/fish.png">
                        </div>
                        <br><br> 물고기
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/bird.png">
                        </div>
                        <br><br> 새
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/go.png">
                        </div>
                        <br><br> 고슴도치
                    </div>
                </div>
            </div>



            <div id="board">
                <div id="ask">
                    <div class="smallTitle">궁금해요 </div>
                    
                    <div class="ask-contents">
                        <div class="ask-photo"></div>
                        <div class="ask-texts">
                            
                            <div class="ask-title">쪼꼬가 요새 밥을 잘 안먹어요..</div>
                            
                            <div class="ask-text" align="left">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸
                            얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 
                            </div>
  
                        </div>
                     </div>

                     <div class="ask-contents">
                        <div class="ask-photo"></div>
                        <div class="ask-texts">
                            
                            <div class="ask-title">쪼꼬가 요새 밥을 잘 안먹어요..</div>
                            
                            <div class="ask-text" align="left">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸
                            얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 
                            </div>
  
                        </div>
                     </div>

                     <div class="ask-contents">
                        <div class="ask-photo"></div>
                        <div class="ask-texts">
                            
                            <div class="ask-title">쪼꼬가 요새 밥을 잘 안먹어요..</div>
                            
                            <div class="ask-text" align="left">얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 산책도 어쩌구저쩌꾸
                            얼마전에도 하루에 두번은 먹었는데 요새는 하루에 한번도 안먹으려고 하네요.. 
                            </div>
  
                        </div>
                     </div>


                </div>


                <div id="market">
                    <div class="smallTitle">중고거래</div>
                        <div id="market-content-area">
                            <div class="market-content-box-area">
                                <span class="badge badge-pill sell-icon">팔래요</span>
                                <div class="photo-box"></div>
                                <div class="content-title" align="left">고양이 화장실</div>
                                <div class="sell-price" align="right">12,000원</div> 
                            </div>
    
    
                            <div class="market-content-box-area">
                                <span class="badge badge-pill buy-icon">살래요</span>
                                <div class="photo-box"></div>
                                <div class="content-title" align="left">강아지 밥그릇</div>
                                <div class="buy-price" align="right">10,000원</div> 
                            </div>

                        </div>



                    


                </div>
                <div id="missing">
                    <div class="smallTitle">찾고있어요</div>
                    
                    <div id="missing-content-area">
                        <div class="missing-content-box-area">
                           <div style="border:1px solid black;" class="missing-img">
                              <img src="" alt="">
                           </div>
                           <div class="missing-content-info-area" align="left">
                              <div class="found-title">보호하고있어요</div>
                              <div class="gender-age">수컷 | 추정나이: 만 3세</div>
                              <div class="dpf-area">
                                    <div>발견일자 : 2021년 11월 12일</div>
                                 <div>발견지역 : 구갈동 ak플라자 앞</div>
                                 <div>신체특징 : 귀가 큼</div>
                              </div>
                           </div>
                        </div>


                        <div class="missing-content-box-area">
                            <div style="border:1px solid black;" class="missing-img">
                               <img src="" alt="">
                            </div>
                            <div class="missing-content-info-area" align="left">
                               <div class="missing-title">찾고있어요</div>
                               <div class="gender-age">루루 | 암컷 | 추정나이: 만 3세</div>
                               <div class="dpf-area">
                                     <div>발견일자 : 2021년 11월 12일</div>
                                  <div>발견지역 : 구갈동 ak플라자 앞</div>
                                  <div>신체특징 : 귀가 큼</div>
                               </div>
                            </div>
                         </div>



                </div>
            </div>






        </div>
        
        
    </div>
</div>
        
         <%@ include file="footerbar.jsp" %>  <!--푸터바 위치 어디에 넣어야하지--> 
</div>
   


    <script>
        new Swiper('.swiper-container', {

            slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
            spaceBetween : 20, // 슬라이드간 간격
            slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

            // 그룹수가 맞지 않을 경우 빈칸으로 메우기
            // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
            loopFillGroupWithBlank : true,

            loop : true, // 무한 반복

            pagination : { // 페이징
                el : '.swiper-pagination',
                clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            },
            navigation : { // 네비게이션
                nextEl : '.button-next', // 다음 버튼 클래스명
                prevEl : '.button-prev', // 이번 버튼 클래스명
            },
        });
    </script>

</body>
</html>