<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pm.boards.qna.model.vo.Qna, com.pm.common.model.vo.Attachment"%>
<%
	Qna q = (Qna)request.getAttribute("q");
	Attachment at = (Attachment)request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

    .outer {
        width: 1600px;
        margin: auto;
    }

	.inner {
        width: 1300px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .qna {
        margin: auto;
        width: 80%;

    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 50px;
        margin-top: -15px;
        float: left;
    }

    #title_sm {
        position: relative;
        left: 15px;
        top: 15px;
        font-weight: bold;
        font-size: 18px;
    }

    #enrollBtn {
        float: right;
        margin-top: 20px;
        font-size: 15px;
        font-weight: bold;
    }

    .detailTitle {
        font-size: 20px;
        font-weight: bold;
        padding: 20px 0px 0px;
    }

    .qnaContentTop > * {
        display: inline-block;
        margin: 10px 10px 10px 0px;
    }
    
    .qnaContentTop > a {
        text-decoration-line: none !important;
        font-size: 14px;
        font-weight: bold;
        color: gray;
    }

    .profileImg {
        width: 35px;
        height: 35px;
        margin: 0px 5px;
        border-radius:100px;
    }

    .detailContent {
        padding: 20px;
        font-size: 18px;
    }

    .btns {
        margin: 10px 0px;
    }

    .btns > a {
        float: right;
        margin-left: 5px;
        background-color: lightgray;
        border: none;
        font-size: 15px;
        font-weight: bold;
        color: black;
    }

    .write-reply {
        margin: 30px 0px 10px 0px;
    }

    .write-reply > * {
        display: inline-block;
    }

    .write-reply > form > input {
        width: 985px;
        height: 35px;
        padding: 10px;
        font-size: 18px;
        margin-left: 10px;
        margin-right: 5px;
        border: 1px solid lightgray;
        border-radius: 5px;
        
    }

    #reply-enrollbtn {
        width: 50px;
        height: 35px;
        margin-bottom: 5px;
        font-weight: bold;
        font-size: 15px;
    }

    .replies {
        margin-top: 10px;
        margin-left: 20px;
        width: 1020px;
        background-color: rgb(240, 239, 239);
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 10px;
        height: auto;
        min-height: 80px;
        overflow: hidden;
    }

    .replyProfile {
        vertical-align: middle;
    }

    .replies > * {
        display: inline-block;
        margin-right: 10px;
    }

    .reply-info {
        margin: 10px 0px 0px 50px;
    }

    .reply-info > a {
        font-size: 14px;
        text-decoration-line: none !important;
        color: gray;
    }

    .modal-backdrop {
        opacity:0.1 !important;
    }

    /* 모달창이 가운데 정렬이 되도록 .modal~.modal~dialog */
    .modal {
        text-align: center;
    }
    
    @media screen and (min-width: 768px) { 
            .modal:before {
                    display: inline-block;
                    vertical-align: middle;
                    content: " ";
                    height: 100%;
            }
    }

    .modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
    }

</style>
</head>

<body>
    <%@ include file="../../common/menubar.jsp" %>
    
    <div class="outer">
        <%@ include file="../notice/noticeSidebar.jsp" %>
        
        
        <div class="inner">
            
            <div class="qna">

                <div>
                    <p id="title">QnA</p>
                    <span id="title_sm">1:1</span>
                    <% if(loginUser != null) { %>
	                    <button type="button" id="enrollBtn" class="btn btn-sm btn-warning"
	                            onclick="location.href='<%= contextPath %>/enrollForm.qna'">글쓰기</button>
	                <% } %>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
				
                <p class="detailTitle" name="qnaTitle"><%= q.getQnaTitle() %></p>

                <div style="border-bottom: 2px solid lightgray;"></div>

                <div class="qnaContentTop">
                    <p name="qnaDate"><%= q.getQnaDate() %></p>
                    <p name="count">조회 <%= q.getCount() %></p>
                    <a href="">신고</a>
                    <div id="writer" style="float:right;">
                        <img src="resources/img/profile_default.png" class="profileImg">
                        <span name="qnaWriter"><%= q.getMemNo() %></span>
                    </div>
                </div>

                <p class="detailContent" name="qnaContent">
                    <%= q.getQnaContent() %>
                </p>
                
				<% if(at == null) { %>
                	<p><b>첨부파일</b>&ensp;<span>첨부파일이 없습니다</span></p>
               	<% } else { %>
               		<p><b>첨부파일</b>&ensp;<a href="<%= contextPath %>/<%= at.getFilePath() + at.getChangeName() %>"><%= at.getOriginName() %></a></p>
                <% } %>

                <div style="border-bottom: 2px solid lightgray;"></div>

                <div class="btns">
                    <a href="<%= contextPath %>/main.qna?cpage=1" class="btn btn-sm btn-secondary">목록</a>
                    <% if(loginUser != null && loginUser.getNickname().equals(q.getMemNo())) { %>
                    	<a data-toggle="modal" data-target="#delModal" class="btn btn-sm btn-secondary">글 삭제</a>
                    	<a href="<%= contextPath %>/update.qna" class="btn btn-sm btn-secondary">글 수정</a>
                    <% } %>
                </div>

                <div class="replyArea">
                    <b>댓글 <b style="color: orange;">1</b></b>

                    <div class="write-reply">
                        <img src="resources/img/profile_default.png" class="profileImg">
                            <form action="">
                                <input type="text" placeholder="댓글을 남겨 보세요." required>
                                <button id="reply-enrollbtn" class="btn btn-sm btn-warning">등록</button>
                            </form>
                    </div>

                    <div class="replies">
                        
                        <div class="replyProfile">
                            <img src="resources/img/profile_default.png" class="profileImg">
                            <b class="replyId">choco22</b>
                        </div>
                        <div class="reply-content" style="width: 820px;">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
                        <a href="" class="btn delete-btn" style="float: right;">x</a>
                        
                        <p class="reply-info">xxxx-xx-xx &nbsp;&nbsp; <a href="">수정</a>&nbsp;<a href="">신고</a></p>
                        
                        <!--<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>-->
                    </div>

                </div>
                
            </div>
        </div>
        
    </div>
    
    <div style="margin-top: 250px;">
        <%@ include file="../../common/footerbar.jsp" %>
    </div>

    <!-- The Modal -->
    <div class="modal fade" id="delModal">
        <div class="modal-dialog modal-sm">
        <div class="modal-content">
            
            <!-- Modal body -->
            <div class="modal-body">
            <br>
            게시글을 정말 삭제하시겠습니까?
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">삭제</button>
            <button type="button" class="btn btn-warning" data-dismiss="modal">취소</button>
            </div>
            
        </div>
        </div>
    </div>

</body>
</html>