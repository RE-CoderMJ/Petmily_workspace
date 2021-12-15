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
                
                <!-- 마이펫 관리 -->
                <div class="mypet-area">
                    <div class="pet-box">
                        <div class="title-box">
                            <p class="titles"><span class="required">*</span> 필수입력사항</p>
                            <a href="" class="material-icons ">undo</a>
                        </div>
                        <div href="<%= contextPath %>/PetInforModify.mp" class="material-icons add"></div>
                        <div id="photo-area">
                            <div id="demo" class="carousel" data-ride="carousel" data-interval="false" style="width: 390px;">
                              
                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="resources/img/bomi3.jpg" alt="" width="390px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/bomi2.jpg" alt="" width="390px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="resources/img/bomi4.jpg" alt="" width="390px;">
                                  </div>
                                </div>
                              
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                             </div> 
                        </div>
                        <div id="text-area">
                             <textarea name="text" placeholder="내용을 입력해주세요"></textarea>
                        </div>
                        <div id="file-upload-area">
                                <span class="titles2">파일</span>
                                <span class="required">*</span><br>
                                <span class="titles2">첨부&nbsp;&nbsp;&nbsp;</span>
                        </div>
                        <input id="file2" type="file" multiple>
                         
                        <div id="enroll-btn-area"><button class= "btn">올리기</button></div>
                    </div>
                </div>
            </div>
        </div>
    <br><br>
    </div>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>