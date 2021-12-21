<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <form action="<%=contextPath%>/enroll.petLog" method="post" enctype="multipart/form-data">
	                        <input type="hidden" name="writer" value="<%= loginUser.getMemNo()%>">
	                        <div id="photo-area">
	                            <div id="demo" class="carousel" data-ride="carousel" data-interval="false" style="width: 390px;">
							
	                                <!-- The slideshow -->
				                      <div class="carousel-inner">
				                           <div class='carousel-item active'>
				                           		
				                           </div>
				                      </div>
				                      
				                      <!-- Left and right controls -->
				                      <a class="left carousel-control" href="#demo" data-slide="next">
				                      		<img src="resources/img/left_arrow.png" id="left-controller">
				                      </a>
									  <a class="right carousel-control" href="#demo" data-slide="next">
									  		<img src="resources/img/right_arrow.png" id="right-controller">
									  </a>
	                             </div> 
	                        </div>
	                        <div id="text-area">
	                             <textarea name="text" id="texts" placeholder="내용을 입력해주세요 (180자 이내))" required></textarea>
	                        </div>
	                        <div id="file-upload-area">
	                                <span class="titles2">사진</span>
	                                <span class="star">*</span><br>
	                                <span class="titles2">첨부</span>
	                                <div id="add-area">
	                         			<input name="file1" class="file" type="file" onchange="loadImg(this);">
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
         let maxAppend = 1;
         
         $("#add-btn").click(function (){
            if(maxAppend >= 4){
               alert("사진은 4개까지 업로드가 가능합니다.");
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
          function loadImg(inputFile){
                var num = inputFile.getAttribute('name').substring(4);
                console.log(num);
                var curNo = $(this).parent().find(".carousel-item").index(this);
                console.log(curNo);
                if(inputFile.files.length == 1){
                    
                    const reader = new FileReader();
                    
                    reader.readAsDataURL(inputFile.files[0]);
                    
                    reader.onload = function(e){
                       if(num == 1){
                    	  //$(".carousel-item [name=file1]").remove();
                          //$(".carousel-inner").append("<div class='carousel-item active'><img src='' alt=''></div>");
                          //$(".carousel-inner").insertAdjacentElement('beforeend', $(".carousel-inner").firstElementChild);
                          $(".carousel-item").first().children("img").remove();
                          $(".carousel-item").first().append("<img src='' alt=''>");
                          $(".carousel-item").first().children("img").attr("src", e.target.result);
                          $(".carousel-item").first().attr('name', 'file1');
                       }else{
                    	  //$(".carousel-item:nth-child(" + num + ")").remove();
                    	  $(".carousel-item [name=file" + num + "]").remove();//여기가 작동하면 될텐데.. 2->2번을 변경할경우에도 last로 간다는게 문제!
                          $(".carousel-inner").append("<div class='carousel-item'><img src='' alt=''></div>");
                          $(".carousel-item").last().children("img").attr("src", e.target.result);
                          $(".carousel-item").last().attr('name', 'file'+num);
                       }
                       
                    }
                 }else{
                     if(num == 1){
                    	 $(".carousel-item").first().children("img").remove();                          
                      }else{                           
                         $(".carousel-item [name=file" + num+ "]").children("img").attr("src", null);
                      }
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