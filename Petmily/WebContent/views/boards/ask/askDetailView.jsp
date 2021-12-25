<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="resources/css/boards/ask/askDetailView.css" rel="stylesheet">
<link href="resources/css/boards/bCommon/reply.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>
	<div id="outer">
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
	                    <div id="writer-pic"><img src="resources/img/profile_default.png" alt=""></div>
	                    <span id="writer-id">bomilove3</span>
	                </div>
	            </div>
			</div>
	        <div id="photo-area">
	            <div id="demo" class="carousel" data-ride="carousel" data-interval="false">
	              
	                <!-- The slideshow -->
	                <div class="carousel-inner">
	              <%--   <% if(!list.isEmpty()) { %>
	                	<% for(int i=0; i<list.size(); i++) { %>
	                		<% if(i == 0) { %> --%>
	                			<div class="carousel-item active">
	                    			<%-- <img src="<%= contextPath %>/<%= list.get(0).getFilePath() + list.get(0).getChangeName() %>" alt=""> --%>
	                  			</div>
	                  		<%-- <% }else { %> --%>
	                  			<div class="carousel-item">
	                    			<%-- <img src="<%= contextPath %>/<%= list.get(i).getFilePath() + list.get(i).getChangeName() %>" alt=""> --%>
	                  			</div>
	                  		<%-- <% } %>
	                	<% } %>
	                <% } %>
	                 --%>
	                </div>
	              	<%-- <script>
	              		$(function(){
		              		if(<%= !list.isEmpty()%>){
		              			$(".carousel-inner").css({"background":"url('')"});
		              		}	              			
	              		})
	              	</script> --%>
	              	<%-- <% if(list.size()>1) { %> --%>
		                <a class="left carousel-control" href="#demo" data-slide="prev" onclick="$('#demo').carousel('prev')">
	                    	<img src="resources/img/left_arrow.png" id="left-controller">
	                    </a>
						<a class="right carousel-control" href="#demo" data-slide="next" onclick="$('#demo').carousel('next')">
							<img src="resources/img/right_arrow.png" id="right-controller">
						</a>
					<%-- <% } %> --%>
	              
	           </div> 
	       </div>
	        <div id="text-area" align="left">
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
	           	안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.안녕하세요 감사합니다.
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
	        
	    </div>
		
	
	</div>
    
    <%@ include file="../bCommon/reportDeleteModals.jsp" %>
    
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>