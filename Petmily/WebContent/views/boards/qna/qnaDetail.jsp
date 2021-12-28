<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.pm.boards.qna.model.vo.Qna, com.pm.common.model.vo.Attachment" %>
<%
	Qna q = (Qna)request.getAttribute("q");
	Attachment at = (Attachment)request.getAttribute("at");
	int replyCount = (int)request.getAttribute("replyCount");
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

    .write-reply > input {
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

    .reply {
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
        float: left;
    }

    .reply > * {
        display: inline-block;
        margin-right: 10px;
    }
    
    .reply-content {
    	float: left;
    	margin-top: 3px;
    }

    .reply-info {
        margin: 10px 0px 0px -70px;
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
    
    .pagingbar {
		margin:auto;
		text-align:center;
		margin-top:30px;
	}

	.pagingbar button {
		border:  0;
		background-color: transparent;
		height: 40px;
		width: 40px;
		border-radius: 5px;
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
                    	<% if(q.getMemImg() == null) { %>
                    		<img src="resources/img/profile_default.png" class="profileImg">
                    	<% } else { %>
                        	<img src="<%= q.getMemImg() %>" class="profileImg">
                        <% } %>
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
                    	<a href="<%= contextPath %>/updateForm.qna?qno=<%= q.getQnaNo() %>" class="btn btn-sm btn-secondary">글 수정</a>
                    <% } %>
                </div>

                <div class="replyArea">
                    <b>댓글 <b style="color: orange;"><%= replyCount %></b></b>

                    <div class="write-reply">
                        <img src="resources/img/profile_default.png" class="profileImg">
                            <% if(loginUser == null) {%>
                            	<input type="text" placeholder="로그인 후 댓글을 남겨보세요" readonly>
                            <% } else { %>
                                <input type="text" id="reply-input" placeholder="댓글을 남겨 보세요." required>
                            <% } %>
                                <button id="reply-enrollbtn" class="btn btn-sm btn-warning" onclick="insertReply()">등록</button>
                    </div>

                    <div class="replies">

                        
                    </div>
                    
                    <div class="pagingbar" align="center">
                    
                    </div>
                    
                    <%--
                    <script>
                    
                    	$(function(){
                    		selectReplyList(1);
                    	});
                    	
                    	function insertReply() {
                    		$.ajax({
                    			url: "rinsert.qna",
                    			data: {
                    				content: $("#reply-input").val(),
                    				qno: <%= q.getQnaNo() %>
                    			},
                    			type:"post",
                    			success:function(result){
                    				if(result > 0) {
                    					selectReplyList(1);
                    					$("#reply-input").val("");
                    				}
                    			}, error:function(){
                    				console.log("댓글 작성 ajax 통신 실패");
                    			}
                    		})
                    	}
                    	
                    	function selectReplyList(rpageNo) {
                    		$.ajax({
                    			url: "rlist.qna",
                    			data: {qno:<%= q.getQnaNo() %>, rpage: rpageNo},
                    			success:function(result) {
                    				
                    				let noReply = "";
                    				let reply = "";
                    				if(result.list != null) {
                    					noReply = "<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>";
                    					$(".reply").html(noReply);
                    				} else {
                    					for(let i=0; i<result.list.length; i++) {
                    						let pfPath = "";
                    						if(result.list[i].writerImg != null) {
                    							pfPath = '<%= contextPath %>/' + result.list[i].writerImg;
                    						}
                    						reply += "<div class='reply'>";
                    						reply += "<div class='replyProfile'>";
                    						reply += "<img src='" + pfPath + "' class=profileImg>";
                    						reply += "<b class='replyNick'>" + result.list[i].writerNickname + "</b>";
                    						reply += "</div>";
                    						reply += "</div>";

                                        	reply += "<div class='reply-content' style='width: 820px;'>" + result.list[i].replyContent + "</div>";
                                            reply += "<a href='' class='btn delbtn' style='float: right;'>x</a>";
                                        
                                        	reply += "<p class='reply-info'>" + result.list[i].modifyDate + "&nbsp;&nbsp; <a href=''>수정</a>&nbsp;<a href=''>신고</a></p>";
                    					}
                    					$(".reply").html(reply);
                    				}
                    					
                    				
                    				var paging ="";
                    				if(result.pi.currentPage != 1) {
                    					paging += "<button onclick='selectReplyList" + (result.pi.currentPage -1) + ")';> &lt; </button>";
                    				}
                    				for(var p=result.pi.startPage; p<=result.pi.endPage; p++) {
                    					if(p == result.pi.currentPage) {
                    						paging += "<button disabled>"+ p +"</button>";
                    					} else {
                    						paging += "<button onclick='selectReplyList(" + p + ");'>"+ p +"</button>";
                    					}
                    				}
                    				
                    				if(result.pi.currentPage != result.pi.maxPage) {
                    					paging += "<button onclick='selectReplyList(" + (result.pi.currentPage +1) +"';> &gt; </button>";
                    				}
                    				
                    				$(".pagingbar").html(paging);
			
                    			}, error:function() {
                    				console.log("댓글 목록 조회 ajax 통신 실패");
                    			}
                    		})
                    	}
                    		
                    </script>
                    --%>
                    
                    
                    
                    <script>
						$(function(){
							selectReplyList(1);			
						});
						
						function insertReply(){
							
							$.ajax({
								url:"rinsert.qna",
								data:{
									content:$("#reply-input").val(),
									qno:<%= q.getQnaNo() %>
								},
								type:"post",
								success:function(result){
									if(result > 0){
										selectReplyList(1);
										$("#reply-input").val("");
									}
								},error:function(){
									console.log("댓글 작성용 ajax 통신 실패");
								}
							})
						}
						
						function selectReplyList(rpageNo){
							$.ajax({
								url:"rlist.qna",
								data:{qno:<%= q.getQnaNo() %>, rpage:rpageNo},
								success:function(result){
									
									let reply="";
									if(result.list == null){
										reply = "<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>";
										$(".replies").html(reply);
									}else{
										for(let i=0; i<result.list.length; i++){
											let pfPath = "";							
											if(result.list[i].writerImg != null){
												pfPath = '<%= contextPath %>/' + result.list[i].writerImg;							
											}
											reply += "<div class='reply'>";
				    						reply += "<div class='replyProfile'>";
				    						reply += "<img src='" + pfPath + "' class=profileImg>";
				    						reply += "<b class='replyNick'>" + result.list[i].writerNickname + "</b>";
				    						reply += "</div>";
				                        	reply += "<div class='reply-content' style='width: 820px;'>" + result.list[i].replyContent + "</div>";
				                            reply += "<a href='' class='btn delbtn' style='float: right;'>x</a>";
				                        	reply += "<p class='reply-info'>" + result.list[i].modifyDate + "&nbsp;&nbsp; <a href=''>수정</a>&nbsp;<a href=''>신고</a></p>";
				    						reply += "</div>";

										}
										
										$(".replies").html(reply);						
									}
									
									
									let paging ="";
				    				if(result.pi.currentPage != 1){
				    					paging += "<button onclick='selectReplyList(" + (result.pi.currentPage -1) + ")'>&lt;</button>";
				    				}
				    				
				    				for(let p = result.pi.startPage; p<=result.pi.endPage; p++){
				    					if(p == result.pi.currentPage){
				    						paging += "<button disabled>" + p + "</button>";
				    					}else{
				    						paging += "<button onclick='selectReplyList(" + p + ")'>" + p +"</button>";
				    					}
				    				}
				    				
				    				if(result.pi.currentPage != result.pi.maxPage){
				    					paging += "<button onclick='selectReplyList(" + (result.pi.currentPage +1) + ")'>&gt;</button>";
				    				}
				    				
				                    $(".pagingbar").html(paging);
				                    
								},error:function(){
									console.log("댓글목록 조회용 ajax 통신 실패");
								}
							})
						}
					</script>

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
	            <form action="<%= contextPath %>/delete.qna" method="post">
	            	<input type="hidden" name="qno" value="<%= q.getQnaNo() %>">
		            <div class="modal-footer">
		            <%-- <button type="submit" class="btn btn-secondary" data-toggle="modal" data-dismiss="modal" data-target="#delSuccessModal">삭제</button> --%>
		            <button type="submit" class="btn btn-secondary" data-toggle="modal" data-dismiss="modal" onclick="deleteQna();">삭제</button>
		            <button type="button" class="btn btn-warning" data-dismiss="modal">취소</button>
		            </div>
		        </form>
	            
	        </div>
        </div>
    </div>
    
    <script>
    	function deleteQna() {
    		$.ajax({
    			url: "delete.qna",
    			type: "post",
    			data: {qno: <%= q.getQnaNo() %>},
    			success: function(result) {
    				if(result > 0) {
    					$("#delSuccessModal").modal('show');
    				}
    			},
    			error: function(){
    				console.log("게시글 삭제 실패");
    			}
    		})
    	}
    </script>
    
    
    <!-- The Modal -->
    <div class="modal fade" id="delSuccessModal">
        <div class="modal-dialog modal-sm">
        <div class="modal-content">
            
            <!-- Modal body -->
            <div class="modal-body">
            <br>
            게시글이 삭제되었습니다
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-warning" data-dismiss="modal" onclick="location.href='<%= contextPath%>/main.qna?cpage=1'">확인</button>
            </div>
            
        </div>
        </div>
    </div>
	
</body>
</html>