<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.boards.market.model.vo.Market, com.pm.common.model.vo.Attachment" %>
<%
	Market m = (Market)request.getAttribute("m");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/market/marketEnrollUpdateForm.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="marketSidebar.jsp" %>
	    <div class="content-area" align="center">
		    <div id="top">
				<div id="list-btn" align="right">
					<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.market?page=1'">목록</button>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
			</div>
	
	        <form action="<%=contextPath%>/enroll.market" method="post" enctype="multipart/form-data">
		        <input type="hidden" value=<%=loginUser.getMemNo() %>>
		        <div id="photo-area">
		        <input type="hidden" name="userNo" value="1" >
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
                      
                      <!-- Left and right controls -->
                      <a class="left carousel-control" href="#demo" data-slide="prev" onclick="$('#demo').carousel('prev')">
                      		<img src="resources/img/left_arrow.png" id="left-controller">
                      </a>
					  <a class="right carousel-control" href="#demo" data-slide="next" onclick="$('#demo').carousel('next')">
					  		<img src="resources/img/right_arrow.png" id="right-controller">
					  </a>
                   </div>
		           
		            <div id="file-upload-area">
		                <p>사진<br>첨부</p>
		                <div id="add-area">
			                <!-- <input name="file1" class="file" type="file" onchange="loadImg(this);"> -->
			                <% if(!list.isEmpty()) { %>
	                        	<!--현재 이 게시글에 딸린 첨부파일이 있을 경우 반복문사용해보기-->
	                        	<% for(int i=0; i<list.size(); i++) { %>
	                        		<div align="left" class="originName"><%= list.get(i).getOriginName() %></div>
	                        		<input type="hidden" name="originFileNo" value="<%= list.get(i).getAttachmentNo() %>">
	                        		<input name="file<%= i+1 %>" class="file" type="file" onchange="loadImg(this);">
	                        	<% } %>
                    		<% } %>
		                </div>
		                <input type="hidden" id="file-count" name="file-count"  value="1">
		            </div>
		            
		            <button id="add-btn" type="button">+</button>
		        </div>
				
	            <div id="input-area">
	                <div id="select-categories">
	                    <span class="titles">구분</span>
	                    <span class="required">*</span>
	                    <select name="category">
	                        <option value="1">강아지</option>
	                        <option value="2">고양이</option>
	                        <option value="3">기타</option>
	                    </select>
	                    <script>
	                    	$(function(){
	                    		$("select[name=category] option").each(function(){
	                    			if($(this).val() == "<%= m.getCategory()%>"){
	                    				$(this).attr("selected", true);
	                    			}
	                    		})
	                    	})
	                    </script>
	                    <select name="d-category" id="select-dcategory">
	                        <option value="1">살래요</option>
	                        <option value="2">팔래요</option>
	                    </select>
	                    <script>
	                    	$(function(){
	                    		$("select[name=d-category] option").each(function(){
	                    			if($(this).val() == "<%= m.getdCategory()%>"){
	                    				$(this).attr("selected", true);
	                    			}
	                    		})
	                    	})
	                    </script>
	                </div>
	                <div id="title-area">
	                    <span class="titles">제목</span>
	                    <span class="required">*</span>
	                    <input type="text" name="title"  placeholder="제목을 입력해주세요" required value="<%= m.getMarketTitle()%>">
	                </div>
	                <div id="price-area">
	                    <span class="titles">판매, 구매희망가격</span>
	                    <span class="required">*</span>
	                    <input type="number" name="price" required value="<%= m.getUpdatePrice() %>">
	                    <span>원</span>
	                </div>
	                <div id="text-area">
	                    <textarea name="content" placeholder="내용을 입력해주세요"><%=m.getMarketContent()%></textarea>
	                </div>
	            </div>    
	            <div align="right" id="enroll-btn-area"><button class= "btn" type="submit">수정하기</button></div>
	        </form>
    	</div>
    </div>
    
    <script>
		$(function(){
			let maxAppend = 1;
			
			$("#add-btn").click(function (){
				if(maxAppend >= 5){
					alert("사진은 5개까지 업로드가 가능합니다.");
					return;
				}
				let $num = ($("#add-area").children("input").last().attr('name')).substring(4);
				let result = Number($num)+1;
				$("#add-area").append("<input class='file' type='file' onchange='loadImg(this);'>");
				$("#add-area").children("input").last().attr('name', 'file' + result);
				maxAppend++;
				$("#file-count").val(maxAppend);
			});						
		})
	</script>
	<script>
		  let clickCount = 0;
          function loadImg(inputFile){
        	  	clickCount++;
        	    if(clickCount == 1){
	        	  	$(".carousel-inner").empty();	        	    	
        	    }
        	    $(".carousel-inner").css({"background":"url('')"});
          		var num = inputFile.getAttribute('name').substring(4);
          		console.log(num);
          		if(inputFile.files.length == 1){
                    
                    const reader = new FileReader();
                    
                    reader.readAsDataURL(inputFile.files[0]);
                    
                    reader.onload = function(e){
                       if(num == 1){
                          $(".carousel-inner").append("<div class='carousel-item active'><img src='' alt=''></div>");
                          $(".active").children("img").attr("src", e.target.result);
                       }else{
                          $(".carousel-inner").append("<div class='carousel-item'><img src='' alt=''></div>");
                        $(".carousel-item").last().children("img").attr("src", e.target.result);
                       }
                       
                    }
                 }else{
                     if(num == 1){
                         $(".active").children("img").attr("src", null);                           
                      }else{                           
                         $(".carousel-item").last().children("img").attr("src", null);
                      }
                 }

          }
          	
	</script>
		            

	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>