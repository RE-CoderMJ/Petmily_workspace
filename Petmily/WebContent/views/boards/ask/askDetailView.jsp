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
	height: 1200px;
	float:left;
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
    margin-bottom: 16px;
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
                    <a href="">신고</a> &nbsp;
                    <a href="">수정하기</a>
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
                    <button type="button" class="btn">글삭제</button>
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
    
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>