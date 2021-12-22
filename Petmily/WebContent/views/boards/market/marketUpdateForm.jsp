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
	
	        <form action="<%=contextPath%>/update.market?mno=<%= m.getMarketNo() %>" method="post" enctype="multipart/form-data">
		        <input name="userNo" type="hidden" value=<%=loginUser.getMemNo() %>>
		        <div id="photo-area">
		            <div id="demo" class="carousel" data-ride="carousel" data-interval="false">

                      <!-- The slideshow -->
                      <div class="carousel-inner">
                      		<div class="carousel-item active">
	                        <% if(!list.isEmpty()) { %>
                    			<img src="<%= contextPath %>/<%= list.get(0).getFilePath() + list.get(0).getChangeName() %>" alt="">
		                  	<% } else{ %>
		                  		<img src="" alt="">
		                  	<% } %>
                  			</div>
               				<% if(!list.isEmpty()) { %>
		                		<% for(int i=1; i<list.size(); i++) { %>
		                  			<div class="carousel-item" id="originalImg<%=i+1%>">
            		        			<img src="<%= contextPath %>/<%= list.get(i).getFilePath() + list.get(i).getChangeName() %>" alt="">
				              		</div>
			                	<% } %>
	              			<% } %>
                      </div>
                      
                      <!-- Left and right controls -->
                      <a class="left carousel-control" href="#demo" data-slide="next" onclick="$('#demo').carousel('next')">
                      		<img src="resources/img/left_arrow.png" id="left-controller">
                      </a>
					  <a class="right carousel-control" href="#demo" data-slide="prev" onclick="$('#demo').carousel('prev')">
					  		<img src="resources/img/right_arrow.png" id="right-controller">
					  </a>
                   </div>
		           
		            <div id="file-upload-area">
		                <p>사진<br>첨부</p>
		                <div id="add-area">
			                <% if(!list.isEmpty()) { %>
	                        	<!--현재 이 게시글에 딸린 첨부파일이 있을 경우 반복문사용해보기-->
	                        	<% for(int i=0; i<list.size(); i++) { %>
	                        		<div align="left" class="originName"><%= list.get(i).getOriginName() %></div>
	                        		<input type="hidden" name="originAttNo<%= i+1 %>" value="<%= list.get(i).getAttachmentNo() %>">
	                        		<input name="file<%= i+1 %>" class="file" type="file" onchange="loadImg(this, <%=i+1%>);">
	                        	<% } %>
                    		<% } else{ %>
                    			<input name="file1" class="file" type="file" onchange="loadImg(this, 1);">
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
	                    <textarea name="content" placeholder="내용을 입력해주세요" required><%=m.getMarketContent()%></textarea>
	                </div>
	            </div>    
	            <div align="right" id="enroll-btn-area"><button class= "btn" type="submit">수정하기</button></div>
	        </form>
    	</div>
    </div>
    
    <script>
		$(function(){
			let $maxAppend = Number(($("#add-area").children("input").last().attr('name')).substring(4));
			$("#file-count").val($maxAppend);
			$("#add-btn").click(function (){
				if($maxAppend >= 5){
					alert("사진은 5개까지 업로드가 가능합니다.");
					return;
				}
				//let $num = ($("#add-area").children("input").last().attr('name')).substring(4);
				//let result = $maxAppend+1;
				$("#add-area").append("<input class='file' type='file'>");
				$maxAppend++;
				$("#add-area").children("input").last().attr('name', 'file' + $maxAppend);
				$("#add-area").children("input").last().on("change", function(){loadImg(this, $maxAppend)});
				$("#file-count").val($maxAppend);
			});						
		})
	</script>
	
	<script>
		  //let clickCount = 0;
		  let $imgCount = Number(($("#add-area").children("input").last().attr('name')).substring(4));
		  
		  
          function loadImg(inputFile, num){
        	  //let $imgCount = Number($("#file-count").val());
        	  /*	
        	  clickCount++;
        	    if(clickCount == 1){
	        	  	$(".carousel-inner").empty();	        	    	
        	    }
        	   */
        	    $(".carousel-inner").css({"background":"url('')"});
          		//var num = inputFile.getAttribute('name').substring(4);
          		//console.log(num);
          		if(inputFile.files.length == 1){
                    
                    const reader = new FileReader();
                    
                    reader.readAsDataURL(inputFile.files[0]);
                    
                    reader.onload = function(e){
                    console.log(num, $imgCount);
                    	if(num <= $imgCount){
                    		if(num == 1){
                    			$(".carousel-item").first().children("img").attr("src", null);
                    			$(".carousel-item").first().children("img").attr("src", e.target.result);
                    		}else{
                    			for(let i=2; i<=$imgCount; i++){
                    				let names = "file" + i;
                    				$("#originalImg" + i).children("img").attr("src", null);
	                    			$("#originalImg" + i).children("img").attr("src", e.target.result);                    				
                    			}
                    		}
                    	}else{
                    		$(".carousel-inner").append("<div class='carousel-item'><img src='' alt=''></div>");
                            $(".carousel-item").last().children("img").attr("src", e.target.result);
                            $imgCount++;
                    	}
                    	/*
                    	switch(num){
                    		case 1: $(".active").children("img").attr("src", e.target.result); break;
                    		case 2: $(".carousel-item").children("img").attr("src", e.target.result); break;
                    		case 3: $(".carousel-item").next().children("img").attr("src", e.target.result);break;
                    		case 4: $(".carousel-item").next().next().children("img").attr("src", e.target.result); break;
                    		case 5: $(".carousel-item").last().children("img").attr("src", e.target.result); break;
                    	}
                    	*/
                       /*if(num == 1){
                          //$(".carousel-inner").append("<div class='carousel-item active'><img src='' alt=''></div>");
                          $(".active").children("img").attr("src", e.target.result);
                       }else{
                          $(".carousel-inner").append("<div class='carousel-item'><img src='' alt=''></div>");
                        $(".carousel-item").last().children("img").attr("src", e.target.result);
                       }*/
                       
                    }
                 }else{
            	 
                    switch(num){
             		case 1: $(".carousel-item").first().children("img").attr("src", null); break;
             		case 2: $(".carousel-item").first().next().children("img").attr("src", null); break;
             		case 3: $(".carousel-item").first().next().next().children("img").attr("src", null); break;
             		/* case 4: $(".carousel-item").first().next().next().next().children("img").attr("src", null); break;
             		case 5: $(".carousel-item").last().children("img").attr("src", null); break; */
             		
             		}
                	
                	 /*
                	 if(num == 1){
                         $(".active").children("img").attr("src", null);                           
                      }else{                           
                         $(".carousel-item").last().children("img").attr("src", null);
                      }
                	 */

                 }

          }
          	
	</script>
	
		            

	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>