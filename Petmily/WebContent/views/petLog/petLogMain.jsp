<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogMain.css" rel="stylesheet">
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
    <div id="right-bar"></div>
    <div id="left-bar"></div>
    
    <div id="outer" align="center">
        <div id="middle-area">
        
        <select name="category" id="search-condition">
           <option value="all">전체 게시글 조회</option>
           <option value="fContents">팔로잉 게시글 조회</option>
        </select>
        
        <div id="petsroom-btn" onclick="location.href='<%= contextPath %>/petsRoom.petLog'">
        	<div id="petsroom-icon"><img src="resources/img/petLog/petsRoom.png" alt=""></div>
        	<div>나의 펫츠룸으로 이동</div>
        </div>
        <div id="enroll-btn" onclick="location.href='<%= contextPath %>/enroll.petLog'">
        	<div id="enroll-icon"><img src="resources/img/petLog/enroll.png" alt=""></div>
        	<div>나의 펫로그 쓰러가기</div>
        </div>
        	<br>
            <div class="content-box">
                <div class="left-part">
                    <div class="left-top">
                        <div class="profile-img"><img src="resources/img/petlog_logo.PNG" alt=""></div>
                        <div class="room-name">
                            <div>뽐뽀미</div>
                            <div class="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                        </div>
                        <button type="button" class="follow-btn">팔로우</button>
                        <div class="like-btn"><img src="resources/img/heart.jpg" alt=""></div>
                    </div>
                    <div class="left-bottom">
                        <div class="photo-area">

                            <div id="" class="demo carousel" data-ride="carousel" data-interval="false">

                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="resources/img/sp_churu.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_wheel.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_coshion.jpg" alt="">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href=".demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href=".demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>

                        </div>
                        <div class="date-area">2021-11-12</div>
                    </div>
                    
                </div>
                <div class="right-part">
                    <!-- 작성자에게만 -->
                    <button type="button" class="delete-btn" data-toggle="modal" data-target="#deleteAskModal">x</button>
                    <div class="right-top">
                        <div class="text-area">
                            보미야 사랑해> <😍
                            우리보미 산책하다가 너무 귀여워서 한 컷!
                            ㅋㅋㅋㅋㅋㅋ 사진 찍을 줄 아는듯
                        </div>
                    </div>
                    <div class="right-middle">
                        <img src="resources/img/heart.jpg" alt="">
                        <span>좋아요</span>
                        <span class="like-count">33</span>
                        <img src="resources/img/petLog/reply.png" alt="">
                        <span>댓글</span>
                        <span class="reply-count">2</span>
                        <label data-toggle="modal" data-target="#reportAskModal" class="report-post">게시글 신고</label>
                        <label href="" class="modify-post">수정하기</label>
                    </div>
                    <div class="right-bottom">
                        <div class="reply-area">
                            <div class="write-reply">
                                    <form action="">
                                        <input type="text" placeholder="댓글을 남겨 보세요." required>
                                        <button type="submit" class="reply-enrollbtn">등록</button>
                                    </form>
                            </div>
                            
                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
                            </div>

                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
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
                </div>

            </div>

            
            <div class="content-box">
                <div class="left-part">
                    <div class="left-top">
                        <div class="profile-img"><img src="resources/img/petlog_logo.PNG" alt=""></div>
                        <div class="room-name">
                            <div>뽐뽀미</div>
                            <div class="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                        </div>
                        <button type="button" class="follow-btn">팔로우</button>
                        <div class="like-btn"><img src="resources/img/heart.jpg" alt=""></div>
                    </div>
                    <div class="left-bottom">
                        <div class="photo-area">

                            <div id="" class="demo carousel" data-ride="carousel" data-interval="false">

                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="resources/img/sp_churu.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_wheel.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_coshion.jpg" alt="">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href=".demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href=".demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>

                        </div>
                        <div class="date-area">2021-11-12</div>
                    </div>
                    
                </div>
                <div class="right-part">
                    <!-- 작성자에게만 -->
                    <button type="button" class="delete-btn" data-toggle="modal" data-target="#deleteAskModal">x</button>
                    <div class="right-top">
                        <div class="text-area">
                            보미야 사랑해> <😍
                            우리보미 산책하다가 너무 귀여워서 한 컷!
                            ㅋㅋㅋㅋㅋㅋ 사진 찍을 줄 아는듯
                        </div>
                    </div>
                    <div class="right-middle">
                        <img src="resources/img/heart.jpg" alt="">
                        <span>좋아요</span>
                        <span class="like-count">33</span>
                        <img src="resources/img/petLog/reply.png" alt="">
                        <span>댓글</span>
                        <span class="reply-count">2</span>
                        <label data-toggle="modal" data-target="#reportAskModal" class="report-post">게시글 신고</label>
                        <label href="" class="modify-post">수정하기</label>
                    </div>
                    <div class="right-bottom">
                        <div class="reply-area">
                            <div class="write-reply">
                                    <form action="">
                                        <input type="text" placeholder="댓글을 남겨 보세요." required>
                                        <button type="submit" class="reply-enrollbtn">등록</button>
                                    </form>
                            </div>
                            
                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
                            </div>

                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
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
                </div>

            </div>

            <div class="content-box">
                <div class="left-part">
                    <div class="left-top">
                        <div class="profile-img"><img src="resources/img/petlog_logo.PNG" alt=""></div>
                        <div class="room-name">
                            <div>뽐뽀미</div>
                            <div class="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                        </div>
                        <button type="button" class="follow-btn">팔로우</button>
                        <div class="like-btn"><img src="resources/img/heart.jpg" alt=""></div>
                    </div>
                    <div class="left-bottom">
                        <div class="photo-area">

                            <div id="" class="demo carousel" data-ride="carousel" data-interval="false">

                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="resources/img/sp_churu.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_wheel.jpg" alt="">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/sp_coshion.jpg" alt="">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href=".demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href=".demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>

                        </div>
                        <div class="date-area">2021-11-12</div>
                    </div>
                    
                </div>
                <div class="right-part">
                    <!-- 작성자에게만 -->
                    <button type="button" class="delete-btn" data-toggle="modal" data-target="#deleteAskModal">x</button>
                    <div class="right-top">
                        <div class="text-area">
                            보미야 사랑해> <😍
                            우리보미 산책하다가 너무 귀여워서 한 컷!
                            ㅋㅋㅋㅋㅋㅋ 사진 찍을 줄 아는듯
                        </div>
                    </div>
                    <div class="right-middle">
                        <img src="resources/img/heart.jpg" alt="">
                        <span>좋아요</span>
                        <span class="like-count">33</span>
                        <img src="resources/img/petLog/reply.png" alt="">
                        <span>댓글</span>
                        <span class="reply-count">2</span>
                        <label data-toggle="modal" data-target="#reportAskModal" class="report-post">게시글 신고</label>
                        <label href="" class="modify-post">수정하기</label>
                    </div>
                    <div class="right-bottom">
                        <div class="reply-area">
                            <div class="write-reply">
                                    <form action="">
                                        <input type="text" placeholder="댓글을 남겨 보세요." required>
                                        <button type="submit" class="reply-enrollbtn">등록</button>
                                    </form>
                            </div>
                            
                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
                            </div>

                            <div class="replies">
                                
                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                                <div class="user-name">choco22</div>
                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                                <div class="reply-info">
                                	xxxx-xx-xx<br> 
                                	<label href="">수정</label>
                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
                                </div>
                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
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
                </div>

            </div>

            
		    <a href="#top" id="pageUp"><img src="resources/img/pageUp.png"></a>
		    <!-- 페이징 바 -->
                    <div id="paging-area" align="center">
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
                            $("#paging-area button").click(function(){
                                $(this).siblings("#paging-area button").css({background: "", color:"black"});
                                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
                            })
                        })
                    </script>
        </div>
    </div>
    
    
    <%@ include file="../common/footerbar.jsp" %>
    <%@ include file="../boards/bCommon/reportDeleteModals.jsp" %>
    
</body>
</html>