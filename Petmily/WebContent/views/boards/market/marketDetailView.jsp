<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.util.ArrayList, com.pm.boards.market.model.vo.Market, com.pm.common.model.vo.Attachment"%>
<%
	Market m = (Market)request.getAttribute("m");
	int replyCount = (int)request.getAttribute("replyCount");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../common/links.jsp" %>
<link href="resources/css/boards/market/marketDetailView.css" rel="stylesheet">
<link href="resources/css/boards/market/marketReply.css" rel="stylesheet">
<link href="resources/css/boards/bCommon/reportDeleteModals.css" rel="stylesheet">
<style>
/* 페이징바 */
#paging-area button{
     border:  0;
     background-color: transparent;
     height: 40px;
     width: 40px;
     border-radius: 5px;
     margin-bottom: 50px;
     margin-top: 40px;
}
</style>
</head>
<body>
	
	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="marketSidebar.jsp" %>
	    <div class="content-area">
	    	<div id="top">
				<div id="title-area">
					<div id="title"><%= m.getMarketTitle() %> </div>
					<% if(loginUser != null) { %>
	                	<button type="button" class="btn" id="enroll" onclick="location.href='<%= contextPath %>/enrollForm.market';">글쓰기</button>
	                <% } %>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
	            <div id="info-area">
	                <div id="info">
	                    <%= m.getEnrollDate() %> &nbsp;&nbsp;&nbsp;&nbsp;조회 <%= m.getCount() %>&nbsp;&nbsp;&nbsp;
	                    <% if(loginUser != null) {%>
	                    	<a data-toggle="modal" data-target="#reportAskModal">신고</a> &nbsp;
	                    <% } %>
	                    <% if(loginUser != null && loginUser.getNickname().equals(m.getMarketWriter())) {%>
	                    	<a href="<%=contextPath%>/updateForm.market?mno=<%=m.getMarketNo()%>">수정하기</a>
	                    <% } %>
	                </div>
	                <div id="writer">
	                    <div id="writer-pic"><img src="resources/img/profile_default.png" alt=""></div>
	                    <span id="writer-id"><%= m.getMarketWriter() %></span>
	                </div>
	            </div>
			</div>
	
			<div id="photo-area">
	            <div id="demo" class="carousel" data-ride="carousel" data-interval="false">
	              
	                <!-- The slideshow -->
	                <div class="carousel-inner">
	                <% if(!list.isEmpty()) { %>
	                	<% for(int i=0; i<list.size(); i++) { %>
	                		<% if(i == 0) { %>
	                			<div class="carousel-item active">
	                    			<img src="<%= contextPath %>/<%= list.get(0).getFilePath() + list.get(0).getChangeName() %>" alt="">
	                  			</div>
	                  		<% }else { %>
	                  			<div class="carousel-item">
	                    			<img src="<%= contextPath %>/<%= list.get(i).getFilePath() + list.get(i).getChangeName() %>" alt="">
	                  			</div>
	                  		<% } %>
	                	<% } %>
	                <% } %>
	                
	                </div>
	              	<script>
	              		$(function(){
		              		if(<%= !list.isEmpty()%>){
		              			$(".carousel-inner").css({"background":"url('')"});
		              		}	              			
	              		})
	              	</script>
	              	<% if(list.size()>1) { %>
		                <a class="left carousel-control" href="#demo" data-slide="prev" onclick="$('#demo').carousel('prev')">
	                    	<img src="resources/img/left_arrow.png" id="left-controller">
	                    </a>
						<a class="right carousel-control" href="#demo" data-slide="next" onclick="$('#demo').carousel('next')">
							<img src="resources/img/right_arrow.png" id="right-controller">
						</a>
					<% } %>
	              
	           </div> 
	       </div>
	       
	       <div id="input-area">
	       		<!-- 카테고리에 따라서 색이 다름 인라인으로 하기 -->
	       		<% if(m.getdCategory().equals("1")) { %>
					<div id="price-area" style="color:darkgreen"><%= m.getPrice() %>원</div>
				<% }else { %>
					<div id="price-area" style="color:orange"><%= m.getPrice() %>원</div>
				<% } %>
				<div id="text-area">
				<% if(m.getMarketContent() != null) { %>
					<%= m.getMarketContent() %>
				<% } %>
				</div>
	       </div>
	       
	       <hr style="border: solid 1px rgb(179, 178, 178);">
	
	        <div id="reply-area">
				<div id="reply-top">
					<div id="reply-count-area">
						<span>댓글</span>
						<span id="reply-count"><%=replyCount %></span>
					</div>
					<div id="btn-area">
					<% if(loginUser != null && loginUser.getNickname().equals(m.getMarketWriter())) {%>
						<button type="button" class="btn" data-toggle="modal" data-target="#deleteAskModal">글삭제</button>
					<% } %>
						<a href="<%=contextPath%>/main.market?page=1" class="btn">목록</a>
					</div>
				</div>
				<div id="write-reply">
	            	<% if(loginUser != null) { %>
		                <div id="writearea-pic"><img src="<%=contextPath %>/<%=loginUser.getMemImg() %>" alt=""></div>
		                <input type="text" id="reply-input" placeholder="댓글을 남겨 보세요." required>
	                <% }else { %>
	                	<div id="writearea-pic"><img src="resources/img/profile_default.png" alt=""></div>
	             		<input type="text" id="reply-input" placeholder="로그인 후 댓글을 남겨보세요." readonly>
	                <% } %>
		                <button class="btn" id="reply-enrollbtn" onclick="insertReply();">등록</button>
	            </div>

	            <div id="replies-area">
	            
	            </div>

	            <div id="paging-area" align="center">

	            </div>
			</div>
	       
	    </div>
	</div>
	<script>
		$(function(){
			selectReplyList(1);			
		});
		
		function insertReply(){
			
			$.ajax({
				url:"rinsert.market",
				data:{
					content:$("#reply-input").val(),
					mno:<%=m.getMarketNo()%>
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
				url:"rlist.market",
				data:{mno:<%=m.getMarketNo()%>, rpage:rpageNo},
				success:function(result){
					
					let reply="";
					if(result.list == null){
						reply = "<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>";
						$("#replies-area").html(reply);
					}else{
						for(let i=0; i<result.list.length; i++){
							let pfPath = "";							
							if(result.list[i].writerImg != null){
								pfPath = '<%=contextPath%>/' + result.list[i].writerImg;							
							}
							reply += "<div class='replies'><div class='profile-pic'><img src='" + pfPath + "' alt=''></div>";
							reply += "<div class='user-name'>" + result.list[i].writerNickname + "</div>";
							reply += "<div class='reply-content'>" + result.list[i].replyContent + "</div>";
							reply += "<a href='' class='btn delete-btn'>x</a>";
							reply += "<div class='reply-info'>" + result.list[i].modifyDate + "&nbsp;&nbsp; <a href=''>수정</a><a href=''>신고</a></div></div>";
						}
						
						$("#replies-area").html(reply);						
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
    				
                    $("#paging-area").html(paging);
                    
				},error:function(){
					console.log("댓글목록 조회용 ajax 통신 실패");
				}
			})
		}
	</script>
	
	<%@ include file="../bCommon/reportDeleteModals.jsp" %>
	<script>
		function deleteContent(){

			$.ajax({
				url: "delete.market",
				type:"post",
				data: {mno : <%=m.getMarketNo()%>},
				success:function(result){
					if(result>0){
						$("#deleteCompleted").modal('show');
					}
				},
				error:function(){
					console.log("게시글 삭제 실패!");
				}
			})
		}
		
		$(function(){
			$("#deleteCompletedclosebtn").click(function(){
				location.href="main.market?page=1";
			})
		})
	</script>

    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>