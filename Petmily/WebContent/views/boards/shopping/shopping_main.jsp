<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

div {
   border: px solid red;
}

div, img, li, a{
    box-sizing: border-box;
}
 
   
/* 스토어 메인 스타일 */
.content-area{
width: 1400px;
height: auto;
margin: auto;
margin-bottom: 250px;
}

.content-area > div{
width: 85%;
}
#outer{
	width: 1600px;
	height: auto;
	margin: auto;
}


/* 중간영역 스타일 */
#middle-area>div{
float: left; 
width:592px;
margin-top: 25px;
}
#write{
height: 27px;
line-height: 3px;
}

/* 컨텐츠영역 */

#content-area{
    height: 800px;
    padding-top: 0px;
    padding-left: 0px;
}
.content-box-area{
    width: 1200px;
    float: left;
    margin-left: 0px;
    margin-bottom: 50px;	
}

.store-content-box-area{
            width: 120px;
            height: 170px;
            cursor: pointer;
            display: inline-block;
            margin:0 30px;
            margin-top:50px;
        }
        
        .photo-box{
            width: 120px;
            height: 120px;
            border: 1px solid black;
        }
        .content-title{
            font-weight: bolder;
            font-size: 15px;
            margin-top: 3px;

            height: 23px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
        }
        .sell-price{
            font-weight: bolder;
            color: orange;
            font-size: 14px;
        }

.dpf-area >div{
	text-overflow:ellipsis;
    white-space:nowrap;
    overflow:hidden;

	.carousel-inner img {
    width: 80%;
    height: 80%;
  }

}</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
       <!-- 메뉴바, 사이드바 -->
	   <%@ include file="../../common/menubar.jsp"%>
	   <%@ include file="shoppingsidebar.jsp"%>
	   
	   <div class="content-area" align="center">
	
	      <div id="title-area">
	            <div id="title1"></div>
				
				<div id="demo" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators">
					  <li data-target="#demo" data-slide-to="0" class="active"></li>
					  <li data-target="#demo" data-slide-to="1"></li>
					  <li data-target="#demo" data-slide-to="2"></li>
					</ul>
					
					<!-- The slideshow -->
					<div class="carousel-inner">
					  <div class="carousel-item active">
						<img src="resources/img/ad1.jpg" alt="Los Angeles" width="1000" height="350">
					  </div>
					  <div class="carousel-item">
						<img src="resources/img/ad2.jpg" alt="Chicago" width="1000" height="350">
					  </div>
					  <div class="carousel-item">
						<img src="resources/img/ad3.jpg" alt="New York" width="1000" height="350">
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
	      
	      <div id="search-area">
	     	           
	         </form>
	      </div>
	
	      <div id="middle-area">
	         <div align="left">
	         <b>베스트</b> <br> <br>

				<button type="button" class="btn btn-light btn-sm">전체</button>
				<button type="button" class="btn btn-light btn-sm">사료</button>
				<button type="button" class="btn btn-light btn-sm">간식</button>
				<button type="button" class="btn btn-light btn-sm">건강 관리</button>
				<button type="button" class="btn btn-light btn-sm">위생/배변</button>
				<button type="button" class="btn btn-light btn-sm">미욕/목욕</button>
				<button type="button" class="btn btn-light btn-sm">장난감</button>
	         </div>
	         
	         <br><br>
	      </div>
	      <div class="notice-area" align="left">
	       
	      </div>
		   
	      <div id="content-area">
	         <div class="content-box-area">
				<div align="right">
					<button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/';">전체보기</button>
				 </div>
	           	    <div class="content-info-area" align="left">
					<div id="store-content-area">
						<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">꿀맛 사료</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>
						<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">댕댕 샴푸</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>
						<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">치석제거 껌</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>
						<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">고양이 화장실</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>
    					<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">고양이 화장실</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>
							<div class="store-content-box-area">
						    <div class="photo-box"></div>
							<div class="content-title" align="left">고양이 화장실</div>
							<div class="sell-price" align="left">12,000원</div> 
						</div>	
						<div id="store-content-area">
							<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>
							<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>
							<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>
							<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>
							<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>
								<div class="store-content-box-area">
								<div class="photo-box"></div>
								<div class="content-title" align="left">고양이 화장실</div>
								<div class="sell-price" align="left">12,000원</div> 
							</div>	
						</div>
						<div id="middle-area">
							<div align="left">
							<b>신상</b> <br> <br>
			   
							   <button type="button" class="btn btn-light btn-sm">전체</button>
							   <button type="button" class="btn btn-light btn-sm">사료</button>
							   <button type="button" class="btn btn-light btn-sm">간식</button>
							   <button type="button" class="btn btn-light btn-sm">건강 관리</button>
							   <button type="button" class="btn btn-light btn-sm">위생/배변</button>
							   <button type="button" class="btn btn-light btn-sm">미욕/목욕</button>
							   <button type="button" class="btn btn-light btn-sm">장난감</button>
							</div>
							
							<br><br>
						 </div>
						 <div class="notice-area" align="left">
						  
						 </div>
						  
						 <div id="content-area">
							<div class="content-box-area">
							   <div align="right">
								   <button type="button" class="btn btn-secondary" id="write" onclick= "location.href = '<%= contextPath%>/';">전체보기</button>
								</div>
									  <div class="content-info-area" align="left">
								   <div id="store-content-area">
									   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>
									   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>
									   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>
									   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>
									   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>
										   <div class="store-content-box-area">
										   <div class="photo-box"></div>
										   <div class="content-title" align="left">고양이 화장실</div>
										   <div class="sell-price" align="left">12,000원</div> 
									   </div>	
									   <div id="store-content-area">
										   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>
										   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>
										   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>
										   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>
										   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>
											   <div class="store-content-box-area">
											   <div class="photo-box"></div>
											   <div class="content-title" align="left">고양이 화장실</div>
											   <div class="sell-price" align="left">12,000원</div> 
										   </div>	
			
							
	      
	   </div>
   
   </div>

   
   <%@ include file="../../common/footerbar.jsp" %>


</body>
</html>