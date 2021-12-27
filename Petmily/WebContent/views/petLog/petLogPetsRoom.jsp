<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.petLog.model.vo.PetsRoom, com.pm.petLog.model.vo.PetLog" %>
<%
	int postCount = (int)request.getAttribute("postCount");
	PetsRoom pr = (PetsRoom)request.getAttribute("pr");
	/* ArrayList<PetLog> list = (ArrayList<PetLog>)request.getAttribute("list"); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogPetsRoom.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div id="right-bar"></div>
    <div id="left-bar"></div>

    <div id="outer" align="center">
        <div id="middle-area">
			<div id="left-part">
                <div id="left-top">
                    <div id="profile-img">
                    <% if(pr.getpProfileImg() != null) { %>
                    	<img alt="" src="<%= contextPath %>/<%=pr.getpProfileImg() %>">
                    <% } %>
                    </div>
                    <div id="room-name">
                        <div><%= pr.getRoomName() %></div>
                        <div id="report-account-btn" data-toggle="modal" data-target="#reportAskModal">신고</div>
                    </div>
                    <button type="button" id="follow-btn">팔로우</button>
                    <!-- <button type="button" id="following-btn">팔로잉</button> -->
                    <div id="room-info">
                        <div class="count info"><%=postCount %></div>
                        <div class="count info follower" data-toggle="modal" data-target="#follower">10</div>
                        <div class="count info following" data-toggle="modal" data-target="#following">5</div>
                        <div class="info-title info">게시글</div>
                        <div class="info-title info follower" data-toggle="modal" data-target="#follower">팔로워</div>
                        <div class="info-title info following" data-toggle="modal" data-target="#following">팔로잉</div>
                    </div>
                    <div id="bio">
                       <%=pr.getBio() == null ? "" : pr.getBio()%>
                    </div>
                    <button type="button" id="edit-profile" data-toggle="modal" data-target="#profile-edit-modal" onclick="getPrInfo(<%=pr.getMemNo()%>);">프로필 수정하기</button>
                </div>
                <div id="left-bottom">
                    <div id="bestpic-title">BEST! PIC!</div>
                    <hr>
                    <div id="bp-content-area">
                        <div class="bp-content">
                            <img src="resources/img/bomi3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/coco3.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/bomi2.jpg" alt="">
                        </div>
                        <div class="bp-content">
                            <img src="resources/img/bomi4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div id="right-part">
	            	<% if(loginUser != null && loginUser.getMemNo() == pr.getMemNo()) { %>
	                	<div align="right" id="enroll-btn" onclick="location.href='<%=contextPath%>/enrollForm.petLog'"></div>
	                <% } %>
            	<div id="list-area">
	                <div id="pictures-area">

	                </div>
	                <div id="paging-area" align="center">

	                </div>
                </div>
                <script>
                    $(function(){
                        $("#paging-area button").click(function(){
                            $(this).siblings("#paging-area button").css({background: "", color:"black"});
                            $(this).css({background: "rgb(247, 198, 4)", color:"black"});
                        })
                    })
                </script>
                <div id="detail-area" style="display:none">
	                <a id="back-icon" class="material-icons ">undo</a>
	                <input type="hidden" id="petLogNo">
	                <div class="photo-area">
	                    <div id="demo" class="carousel" data-ride="carousel" data-interval="false">
	
	                        <!-- The slideshow -->
	                        <div class="carousel-inner">
	                          
	                        </div>
	                        
	                        <!-- Left and right controls -->
		                    <a class="carousel-control-prev" href="#demo" data-slide="prev" onclick="$('#demo').carousel('prev')">
		                           <span class="carousel-control-prev-icon"></span>
		                    </a>
		                    <a class="carousel-control-next" href="#demo" data-slide="next" onclick="$('#demo').carousel('next')">
		                           <span class="carousel-control-next-icon"></span>
		                    </a>
	                    </div>
	
	                </div>
	                <div class="date-area"></div>
	
	                <div class="right-top">
	                    <div class="text-area">
	                       
	                    </div>
	                </div>
	                <script>
	                	$(function(){
	                		selectPetLogList(1);
	                	});
	                	
	                	function selectPetLogList(pageNo){
	                		$.ajax({
	                			url:"pl.petsRoom.petLog",
	                			data:{memNo:<%=pr.getMemNo()%>, page:pageNo},
	                			success:function(result){
	                				
	                				/* $("#room-info").children().first().html(result.list.length); */
	                				
	                				let result2 = "";
	                				if(result.list != null){
		                				for(let i=0; i<result.list.length; i++){
		                					result2 += "<div class='pictures'>"
		                					 			+ "<img src='" + result.list[i].titleImg + "' alt=''>"
		                					 			+ "<input type='hidden' value='" + result.list[i].petLogNo + "'>"
		                					 			+ "</div>";
		                				}
		                				$("#pictures-area").html(result2);
	                				}
	                				
	                				let result3 ="";
	                				if(result.pi.currentPage != 1){
	                					result3 += "<button onclick='selectPetLogList(" + (result.pi.currentPage -1) + ")'>&lt;</button>";
	                				}
	                				console.log(result.pi.currentPage -1);
	                				for(let p = result.pi.startPage; p<=result.pi.endPage; p++){
	                					if(p == result.pi.currentPage){
	                						result3 += "<button disabled>" + p + "</button>";
	                					}else{
	                						result3 += "<button onclick='selectPetLogList(" + p + ")'>" + p +"</button>";
	                					}
	                				}
	                				
	                				if(result.pi.currentPage != result.pi.maxPage){
	                					result3 += "<button onclick='selectPetLogList(" + (result.pi.currentPage +1) + ")'>&gt;</button>";
	                				}
	                				
	        	                    $("#paging-area").html(result3);
	                			},error:function(){
	                				console.log("게시글 목록 조회용 ajax 통신 실패");
	                			}
	                		})
	                	}
	                </script>
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
	                    <% if(loginUser != null && loginUser.getMemNo() == pr.getMemNo()) { %>
	                    	<label class="modify-post">수정하기</label>
	                    	<label data-toggle="modal" data-target="#deleteAskModal" class="delete-btn">X</label>
	                    <% } %>
	                </div>
	                <script>
	                	$(function(){
	                		$(".modify-post").click(function(){
	                			location.href='<%=contextPath%>/updateForm.petLog?petLogNo=' + $("#petLogNo").val();
	                		})
	                	})
	                </script>
	                <div class="right-bottom">
	                    <div class="reply-area">
	                        <div class="write-reply">
	                                <form action="">
	                                    <input type="text" placeholder="댓글을 남겨 보세요." required>
	                                    <button type="submit" class="reply-enrollbtn">등록</button>
	                                </form>
	                        </div>
	                        
	                        <div id="scroll-area">
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
            </div>
        </div>
    </div>
	<!-- 상세페이지 ajax -->
	<script>
		$(function(){
			
			//$(".pictures").click(function selectPetLog(){
			$(document).on("click", ".pictures", function(){	
				const value = $(this).children("input").val();
				
				$.ajax({
					url:"detail.petLog",
					data:{petLogNo:value},
					success:function(datas){
						$(".carousel-inner").empty();
						$("#list-area").hide();
						$("#detail-area").show();
						console.log(datas.pl.petLogNo)
						$(".date-area").html(datas.pl.enrollDate);
						$(".text-area").html(datas.pl.petLogContent);
						$("#petLogNo").val(value);
						if(datas.list != null) {
	                		for(let i=0; i<datas.list.length; i++){
								let path1 = datas.list[i].filePath;
								let path2 = datas.list[i].changeName;
	                			let path3 = "/PM/" + path1 + path2;
	                			console.log(path3);
	                			if(i == 0) {
	                				$(".carousel-inner").append("<div class='carousel-item active'><img src='' alt=''></div>");
	                				$(".carousel-item").children("img").attr("src", path3);
	                			}else{
	                				$(".carousel-inner").append("<div class='carousel-item'><img src='' alt=''></div>");
	                				$(".carousel-item").last().children("img").attr("src", path3);
	                			}
	                		}
						}
						$("#back-icon").click(function(){
							$("#list-area").show();
							$("#detail-area").hide();
							$(".carousel-inner").empty();
						});
					},error:function(){
						console.log("게시글 상세조회용 ajax 통신 실패");
					}
				})
			})
			
		})
	</script>
    <!-- 프로필 수정 모달창 -->
    <div class="container">

        <!-- The Modal -->
        <div class="modal" id="profile-edit-modal">
          <div class="modal-dialog default">
            <div class="modal-content" align="center">

            <button type="button" id="close-profile" class="close" data-dismiss="modal">&times;</button>
            <form action="<%=contextPath%>/update.petsRoom" method="post" enctype="multipart/form-data">
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="edit-profile-img"></div>
                    <div id="roomname-area">
                    <input type="hidden" name="memNo" value="<%=pr.getMemNo()%>">
                        <span id="room-name2">룸 이름</span>
                        <input type="text" id="input-roomname" name="roomName">
                      </div>
                    <div id="file-upload-area">
                      <p>사진<br>첨부</p>
                      <input type='hidden' name='originFileNo' id='originFileNo' value='0'>
                      <input type="file" id="pfImg" name="pfImg" onchange="loadImg(this);">
                    </div>
                    <div id="bio-area">
                      <div id="bio-contents">소개글</div>
                      <textarea name="bio" id="bio-edit" cols="30" rows="10"></textarea>
                    </div>
                    <button class="btn" id="upload-btn">업로드</button>
                </div>
            </form>
            </div>
          </div>
        </div>

      </div>
      <script>
	      function getPrInfo(memNo){
	
				$.ajax({
					url: "select.petsRoom",
					type:"post",
					data:{memNo : memNo},
					success:function(info){
						$("#input-roomname").val(info.pr.roomName);
						$("#edit-profile-img").append("<img src='' alt=''>");
						$("#edit-profile-img").children("img").attr("src", "/PM/" + info.pr.pProfileImg);
						$("#originFileNo").val(info.att.attachmentNo);														
						/* if(info.att.attachmentNo != 0){
							$("#file-upload-area").append("<input type='hidden' id='originFileNo' name='o'")
						} */
						$("#bio-edit").val(info.pr.bio);
						console.log(info.att.attachmentNo);
					},
					error:function(){
						console.log("게시글 삭제 실패!");
					}
				})
			}
	     
          function loadImg(inputFile){
         
              if(inputFile.files.length == 1) {

                  const reader = new FileReader();

                  reader.readAsDataURL(inputFile.files[0]);

                  reader.onload = function(e){
                	  $("#edit-profile-img").children("img").attr("src", e.target.result);
                  }

              	}else{
              		$("#edit-profile-img").children("img").attr("src", "/PM/<%=pr.getpProfileImg()%>");
          		}
          }
      </script>

      <!-- 팔로워 리스트 모달창 -->
      <div class="container">

        <!-- The Modal -->
        <div class="modal" id="follower">
          <div class="modal-dialog modal-sm">
            <div class="modal-content" align="center">

            <button type="button" class="close" data-dismiss="modal">&times;</button>
                <!-- Modal body -->
                <div class="list-title">
                    <span class="title">팔로워</span>
                    <span class="countNo">10</span>
                </div>
                <div class="modal-body list-body">
                    <div class="list-area">
                        <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                        <div class="userId">bmilove3</div>
                        <div class="follow-lst-btn">팔로우</div>
                    </div>
                </div>
            </div>
          </div>
        </div>

      </div>

       <!-- 팔로잉 리스트 모달창 -->
       <div class="container">

        <!-- The Modal -->
        <div class="modal" id="following">
            <div class="modal-dialog modal-sm">
              <div class="modal-content" align="center">
  
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <!-- Modal body -->
                  <div class="list-title">
                      <span class="title">팔로잉</span>
                      <span class="countNo">7</span>
                  </div>
                  <div class="modal-body list-body">
                      <div class="list-area">
                          <div class="profile-pic"><img src="resources/img/profile_default.png" alt=""></div>
                          <div class="userId">bmilove3</div>
                          <div class="following-lst-btn">팔로잉</div>
                      </div>
                  </div>
              </div>
            </div>
          </div>
  

      </div>

    <%@ include file="../boards/bCommon/reportDeleteModals.jsp" %>
    <script>
		function deleteContent(){

			$.ajax({
				url: "delete.petLog",
				type:"post",
				data: {petLogNo : $("#petLogNo").val()},
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
				location.href="<%=contextPath%>/petsRoom.petLog?memNo=<%=pr.getMemNo()%>";
			})
		})
	</script>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>