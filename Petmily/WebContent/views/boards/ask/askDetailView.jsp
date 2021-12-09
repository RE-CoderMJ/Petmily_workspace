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
}
     
.content-area{
	width: 1400px;
	height: auto;
	margin: auto;
	padding:200px;
	padding-top:35px
}

a{
    text-decoration: none;
    font-size: 12px;
}
/* 위쪽 부분 스타일 */
#title-area>*{
    float: left;
}
#title-area{
    position: relative;
    height: 30px;
    margin-bottom: -12px;
}
/* 제목 */
#title{
    font-size: 18px;
    font-weight: bolder;
}
/* 목록 버튼 */
#list-btn{
	width: 997px;
}
#enroll{
	height: 27px;
	font-size: 14px;
	line-height: 2px;
    position: absolute;
    right: 0;
    background-color: rgb(247, 198, 4);
    color: black;
    font-weight: bolder;
}
#required-area{
	margin-top: -15px;
}
/* 게시글 정보 및 작성자 영역 스타일 */
#info-area>*{
    float: left;
}
#info-area{
    position: relative;
    height: 30px;
    margin-top: -10px;
}
#info a{
    color: gray;
    font-weight: bolder;
    text-decoration: none;
    cursor: pointer;
}
#writer{
    position: absolute;
    right:0px;
}
#writer-id{
    font-size:14px;
    font-weight: bold;
    margin-left: 10px;
}
#writer-pic{
    float: left;
    width: 30px;
    height: 30px;
}

/* 사진영역 */
#photo-area{
    width: 500px;
    height: 370px;
    margin-top: 60px;
}

/* 내용영역 */
#text-area{
    width: 800px;
    margin-top: 50px;
    margin-bottom: 50px;
}

/* 댓글영역 */
#reply-top{
    height: 32px;
    margin-bottom: 30px;
}
#reply-count-area{
    float: left;
    margin-right: 813px;
    font-size: 15px;
    font-weight: bolder;
    margin-top: 5px;
}
#btn-area>*{
    background-color: rgb(201, 199, 199);
    height: 25px;
    width: 60px;
    padding: 1px;
    font-weight: bold;
    font-size: 13px;
}
#reply-count{
    color: orange;
    font-weight: bolder;
}
/* 댓글작성영역 스타일 */
#write-reply{
    height: 35px;
    position: relative;
    margin-top: 20px;
    margin-bottom: 30px;
}
#write-reply>form>input{
    width: 750px;
}
#writearea-pic{
    width: 30px;
    height: 30px;
    float: left;
    position: absolute;
    top: 1px;
    left: 50px;
}
#reply-enrollbtn{
    background-color: orange;
    font-size: 13px;
    font-weight: bolder;
    height: 27px;
    margin-bottom: 6px;
    margin-left: 8px;
    line-height: 0px;
}
/* 댓글조회영역 스타일 */
.replies{
    margin-top: 16px;
    margin-bottom: 80px;
    margin-left: -40px;
    width: 850px;
    background-color: rgb(240, 239, 239);
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 10px;
}
.user-name, .reply-content {
    float: left;
}
.profile-pic{
    border: black solid 1px;
    width: 30px;
    height: 30px;
    float: left;
    margin-top: 4px;
}
.user-name{
    margin-left: 10px;
    font-weight: bolder;
    font-size: 14px;
    margin-right: 15px;
}
.reply-content{
    font-size: 13px;
}
.delete-btn{
    margin-right: -300px;
}
.reply-info{
    width: 160px;
    font-size: 11px;
    color: gray;
    margin-left: -620px;
    margin-top: -6px;
}
.reply-info>a{
    color: gray;
    font-size: 11px;
    margin-right: 14px;
}

/* 삭제모달창 */
.modalMsg-area{
    font-weight: bolder;
    font-size: 17px;
    margin-top: 20px;
    height: 70px;
}
#deletebtn-area>*{
    color: white;
    font-weight: bolder;
    font-size: 15px;
    height: 35px;
    line-height: 5px;
    width: 100px;
    margin-top: -10px;
}
#confirm-btn{
    background-color: gray;
    margin-right: 2px;
    line-height: 22px;
}
#closebtn{
    background-color: orange;
    margin-left: 2px;
}
#deleteCompletedclosebtn{
    background-color: orange;
    width: 250px;
    color: white;
    font-weight: bolder;
}

