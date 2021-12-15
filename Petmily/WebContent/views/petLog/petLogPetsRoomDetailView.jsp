<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogPetsRoomDetailView.css" rel="stylesheet">
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div id="right-bar"></div>
    <div id="left-bar"></div>

    <div id="outer" align="center">
        <div id="middle-area">
			<div id="left-part">
                <div id="left-top">
                    <div id="profile-img"><img src="resources/img/petlog_logo.PNG" alt=""></div>
                    <div id="room-name">
                        <div>뽐뽀미</div>
                        <div id="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                    </div>
                    <button type="button" id="follow-btn">팔로우</button>
                    <!-- <button type="button" id="following-btn">팔로잉</button> -->
                    <div id="room-info">
                        <div class="count info">17</div>
                        <div class="count info follower" data-toggle="modal" data-target="#follower">10</div>
                        <div class="count info following" data-toggle="modal" data-target="#following">5</div>
                        <div class="info-title info">게시글</div>
                        <div class="info-title info follower" data-toggle="modal" data-target="#follower">팔로워</div>
                        <div class="info-title info following" data-toggle="modal" data-target="#following">팔로잉</div>
                    </div>
                    <div id="bio">
                        안녕하세요 뽐뽀미 룸에 오신 것을 환영합니다:-)
                        귀여운 보미의 공간!!ㅎㅎ
                    </div>
                    <button type="button" id="edit-profile" data-toggle="modal" data-target="#profile-edit-modal">프로필 수정하기</button>
                </div>
                <div id="left-bottom">
                    <div id="bestpic-title">BEST! PIC!</div>
                    <hr>
                    <div id="bp-content-area">
                        <div class="bp-content">
                            <img src="resources/img/bomi3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/bomi2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/bomi4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div id="right-part">
                <div align="right" id="enroll-btn" onclick="location.href='<%=contextPath%>/enroll.petLog'"></div>
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
                    <label onclick="location.href='<%=contextPath %>/update.petLog'" class="modify-post">수정하기</label>
                </div>
                <div class="right-bottom">
                    <div class="reply-area">
                        <div class="write-reply">
                                <form action="">
                                    <input type="text" placeholder="댓글을 남겨 보세요." required>
                                    <button type="submit" class="reply-enrollbtn">등록</button>
                                </form>
                        </div>
                        
                        <div id="scroll-area">
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
                </div>
            </div>
        </div>
    </div>

    <!-- 프로필 수정 모달창 -->
    <div class="container">

        <!-- The Modal -->
        <div class="modal" id="profile-edit-modal">
          <div class="modal-dialog default">
            <div class="modal-content" align="center">

            <button type="button" id="close-profile" class="close" data-dismiss="modal">&times;</button>
            <form action="">
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="edit-profile-img"><img src="resources/img/petlog_logo.PNG" alt=""></div>
                    <div id="roomname-area">
                        <span id="room-name2">룸 이름</span>
                        <input type="text">
                      </div>
                    <div id="file-upload-area">
                      <p>사진<br>첨부</p>
                      <input type="file">
                    </div>
                    <div id="bio-area">
                      <div id="bio-contents">소개글</div>
                      <textarea name="" id="" cols="30" rows="10"></textarea>
                    </div>
                    <button class="btn" id="upload-btn">업로드</button>
                </div>
            </form>
            </div>
          </div>
        </div>

      </div>

      <!-- 팔로워 리스트 모달창 -->
      <div class="container">

        <!-- The Modal -->
        <div class="modal" id="follower">
          <div class="modal-dialog modal-sm">
            <div class="modal-content" align="center">

            <button type="button" class="close" data-dismiss="modal">&times;</button>
                <!-- Modal body -->
                <div class="list-title">
                    <span class="title">팔로워</span>
                    <span class="countNo">10</span>
                </div>
                <div class="modal-body list-body">
                    <div class="list-area">
                        <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                        <div class="userId">bmilove3</div>
                        <div class="follow-lst-btn">팔로우</div>
                    </div>
                </div>
            </div>
          </div>
        </div>

      </div>

       <!-- 팔로잉 리스트 모달창 -->
       <div class="container">

        <!-- The Modal -->
        <div class="modal" id="following">
            <div class="modal-dialog modal-sm">
              <div class="modal-content" align="center">
  
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <!-- Modal body -->
                  <div class="list-title">
                      <span class="title">팔로잉</span>
                      <span class="countNo">7</span>
                  </div>
                  <div class="modal-body list-body">
                      <div class="list-area">
                          <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                          <div class="userId">bmilove3</div>
                          <div class="following-lst-btn">팔로잉</div>
                      </div>
                  </div>
              </div>
            </div>
          </div>
  

      </div>

    <%@ include file="../boards/bCommon/reportDeleteModals.jsp" %>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>