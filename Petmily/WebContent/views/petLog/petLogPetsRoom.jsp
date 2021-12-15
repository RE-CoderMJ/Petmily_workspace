<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogPetsRoom.css" rel="stylesheet">
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
                <div id="pictures-area">
                    <div class="pictures">
                        <img src="resources/img/bomi3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/coco.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/coco2.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/coco3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/bomi2.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/bomi4.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/bomi3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/coco.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="resources/img/coco2.jpg" alt="">
                    </div>
                </div>
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