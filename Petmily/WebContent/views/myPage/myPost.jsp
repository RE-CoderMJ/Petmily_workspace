<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.myPage.model.vo.MyPost" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<MyPost> list = (ArrayList<MyPost>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* cont-wrap */
        .cont-wrap{
            /* margin-left: 350px; */
            margin: 0 auto;
            width: 1000px;
        }
        .title-box h3{
            font-size: 24px;
            font-weight: bold;
            color: black
        }
        .ct-tit{
            font-size: 26px;
            font-weight: bold;
        }
        
        /* 셀렉트 박스 */
        .search-box{
            display: flex;
        }
        .selectpicker{
            width: 150px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        /* 검색영역 스타일 */
        .search-area{
            width: 900px;
        }
        .search-area>input{
            width: 845px;
            height: 39px;
            border: rgb(247, 198, 4) 2px solid;
            padding-right: 50px;
            padding-left: 5px;
        }
        /* 검색버튼 */
        #search-btn{
        background-image: url("resources/img/searchImg.png");
        background-size: cover;
        width: 30px;
        height: 30px;
        margin-left: -45px;
        }

        /* 표 */
        table {
            text-align: center;
        }

        table td {
            cursor: pointer;
        }

        /* 페이징바 */
        .paging-area button{
            border:  0;
            background-color: transparent;
            height: 40px;
            width: 40px;
            border-radius: 5px;
        }
        /* 사이드바 색 고정 */
        #mypost{
            background: rgb(247, 198, 4);
            color: white;
        }

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

	<div class="container" style="max-width:1700px;">
    
        <%@ include file="../shop\mypage/mypageSidebar.jsp" %>

        <!-- cont-wrap -->
        <div class="cont-wrap">
            <div class="title-box mt-1 pb-2">
                <h3>내가 쓴 게시글 조회</h3>
            </div>
                <hr>
                <br><br>
                <!-- 글 조회 -->
                <div class="search-box pb-5">
                    <select class="selectpicker show-tick p-2">
                        <option>전체</option>
                        <option>궁금해요</option>
                        <option>찾고있어요</option>
                        <option>중고거래</option>
                        <option>상품문의</option>
                        <option>상품리뷰</option>
                        <option>QnA문의</option>
                    </select>
					<div class="search-area">
                        <input type="text" placeholder="검색어를 입력하세요.">
	            		<button class="btn" id="search-btn"></button>
                    </div>
                </div>

        			<input type="hidden" name="userNo" value="<%= loginUser.getMemNo() %>">
                    <table class="table table-hover" style="width: 1000px;">
                        <thead>
                            <tr style="background-color: lightgray;">
                                <th width="50px">No.</th>
                                <th width="150px">분류</th>
                                <th width="550px">제목</th>
                                <th width="150px">작성일</th>
                                <th width="100px">조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--1. 게시글 없을 경우-->
                            <% if(list.isEmpty()) { %>
	                            <tr style="display:none">
	                                <td colspan="5">조회된 게시글이 없습니다</td>
	                            </tr>
                            <!--2. 게시글 있을 경우-->
                             <% } else { %>
                                <% for(int i=0; i<list.size(); i++) {%>
                            <tr>
                                <td><%= i+1 %></td>
                                <td><%= list.get(i).getCategory() %></td>
                                <td><%= list.get(i).getTitle() %></td>
                                <td><%= list.get(i).getEnrollDate() %></td>
                                <td><%= list.get(i).getCount() %></td>
                            </tr>
                            	<% } %>
							<% } %>
                        </tbody>
                    </table>
            </div>
            
        </div>
        <br><br><br><br>
        <!-- 페이징 바 -->
        <div class="paging-area" align="center">
			<% if(currentPage != 1) { %> <!-- 1번 페이지 아닐 경우 이전버튼이 보여진다 -->
		       <button onclick="location.href='<%= contextPath %>/myPost.mp?cpage=<%= currentPage-1 %>&userNo=<%= loginUsers.getMemNo() %>';"> &lt; </button>
			<% } %> <!-- 1번 페이지일 경우 이전버튼이 없다  -->
		
			<% for(int p=startPage; p<=endPage; p++) { %>            
		         <% if(p == currentPage) { %> <!-- 페이지가 현재 보고 있는 페이지라면 -->
		            <button disabled><%= p %></button> <!-- 클릭 안되는 버튼으로 -->
		         <% } else { %>
		            <!-- 숫자 클릭 시 페이지 요청 -->
		            <button onclick="location.href='<%= contextPath %>/myPost.mp?cpage=<%= p %>&userNo=<%= loginUsers.getMemNo() %>';"><%= p %></button>
		        <% } %>
		    <% } %>
		            
		    <% if(currentPage != maxPage) { %> <!-- 마지막 페이지 버튼 아닐 경우 다음버튼이 보여진다 -->
		        <button onclick="location.href='<%= contextPath %>/myPost.mp?cpage=<%= currentPage+1 %>&userNo=<%= loginUsers.getMemNo() %>';"> &gt; </button>
			<% } %> <!-- 마지막 페이지일 경우 다음버튼이 없다 -->
		</div>
		
		<%-- 게시글마다 불러오는 건 어떻게 해야하지
		<script>
	            $(function(){
	                $("table>tbody>tr").click(function(){
	                location.href= '<%= contextPath %>/detail.post?qno=' + $(this).children().eq(0).text();
	                })
	            })
	    </script>
	     --%>

        <div style="margin-top: 200px;">
            
            <%@ include file="../common/footerbar.jsp" %>
        </div>
        

    <br><br>
</body>
</html>