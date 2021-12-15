<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="../../resources/css/petLog/petLogPetsRoom.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div id="right-bar"></div>
    <div id="left-bar"></div>

    <div id="outer" align="center">
        <div id="middle-area">
			<div id="left-part">
                <div id="left-top">
                    <div id="profile-img"><img src="../../resources/img/petlog_logo.PNG" alt=""></div>
                    <div id="room-name">
                        <div>뽐뽀미</div>
                        <div id="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                    </div>
                    <button type="button" id="follow-btn">팔로우</button>
                    <!-- <button type="button" id="following">팔로잉</button> -->
                    <div id="room-info">
                        <div class="count info">17</div>
                        <div class="count info">10</div>
                        <div class="count info">5</div>
                        <div class="info-title info">게시글</div>
                        <div class="info-title info">팔로워</div>
                        <div class="info-title info">팔로잉</div>
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
                            <img src="../../resources/img/bomi3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="../../resources/img/coco.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="../../resources/img/coco2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="../../resources/img/coco3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="../../resources/img/bomi2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="../../resources/img/bomi4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div id="right-part">
                <div align="right" id="enroll-btn" onclick="location.href='<%=contextPath%>/enroll.petLog'"></div>
                <div id="pictures-area">
                    <div class="pictures">
                        <img src="../../resources/img/bomi3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/coco.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/coco2.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/coco3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/bomi2.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/bomi4.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/bomi3.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/coco.jpg" alt="">
                    </div>
                    <div class="pictures">
                        <img src="../../resources/img/coco2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
       
        <!-- The Modal -->
        <div class="modal fade" id="profile-edit-modal">
          <div class="modal-dialog default">
            <div class="modal-content" align="center">
                
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <!-- Modal body -->
              <div class="modal-body">
                <div id="edit-profile-img"><img src="../../resources/img/petlog_logo.PNG" alt=""></div>
                <div>
                    <span>룸 이름</span>
                    <input type="text">
                  </div>
                <div id="file-upload-area">
                  <p>사진<br>첨부</p>
                  <input type="file" multiple>
                </div>
                <div>
                  <div>소개글</div>
                  <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>
              </div>
              
            </div>
          </div>
        </div>
        
      </div>

    <%@ include file="../bCommon/reportDeleteModals.jsp" %>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>