/* 신고모달창 */
span{
    color: orange;
    font-weight: bolder;
}
#required-area{
    width: 80px;
    font-size: 11px;
    color: gray;
    margin-left: 200px;
    margin-top: 1px;
    margin-bottom: 30px;
}
#report-area{
    font-weight: bolder;
    font-size: 17px;
    margin-bottom: 20px;
}
/* 라디오 인풋 영역 */
#select-area{
    margin-left: 60px;
    margin-bottom: 10px;
}
#select-area>input{
    margin-bottom: 20px;
}
/* 신고사유영역 */
#reason-area{
    font-size: 12px;
    font-weight: bolder;
}
#reason-area>textarea{
    margin-top: 7px;
    width: 210px;
    resize: none;
    height: 120px;
}
#reportbtn-area>*{
    width: 80%;
    margin-top: 10px;
    font-weight: bolder;
}
#report-btn{
    color: white;
    background-color: orange;
}
#report-close{
    border: 1px solid orange;
    color: orange;
    margin-bottom: 10px;
}
#report-confirmMsg{
    margin-top: -20px;
    margin-bottom: 30px;
}
#reportCompletedclosebtn{
	background-color: orange;
    width: 250px;
    color: white;
    font-weight: bolder;
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
	<%@ include file="askSidebar.jsp" %>

	<div class="content-area" align="center">
		<div id="top">
			<div id="title-area">
                <div id="title">제목이 들어갈 위치입니다.</div>
                <button type="button" class="btn" id="enroll">글쓰기</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
            <div id="info-area">
                <div id="info">
                    2021-11-12 17:00 &nbsp;&nbsp;&nbsp;&nbsp;조회 63&nbsp;&nbsp;&nbsp;
                    <a data-toggle="modal" data-target="#reportAskModal">신고</a> &nbsp;
                    <a href="<%=contextPath%>/updateForm.ask">수정하기</a>
                </div>
                <div id="writer">
                    <div style="border: 1px solid black;"id="writer-pic"><img src="" alt=""></div>
                    <span id="writer-id">bomilove3</span>
                </div>
            </div>
		</div>
        <div id="photo-area" style="border: black 1px solid;">
            <img src="" alt="">사진
        </div>
        <div id="text-area" align="left">
            랄랄라 랄랄라 내용이 들어갈 영역이랍니당!우하하하 꺄!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            <br>우히히히 들어갔어요내용이1@@!
        </div>
        <hr style="border: solid 1px rgb(179, 178, 178);">

        <div id="reply-area">
            <div id="reply-top">
                <div id="reply-count-area">
                    <span>댓글</span>
                    <span id="reply-count">2</span>
                </div>
                <div id="btn-area">
                    <button type="button" class="btn" data-toggle="modal" data-target="#deleteAskModal">글삭제</button>
                    <a href="" class="btn">목록</a>
                </div>
            </div>
            <div id="write-reply">
                <div style="border: 1px solid black;"id="writearea-pic"><img src="" alt=""></div>
                    <form action="">
                        <input type="text" placeholder="댓글을 남겨 보세요." required>
                        <button class="btn" id="reply-enrollbtn">등록</button>
                    </form>
            </div>
            
            <div class="replies">
                
                <div class="profile-pic"></div>
                <div class="user-name">choco22</div>
                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                <a href="" class="btn delete-btn">x</a>
                <div class="reply-info">xxxx-xx-xx &nbsp;&nbsp; <a href="">수정</a><a href="">신고</a></div>
                
                <!--<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>-->
            </div>
        </div>
    </div>
    
    <!-- 게시글 삭제 Modal -->
    <div class="modal fade" id="deleteAskModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                                        정말 삭제하시겠습니까?
                    </div>
                    <div id="deletebtn-area">
                      <a type="button" class="btn" id="confirm-btn" data-dismiss="modal" data-toggle="modal" href="#deleteCompleted">확인</a>
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>

    <!-- 게시글 삭제완료 Modal -->
    <div class="modal fade" id="deleteCompleted">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                        정상적으로 삭제되었습니다.
                    </div>
                    <div>
                      <button type="button" class="btn" data-dismiss="modal" id="deleteCompletedclosebtn">닫기</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>

    <!-- 신고 Modal -->
    <div class="modal fade" id="reportAskModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div id="required-area"><span>*</span>필수입력사항</div>
                    <div id="report-area">
                        신고 사유를 선택해주세요
                        <span>*</span>
                    </div>
                    <form action="" id="report-form">
                        <div id=select-area align="left">
                            <input type="radio" name="reason" checked>광고성 게시물<br>
                            <input type="radio" name="reason">도배 및 중복 게시물<br>
                            <input type="radio" name="reason">욕설/비방<br>
                            <input type="radio" name="reason">외설적인 게시물<br>
                            <input type="radio" name="reason">기타
                        </div>

                        <div id="reason-area">
                            <span>*</span>사유에 대한 간략한 설명을 적어주세요.<br>
                            <textarea name="report-reason" id="report-content" placeholder="내용을 입력해주세요" required></textarea>
                        </div>
                        <div id="reportbtn-area">
                          <a type="button" class="btn" id="report-btn" data-dismiss="modal" data-toggle="modal" href="#reportCompleted">신고하기</a>
                          <button type="button" class="btn" data-dismiss="modal" id="report-close">닫기</button>
                        </div>              
                    </form>
                </div>
        
            </div>
        </div>
    </div>

    <!-- 신고완료 Modal -->
    <div class="modal fade" id="reportCompleted">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                        신고가 완료되었습니다.
                    </div>
                    <div id="report-confirmMsg">
                        신고 내역은 검토 후<br>
                        조취될 예정입니다.<br>
                        감사합니다.
                    </div>
                    <div id="deletebtn-area">
                      <button type="button" class="btn" data-dismiss="modal" id="reportCompletedclosebtn">확인</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>