<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
   /* cont-wrap */
   .cont-wrap{
        margin: 0 auto;
        width: 1000px;
    }
    /* 제일 상단 */
    .title-box{
        padding: 10px;
        width: 100%;
        height: 40px;
    }
    .title-box .titles{
        float: left;
    }
    .title-box a{
        float: right;
        color: rgb(247, 198, 4);
        text-decoration: none;
        cursor: pointer;
    }
    /* * 필수 입력사항 글씨 */
    .required{
        margin-right: 0px!important;
        color: orange!important;
    }
    .titles{
        font-size: 13px;
        color: gray;
    }
    /* 파일첨부 글씨 */
    .titles2{
        font-weight: bolder;
    }
    .ct-tit{
        font-size: 26px;
        font-weight: bold;
    }

    /* 마이펫 관리 */
    .mypet-area{
        /* background-color: burlywood; */
        margin: auto;
        width: 100%;
    }
    .mypet-area .pet-box{
        position: relative;
        width: 590px;
        min-width: 250px;
        height: 850px;
        background-color: white;
        border: 1px solid lightgray;
        /* margin-right: 0px; */
        text-align: center;
        box-shadow: 5px 5px 5px lightgray;
    }
    .carousel-inner{
        margin: auto;
        width: 390px;
        height: 350px;
    } 
    /* 사진 부분 스타일 */
    #demo{
        width: 390px;
        height: 350px;
        border: 1px solid lightgray;
        margin-left: 100px;
        border-radius: 4px;
    }
    .info{
        margin-top: 20px;
        /* margin-left: 70px; */
    }
    #photo-area{
        width: 390px;
        height: 350px;
    }
    .carousel-inner img {
        width: 100%;
        height: 100%;
    }
    #file-upload-area>p{
        float: left;
        font-weight: bolder;
        color: rgb(106, 106, 106);
    }
    #file-upload-area{
        margin-top: 30px;
        /* margin-left: 70px; */
        float: left;
    }
    #file-upload-area>input{
        margin-top: 8px;
    }

    /* 내용 */
    #text-area>textarea{
        width: 390px;
        height: 200px;
        resize: none;
        padding: 10px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid lightgray;    
    }
    /* 파일선택 부분 */
    #file2{
        margin-top: 39px;
    }
    
    /* 올리기 버튼 */
    #enroll-btn-area{
        margin-top: 350px;
        margin-left: 460px;
    }
    #enroll-btn-area>button{
        background: rgb(247, 198, 4);
        font-weight: bolder;
        height: 30px;
        line-height: 2px;
    }
    
</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>
    <br><br> 
    <div class="container" style="max-width:1600px;">
        
        <div class="cont-wrap" align="center">
            <!-- <div class="title-box mt-1 pb-2">
                
            </div> -->
            <div class="content">
                <hr>
                <!-- 마이펫 관리 -->
                <div class="mypet-area">
                    <div class="pet-box">
                        <div class="title-box">
                            <p class="titles"><span class="required">*</span> 필수입력사항</p>
                            <a href="" class="material-icons ">undo</a>
                        </div>
                        <div href="<%= contextPaths %>/PetInforModify.mp" class="material-icons add"></div>
                        <div id="photo-area">
                            <div id="demo" class="carousel" data-ride="carousel" style="width: 390px;">
                              
                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="../../resources/img/bomi3.jpg" alt="" width="390px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="../../resources/img/bomi2.jpg" alt="" width="390px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="../../resources/img/bomi4.jpg" alt="" width="390px;">
                                  </div>
                                </div>
                              
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                                
                                <div id="text-area">
                                    <textarea name="text" placeholder="내용을 입력해주세요"></textarea>
                                </div>
                                <div id="file-upload-area">
                                    <span class="titles2">파일</span>
	                                <span class="required">*</span><br>
                                    <span class="titles2">첨부&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                    <input id="file2" type="file" multiple>
                            </div>
                        </div>
                        <div id="enroll-btn-area"><button class= "btn">수정하기</button></div>
                    </div>
                </div>
            </div>
        </div>
    <br><br>
    </div>
</body>
</html>