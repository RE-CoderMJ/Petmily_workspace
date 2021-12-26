<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.common.model.vo.Attachment, com.pm.petLog.model.vo.PetLog, com.pm.petLog.model.vo.PetsRoom, com.pm.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<PetLog> plList = (ArrayList<PetLog>)request.getAttribute("plList");
	ArrayList<PetsRoom> prList = (ArrayList<PetsRoom>)request.getAttribute("prList");
	ArrayList<Attachment> attList = (ArrayList<Attachment>)request.getAttribute("attList");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogMain.css" rel="stylesheet">
<style>
/* 페이징바 */
.paging-area button{
     border:  0;
     background-color: transparent;
     height: 40px;
     width: 40px;
     border-radius: 5px;
     margin-bottom: 50px;
     margin-top: -10px;
}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
    <div id="right-bar"></div>
    <div id="left-bar"></div>
    
    <div id="outer" align="center">
        <div id="middle-area">
        
        <select name="category" id="search-condition">
           <option value="all">전체 게시글 조회</option>
           <option value="fContents">팔로잉 게시글 조회</option>
        </select>
        <%if(loginUser != null) { %>
        <div id="petsroom-btn" onclick="location.href='<%= contextPath %>/petsRoom.petLog?memNo=<%=loginUser.getMemNo()%>'">
        	<div id="petsroom-icon"><img src="resources/img/petLog/petsRoom.png" alt=""></div>
        	<div>나의 펫츠룸으로 이동</div>
        </div>
        <div id="enroll-btn" onclick="location.href='<%= contextPath %>/enrollForm.petLog'">
        	<div id="enroll-icon"><img src="resources/img/petLog/enroll.png" alt=""></div>
        	<div>나의 펫로그 쓰러가기</div>
        </div>
        <% } %>
        	<br>
        	
        	<% if(!plList.isEmpty()) { %>
        		<% for(int i=0; i<plList.size(); i++) { %>
		            <div class="content-box">
		                <div class="left-part">
		                    <div class="left-top">
		                        	<% for(PetsRoom pr : prList) { %>
		                        		<% if (pr.getMemNo() == plList.get(i).getMemNo2()) { %>
		                        		<div class="profile-img"><img src="<%=contextPath%>/<%=pr.getpProfileImg() %>" alt=""></div>
		                        		<div class="room-name">
		                            		<div onclick="location.href='<%=contextPath%>/petsRoom.petLog?memNo=<%=pr.getMemNo()%>'" style="cursor:pointer"><%= pr.getRoomName() %></div>
		                            	<% } %>
		                            <% } %>
		                            <div class="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
			                        </div>
		                        <button type="button" class="follow-btn">팔로우</button>
		                        <div class="like-btn"><img src="resources/img/heart.jpg" alt=""></div>
		                    </div>
		                    <div class="left-bottom">
		                        <div class="photo-area">
		
		                            <div id="no<%=i %>" class="carousel" data-ride="carousel" data-interval="false">

		                    		<% int ptCount = 0; %>
		                                <!-- The slideshow -->
		                                <div class="carousel-inner">
				                    	<% for(Attachment att: attList) { %>
				                    		<% if(att.getRefNo() == plList.get(i).getPetLogNo()) { %>
				                                  <div class="carousel-item">
				                                    <img src="<%=contextPath%>/<%=att.getFilePath()%><%=att.getChangeName() %>" alt="">
				                                  </div>
				                             	  <% ptCount++; %>
				                            <% } %>    
										<% } %>
	                                	</div>
	                                	<%if(ptCount > 1) { %>
				                                <!-- Left and right controls -->
				                                <a class="carousel-control-prev" href="#no<%=i%>" data-slide="prev">
				                                  <span class="carousel-control-prev-icon"></span>
				                                </a>
				                                <a class="carousel-control-next" href="#no<%=i%>" data-slide="next">
				                                  <span class="carousel-control-next-icon"></span>
				                                </a>
				                        <% } %>
		                            </div>
		                        </div>
		                        <div class="date-area"><%=plList.get(i).getEnrollDate() %></div>
		                    </div>
		                    
		                </div>
		                <div class="right-part">
		                    <% if(loginUser != null && loginUser.getMemNo() == plList.get(i).getMemNo2()) { %>
		                    <button type="button" class="delete-btn" data-toggle="modal" data-target="#deleteAskModal" onclick="getNo(<%=plList.get(i).getPetLogNo()%>);">x</button>
		                    <% } %>
		                    <div class="right-top">
		                        <div class="text-area">
		                        <%=plList.get(i).getPetLogContent() %>
		                        </div>
		                    </div>
		                    <div class="right-middle">
		                        <img src="resources/img/heart.jpg" alt="">
		                        <span>좋아요</span>
		                        <span class="like-count">33</span>
		                        <img src="resources/img/petLog/reply.png" alt="">
		                        <span>댓글</span>
		                        <span class="reply-count">2</span>
		                        <% if(loginUser != null) { %>
		                        	<label data-toggle="modal" data-target="#reportAskModal" class="report-post">게시글 신고</label>
		                        <% } %>
		                        <% if(loginUser != null && loginUser.getMemNo() == plList.get(i).getMemNo2()) { %>
		                        	<label onclick="location.href='<%=contextPath %>/updateForm.petLog?petLogNo=<%=plList.get(i).getPetLogNo() %>'" class="modify-post">수정하기</label>
		                        <% } %>
		                    </div>
		                    <div class="right-bottom">
		                        <div class="reply-area">
		                            <div class="write-reply">
		                                    <form action="">
		                                        <input type="text" placeholder="댓글을 남겨 보세요." required>
		                                        <button type="submit" class="reply-enrollbtn">등록</button>
		                                    </form>
		                            </div>
		                            
		                            <div class="replies">
		                                
		                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
		                                <div class="user-name">choco22</div>
		                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
		                                <div class="reply-info">
		                                	xxxx-xx-xx<br> 
		                                	<label href="">수정</label>
		                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
		                                </div>
		                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
		                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
		                            </div>
		
		                            <div class="replies">
		                                
		                                <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
		                                <div class="user-name">choco22</div>
		                                <div class="reply-content">아이고! 저희집 초코도 그래요! 진정시키는 훈련이 필요할 것 같네요:)</div>
		                                <div class="reply-info">
		                                	xxxx-xx-xx<br> 
		                                	<label href="">수정</label>
		                                	<label href="" data-toggle="modal" data-target="#reportAskModal">신고</label>
		                                </div>
		                                <a type="button" class="delete-reply" data-toggle="modal" data-target="#deleteAskModal">x</a>
		                                <!--<div>등록된 댓글이 없습니다 . 첫번째 댓글을 달아보세요!</div>-->
		                            </div>
		                        </div>
		                    </div>
		                    
		                </div>
		
		            </div>
				<% } %>
            <% } %>
            <!-- 페이징 바 -->
            <div class="paging-area" align="center">
            	<% if(currentPage != 1) { %>
                	<button onclick="location.href='<%=contextPath%>/main.petLog?page=<%=currentPage-1%>';"> &lt; </button>
                <% } %>
                
                <% for(int p=startPage; p<=endPage; p++) { %>
                	<% if(p == currentPage) { %>
                		<button disabled><%= p %></button>
                	<% }else { %>
                		<button onclick="location.href='<%=contextPath%>/main.petLog?page=<%= p %>';"><%= p %></button>
                	<% } %>
                <% } %>
                
                <% if(currentPage != maxPage){ %>
                	<button onclick="loaction.href='<%=contextPath%>/main.petLog?page=<%=currentPage -1%>';">&gt;</button>
                <% } %>
            </div>
            <script>
                $(function(){
                    $(".paging-area button").click(function(){
                        $(this).siblings(".paging-area button").css({background: "", color:"black"});
                        $(this).css({background: "rgb(247, 198, 4)", color:"black"});
                    })
                })
            </script>
        </div>
    </div>
    <input type="hidden" id="deleteNo">
    <script>
    	$(function(){
    		$(".carousel-inner div:first-child").addClass("active");
    	})
    </script>
    
     <script>
	    function getNo(clickedId){
	  		$("#deleteNo").val(clickedId);
	  		console.log($("#deleteNo").val());
	  	}
     
		function deleteContent(){

			$.ajax({
				url: "delete.petLog",
				type:"post",
				data: {petLogNo : $("#deleteNo").val()},
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
				location.href="<%=contextPath%>/main.petLog?page=1";
			})
		})
	</script>
	
	<script>
	$(function(){
     	
 		
 	})
	</script>
    
    <%@ include file="../common/footerbar.jsp" %>
    <%@ include file="../boards/bCommon/reportDeleteModals.jsp" %>
    
</body>
</html>