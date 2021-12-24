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
<link href="resources/css/boards/missing/missingEnrollUpdateForm.css" rel="stylesheet">

<%@ include file="../../common/links.jsp" %>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
    
    <div id="outer">
	    <%@ include file="missingSidebar.jsp" %>
	    <div class="content-area" align="center">
		    <div id="top">
				<div id="list-btn" align="right">
					<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.missing?page=1'">목록</button>
				</div>
				<hr style="border: solid 1px rgb(179, 178, 178);">
			</div>
	
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
		                <a class="carousel-control-prev" href="#demo" data-slide="prev">
		                  <span class="carousel-control-prev-icon"></span>
		                </a>
		                <a class="carousel-control-next" href="#demo" data-slide="next">
		                  <span class="carousel-control-next-icon"></span>
		                </a>
	                </div>
	              
	                
		        <form action="<%=contextPath%>/update.missing?miNo=<%=mi.getMissingNo() %>" method="post" enctype="multipart/form-data">
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
		            <button id="add-btn" type="button">+</button>
	            </div>
	              
	            </div>
	            
	            <div class="input-area">
                <div class="select-ddcategory">
                    <span>구분</span>
                    <select name="d-category" class="select-dcategory">
                    <option value="1">찾고있어요</option>
                    <option value="2">보호하고있어요</option>
                    </select>
                </div>
                <script>
                   	$(function(){
                   		$("select[name=d-category] option").each(function(){
                   			if($(this).val() == "<%= mi.getdCategory()%>"){
                   				$(this).attr("selected", true);
                   			}
                   		})
                   	})
                   </script>
                <div class="category-select-area">
                    <span>대상</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category" value="1" checked>강아지
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category" value="2">고양이
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="category" value="3">기타
                    </label>
                    </div>
                </div>
                <script>
                   	$(function(){
                   		$("input[name=category]").each(function(){
                   			if($(this).val() == "<%= mi.getCategory()%>"){
                   				$(this).attr("checked", true);
                   			}
                   		})
                   	})
                   </script>
                <div class="gender-select-area">
                    <span>성별</span>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="F" checked>암컷
                    </label>
                    </div>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="M">수컷
                    </label>
                    </div>
                </div>
                <script>
                   	$(function(){
                   		$("input[name=gender]").each(function(){
                   			if($(this).val() == "<%= mi.getpGender()%>"){
                   				$(this).attr("checked", true);
                   			}
                   		})
                   	})
                   </script>
                <div class="name-area">
                    <span>이름</span>
                    <input type="text" name="mpName" required value="<%=mi.getpName()%>">
                </div>
                <div class="age-area">
                    <span style="margin-right: 49px;">나이</span>
                    <input type="number" min="0" name="mpAgeFrom"  value="<%=mi.getpAgeFrom()%>"required>
                    <span>세 ~</span>
                    <input type="number" min="1" name="mpAgeTo" value="<%=mi.getpAgeTo() %>"id="mpAgeTo" required>
                    <span>세</span>
                </div>
                <div class="missing-date-area">
                    <span class="missing-t">발생일</span>
                    <span class="found-t" style="display:none;">발견일</span>
                    <input type="date" name="miDate" value="<%=mi.getMissingDate() %>" required>
                </div>
                <div class="missing-place-area">
                    <span class="missing-t">발생장소</span>
                    <span class="found-t" style="display:none;">발견장소</span>
                    <input type="text" name="mpPlace" id="mpPlace" value="<%=mi.getLocation() %>" placeholder="50자 내외로 입력" required>
                    <div>
                    ex) 서울시 용산구 갈월동 놀이터 앞
                    <br>상세주소로 검색이 가능합니다.
                    </div>
                </div>
                <div class="feature-area">
                    <span>신체특징</span>
                    <textarea name="feature" id="features" placeholder="300자 내외"><%=mi.getFeature() == null ? "" : mi.getFeature()%></textarea>
                    <div>
                    ex)'시츄', '파란색 눈', '초록색 줄무늬 옷'
                    <br>키워드로 검색이 가능합니다.
                    </div>
                </div>
            </div>    
            <div align="right" class="enroll-btn-area"><button class= "btn">올리기</button></div>
       		</form>
	        </div>
		
	    </div>
    	
    </div>
    
    <!-- 선택한 카테고리에 따라 입력 양식 뜨도록 -->
    <script>
    	$(function(){
    		$(".select-dcategory").on("change", function(){
	    		var option = $(".select-dcategory option:selected").val();
	    		console.log(option);
	    		if(option == "found"){
	    			$(".missing-t").hide();
	    			$(".found-t").show();
	    		}else{
	    			$(".missing-t").show();
	    			$(".found-t").hide();
	    		}    		    			
    		})
    	})
    </script>

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
   
   <script>
 
    $(document).ready(function() {
        $('#mpPlace').on('keyup', function() {
 
            if($(this).val().length > 50) {
                $(this).val($(this).val().substring(0, 50));
            }
        });
    });
    
    $(document).ready(function() {
        $('#features').on('keyup', function() {
 
            if($(this).val().length > 300) {
                $(this).val($(this).val().substring(0, 300));
            }
        });
    });
        
    </script>

	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>