<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.boards.ask.model.vo.Ask, com.pm.boards.market.model.vo.Market, com.pm.boards.missing.model.vo.Missing, com.pm.petLog.model.vo.PetLog, com.pm.petLog.model.vo.PetsRoom" %>
<%
	PetsRoom pr = (PetsRoom)request.getAttribute("pr");
	ArrayList<PetLog> mPetLogList = (ArrayList<PetLog>)request.getAttribute("mPetLogList");
	ArrayList<Ask> mAskList = (ArrayList<Ask>)request.getAttribute("mAskList");
	ArrayList<Market> mMarketList = (ArrayList<Market>)request.getAttribute("mMarketList");
	ArrayList<Missing> mMissingList = (ArrayList<Missing>)request.getAttribute("mMissingList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common/mainPage.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
</head>
<body>
	<%@ include file="views/common/menubar.jsp" %>

    <div class="outer">


        <div class="content-area" align="center">

            <% if(loginUser == null) { %>
	            <div id="petlog">
	                <div class="smallTitle">PETLOG</div>
	                <div id="content1">
	                    <div id="profile">
	                        <div id="profileimg">
	                            <img src="resources/img/dog.png">
	                        </div>
	                        <br>
	                        <div id="login-user">로그인해주세요</div>
	
	                    </div>
             <% } else{ %>
	            <div id="petlog">
	                <div class="smallTitle">PETLOG</div>
	                <div id="content1">
	                    <div id="profile">
	                        <div id="profileimg">
	                            <img src="<%=contextPath%>/<%=pr.getpProfileImg()%>">
	                        </div>
	                        <br>
	                        <div id="login-user"><%=pr.getRoomName() %></div>
	
	                    </div>          
              <% } %>      
                    
                    
                    <div id="petlogSummary">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                            <% for(PetLog pl : mPetLogList) { %>
                                <div class="swiper-slide"><img src="<%=contextPath%>/<%= pl.getTitleImg()%>"></div>
                            <% } %>
                            </div>
                        
                            <!-- 네비게이션 -->
                            <div class="button-next"><img src="resources/img/right_arrow.png" style="color:pink;"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
                            <div class="button-prev"><img src="resources/img/left_arrow.png"></div><!-- 이전 버튼 -->

                            <!-- 페이징 -->
                            <div class="swiper-pagination"></div>
                        </div>

                    </div>
                </div>



            <div id="store">
                <div class="smallTitle">스토어</div>
                <div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/dog1.png">
                        </div>
                        <br><br> 강아지
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/cat.png">
                        </div>
                        <br><br> 고양이
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/hamster.png">
                        </div>
                        <br><br> 햄스터
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/fish.png">
                        </div>
                        <br><br> 물고기
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/bird2.png">
                        </div>
                        <br><br> 새
                    </div>
                    <div class="storecontent">
                        <div class="storecontentimg">
                            <img src="resources/img/store/go.png">
                        </div>
                        <br><br> 고슴도치
                    </div>
                </div>
            </div>



            <div id="board">
                <div id="ask">
                    <div class="smallTitle">궁금해요 </div>
                    
                    <% for(Ask a : mAskList) { %>
                    <div class="ask-contents">
                    	<input type="hidden" value="<%=a.getAskNo() %>">
                    	<% if(a.getTitleImg() == null) { %>
                        	<div class="ask-photo"><img src="resources/img/default-img.png"></div>
                        <% }else{ %>
                        	<div class="ask-photo"><img src="<%=contextPath %>/<%=a.getTitleImg()%>"></div>
                        <% } %>    
                        <div class="ask-texts">
                            <div class="ask-title"><%=a.getAskTitle() %></div>
                            
                            <div class="ask-text" align="left"><%=a.getAskContent() %></div>
  
                        </div>
                     </div>
					<% } %>
                </div>
                <script>
			         $(function(){
			            $(".ask-contents").click(function(){
			               const num = $(this).children("input").val();

			               location.href = '<%=contextPath%>/detail.ask?ano=' + num;
			            })
			         })
			    </script>


                <div id="market">
                    <div class="smallTitle">중고거래</div>
                        <div id="market-content-area">
	                    <% for(Market m : mMarketList) { %>
	                            <div class="market-content-box-area">
	                            <input type="hidden" value="<%=m.getMarketNo() %>">
	                            <% if(m.getdCategory().equals("2")) { %>
	                                <span class="badge badge-pill sell-icon">팔래요</span>
	                            <% }else { %>
	                                <span class="badge badge-pill buy-icon">살래요</span>
	                            <% } %>
	                            
	                            <% if(m.getTitleImg() == null) { %>
	                                <div class="photo-box"><img src="resources/img/default-img.png"></div>
	                            <% }else{ %>
	                            	<div class="photo-box"><img src="<%=contextPath%>/<%=m.getTitleImg()%>"></div>
	                            <% } %>
	                                <div class="content-title" align="left"><%=m.getMarketTitle() %></div>
	                            <% if(m.getdCategory().equals("2")) { %>
	                                <div class="sell-price" align="right"><%=m.getPrice() %>원</div>
	                            <% }else { %>
	                            	 <div class="buy-price" align="right"><%=m.getPrice() %>원</div>
	                            <% } %>
	                            </div>
	                    <% } %>
                        </div>

                </div>
                <script>
			         $(function(){
			            $(".market-content-box-area").click(function(){
			               const num = $(this).children("input").val();
			               
			               location.href = '<%=contextPath%>/detail.market?mno=' + num;
			            })
			         })
			    </script>
			    
			    
                <div id="missing">
                    <div class="smallTitle">찾고있어요</div>
                    
                    <div id="missing-content-area">
                    <%for (Missing mi : mMissingList) { %>
                        <div class="missing-content-box-area">
                        <input type="hidden" value="<%=mi.getMissingNo() %>">
                           <div style="border:1px solid darkgray;" class="missing-img">
                              <img src="<%= contextPath %>/<%=mi.getTitleImg() %>" alt="">
                           </div>
                           <div class="missing-content-info-area" align="left">
                           <% if(mi.getdCategory() == 2) { %>
                              <div class="found-title">보호하고있어요</div>
                           <% }else { %>
                               <div class="missing-title">찾고있어요</div>
                           <% } %>
                              <div class="gender-age"><%=mi.getpName() == null ? "" : mi.getpName()%> | <%=mi.getpGender().equals("F") ? "암컷" : "수컷"%> | 추정나이: 만 <%=mi.getpAgeFrom()%>세</div>
                              <div class="dpf-area">
                                 <div>발견일자 : <%=mi.getMissingDate() %></div>
                                 <div>발견지역 : <%=mi.getLocation() %></div>
                                 <div>신체특징 : <%=mi.getFeature() == null ? "" : mi.getFeature()%></div>
                              </div>
                           </div>
                        </div>
                     <% } %>
                </div>
            </div>
			<script>
			         $(function(){
			            $(".missing-content-box-area").click(function(){
			               const num = $(this).children("input").val();
			               
			               location.href = '<%=contextPath%>/detail.missing?miNo=' + num;
			            })
			         })
			</script>





        </div>
        
        
    </div>
</div>
        
         <%@ include file="views/common/footerbar.jsp" %>  <!--푸터바 위치 어디에 넣어야하지--> 
</div>
   


    <script>
        new Swiper('.swiper-container', {

            slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
            spaceBetween : 20, // 슬라이드간 간격
            slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

            // 그룹수가 맞지 않을 경우 빈칸으로 메우기
            // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
            loopFillGroupWithBlank : true,

            loop : true, // 무한 반복

            pagination : { // 페이징
                el : '.swiper-pagination',
                clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            },
            navigation : { // 네비게이션
                nextEl : '.button-next', // 다음 버튼 클래스명
                prevEl : '.button-prev', // 이번 버튼 클래스명
            },
        });
    </script>
</body>
</html>