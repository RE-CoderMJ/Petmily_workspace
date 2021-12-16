<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		            <div id="demo" class="demo carousel" data-ride="carousel" data-interval="false">

                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        	
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
			                <input name="file1" class="file" type="file" onchange="loadImg(this);">
		                </div>
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
	                    <select name="d-category" id="select-dcategory">
	                        <option value="1">살래요</option>
	                        <option value="2">팔래요</option>
	                    </select>
	                </div>
	                <div id="title-area">
	                    <span class="titles">제목</span>
	                    <span class="required">*</span>
	                    <input type="text" name="title"  placeholder="제목을 입력해주세요" required>
	                </div>
	                <div id="price-area">
	                    <span class="titles">판매, 구매희망가격</span>
	                    <span class="required">*</span>
	                    <input type="number" name="price" required>
	                    <span>원</span>
	                </div>
	                <div id="text-area">
	                    <textarea name="content" placeholder="내용을 입력해주세요"></textarea>
	                </div>
	            </div>    
	            <div align="right" id="enroll-btn-area"><button class= "btn" type="submit">올리기</button></div>
	        </form>
    	</div>
    </div>
    
    <script>
		$(function(){
			var maxAppend = 1;
			
			$("#add-btn").click(function (){
				if(maxAppend >= 5){
					alert("사진은 5개까지 업로드가 가능합니다.");
					return;
				}
				var $num = ($("#add-area").children("input").last().attr('name')).substring(4);
				let result = Number($num)+1;
				$("#add-area").append("<input class='file' type='file' onchange='loadImg(this);'>");
				$("#add-area").children("input").last().attr('name', 'file' + result);
				maxAppend++;
			});						
		})
	</script>
	<script>		
          function loadImg(inputFile){
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