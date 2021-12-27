<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.boards.missing.model.vo.Missing, com.pm.common.model.vo.Attachment" %>
<%
	Missing mi = (Missing)request.getAttribute("mi");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="resources/css/boards/missing/missingDetailView.css" rel="stylesheet">
<link href="resources/css/boards/bCommon/reply.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>
<body>

	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="missingSidebar.jsp" %>
	    <div class="content-area" align="center">
	    	<div id="top">
				<div id="title-area">
				<% if(loginUser != null) { %>
	                <button type="button" class="btn" id="enroll" onclick="location.href='<%= contextPath %>/enrollForm.missing';">글쓰기</button>
	            <% } %>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
	            <div id="info-area">
	                <div id="info">
	                    <%= mi.getEnrollDate() %> &nbsp;&nbsp;&nbsp;&nbsp;조회 <%=mi.getCount() %>&nbsp;&nbsp;&nbsp;
	                    <% if(loginUser != null) { %>
	                    <a data-toggle="modal" data-target="#reportAskModal">신고</a> &nbsp;
	                    <% }%>
	                    <% if(loginUser != null && loginUser.getNickname().equals(mi.getMissingWriter())) { %>
	                    <a href="<%=contextPath%>/updateForm.missing?miNo=<%=mi.getMissingNo()%>">수정하기</a>
	                    <% } %>
	                </div>
	                <div id="writer">
	                    <div id="writer-pic"><img src="resources/img/profile_default.png" alt=""></div>
	                    <span id="writer-id"><%=mi.getMissingWriter() %></span>
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
				<!-- 찾고있어요 -->
				<div class="select-ddcategory">
					<span class="info-title">구분</span>
					<% if(mi.getdCategory() == 1){ %>
					<span>찾고있어요</span>
					<% } else{ %>
					<span>보호하고있어요</span>
					<% } %>
				</div>
				<div class="category-select-area">
					<span class="info-title">대상</span>
					<% if(mi.getCategory() == 1) { %>
						<span>강아지</span>
					<% } else if(mi.getCategory() == 2) {%>
						<span>고양이</span>
					<% }else { %>
						<span>기타</span>
					<% } %>
				</div>
				<div class="gender-select-area">
					<span class="info-title">성별</span>
					<% if(mi.getpGender().equals("F")) { %>
						<span>암컷</span>
					<% }else { %>
						<span>수컷</span>
					<% } %>
				</div>
				<div class="name-area">
					<span class="info-title">이름</span>
					<span><%=mi.getpName() == null ? "" : mi.getpName()%></span>
				</div>
				<div class="age-area">
					<span class="info-title">나이</span>
					<span><%=mi.getpAgeFrom() %>세 ~ <%=mi.getpAgeTo() %>세</span>
				</div>
				<div class="missing-date-area">
					<span class="info-title">발생일</span>
					<span><%=mi.getMissingDate() %></span>
				</div>
				<div id="missing-place-area">
					<div class="adTitle info-title">발생장소</div>
					<div class="address-content"><%=mi.getLocation() %></div>
				</div>
				<div class="feature-area">
					<span class="info-title">신체특징</span>
					<div><%=mi.getFeature() == null ? "" : mi.getFeature()%></div>
				</div>
	
			</div>
			<script>
				$(function(){
					if(<%=mi.getdCategory()%> == 2){
						$(".info-title").attr('class', 'info-titleF');
						$("#missing-place-area").children("div").first().addClass('adTitle');
					}
				})
			</script>
			
			<hr style="border: solid 1px rgb(179, 178, 178);">
	
	        <div id="reply-area">
				<div id="reply-top">
					<div id="reply-count-area">
						<span>댓글</span>
						<span id="reply-count">2</span>
					</div>
					<div id="btn-area">
					 	<% if(loginUser != null && loginUser.getNickname().equals(mi.getMissingWriter())) { %>
						<button type="button" class="btn" data-toggle="modal" data-target="#deleteAskModal">글삭제</button>
						<% } %>
						<a href="<%=contextPath%>/main.missing?page=1" class="btn">목록</a>
					</div>
				</div>
				<div id="write-reply">
					<div id="writearea-pic"><img src="resources/img/profile_default.png" alt=""></div>
						<form action="">
							<input type="text" placeholder="댓글을 남겨 보세요." required>
							<button class="btn" id="reply-enrollbtn">등록</button>
						</form>
				</div>
				
				<div class="replies">
					
					<div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
					<div class="user-name">choco22</div>
					<div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
					<a href="" class="btn delete-btn">x</a>
					<div class="reply-info">xxxx-xx-xx &nbsp;&nbsp; <a href="">수정</a><a href="">신고</a></div>
					
					<!--<div>등록된 댓글이 없습니다. 첫번째 댓글을 달아보세요!</div>-->
				</div>
				
			</div>
	        
	        <%@ include file="../bCommon/boardPagingBar.jsp" %>
			
	    </div>
    
    </div>
    
    <script>
		function deleteContent(){

			$.ajax({
				url: "delete.missing",
				type:"post",
				data: {miNo : <%=mi.getMissingNo()%>},
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
				location.href="main.missing?page=1";
			})
		})
	</script>
    
    <%@ include file="../bCommon/reportDeleteModals.jsp" %>
    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>