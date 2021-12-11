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
/* 글쓰기 버튼 */
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


</style>
<link href="resources/css/boards/bCommon/reply.css" rel="stylesheet">
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
                <button type="button" class="btn" id="enroll" onclick="location.href='<%= contextPath %>/enrollForm.ask';">글쓰기</button>
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
                    <a href="<%=contextPath%>/main.ask?page=1" class="btn">목록</a>
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
        <%@ include file="../bCommon/boardPagingBar.jsp" %>
        
    </div>
    
    <%@ include file="../bCommon/reportDeleteModals.jsp" %>
    
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>