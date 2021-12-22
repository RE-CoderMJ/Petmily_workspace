<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.petLog.model.vo.PetLog, com.pm.common.model.vo.Attachment" %>
<%
	PetLog pl = (PetLog)request.getAttribute("pl");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/links.jsp" %>
<link href="resources/css/petLog/petLogEnrollUpdateForm.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <br><br> 
    <div class="container" style="max-width:1600px;">
        
        <div class="cont-wrap" align="center">
            <!-- <div class="title-box mt-1 pb-2">
                
            </div> -->
            <div class="content">
                
                <!-- 펫로그 작성 -->
                <div class="form-area">
                    <div class="write-box">
                        <div class="title-box">
                            <p class="titles"><span class="required">*</span> 필수입력사항</p>
                            <a href="javascript:history.back();" class="material-icons ">undo</a>
                        </div>
                        <form action="<%=contextPath%>/update.petLog?petLogNo=<%= pl.getPetLogNo() %>" method="post" enctype="multipart/form-data">
	                        <input type="hidden" name="writer" value="<%= loginUser.getMemNo()%>">
	                        <div id="photo-area">
	                            <div id="demo" class="carousel" data-ride="carousel" data-interval="false" style="width: 390px;">
							
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
				                      <a class="left carousel-control" href="#demo" data-slide="prev">
				                      		<img src="resources/img/left_arrow.png" id="left-controller">
				                      </a>
									  <a class="right carousel-control" href="#demo" data-slide="next">
									  		<img src="resources/img/right_arrow.png" id="right-controller">
									  </a>
	                             </div> 
	                        </div>
	                        <div id="text-area">
	                             <textarea name="text" id="texts" placeholder="내용을 입력해주세요 (180자 이내))" required><%=pl.getPetLogContent() %></textarea>
	                        </div>
	                        <div id="file-upload-area">
	                                <span class="titles2">사진</span>
	                                <span class="star">*</span><br>
	                                <span class="titles2">첨부</span>
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
	                        <!-- <input id="file2" type="file" multiple> -->
	                         
	                        <div id="enroll-btn-area"><button class= "btn" type="submit">올리기</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <br><br>
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
				$("#add-area").children("input").last().attr('name', 'file' + $maxAppend);
				$("#add-area").children("input").last().on("change", function(){loadImg(this, $maxAppend)});
				$maxAppend++;
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
        $('#texts').on('keyup', function() {
 
            if($(this).val().length > 100) {
                $(this).val($(this).val().substring(0, 180));
            }
        });
    });
        
    </script>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>