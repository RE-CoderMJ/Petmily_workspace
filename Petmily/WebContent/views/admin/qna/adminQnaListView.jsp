<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.admin_Qna.model.vo.Qna, com.pm.admin_Login.model.vo.AdminMember" %>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
 
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
    /* 전체 틀 */
    .outer{
        width:1100px;
        height:auto;
        margin:auto;
    }
    .outer div{
        /*float:left;*/
    }
	/* 상단 회색바 (현재 게시판이름) */
    .top{
        width:1100px;
        height:100px;
    }
    /* 검색창 (답변처리 분류, 검색어 입력창) */
    .middle{
        width:1100px;
        height:audto;
        padding-top:20px;
	}
    .middle div{
        float:left;
    }
    .table-bordered{
        margin:none;
        text-align:center;
    }
    /* 버튼(등록,수정,삭제), 테이블, 페이징바 */
    .bottom{
		width:1100px;
        float:center;
	}
    .dropdown{
        padding-right:30px;
    }
	/* 검색버튼 */
    .allselect{
        width:100%;
    }
	/* 삭제모달창 */
    .modalMsg-area{
        font-weight: bolder;
        font-size: 17px;
        margin-top: 20px;
        height: 70px;
        text-align: center;
    }
    #deletebtn-area>*{
        color: white;
        font-weight: bolder;
        font-size: 15px;
        height: 35px;
        line-height: 5px;
        width: 70px;
        margin-top: -10px;
    }
    #confirm-btn{
        background-color: red;
        margin-right: 2px;
        line-height: 22px;
    }
    #closebtn{
        background-color: gray;
        margin-left: 2px;
    }
    #deleteCompletedclosebtn{
        background-color: orange;
        width: 100px;
        color: white;
        font-weight: bolder;
    }
    /* 마우스로 선택한 줄 항목 */
     #noticetable>tbody>tr:hover{
    	 background:rgb(220, 220, 220);
    	 cursor:pointer;
     }
	/* 페이징바 */
    .paging-area button{
        border:  0;
        background-color: transparent;
        height: 40px;
        width: 40px;
        border-radius: 5px;
     }
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<!-- 메뉴바 -->
	<%@ include file="../../common/admin_menubar.jsp" %>

	<!--  사이드바  -->
	<%@ include file="../../common/admin_cusmainSidebar.jsp" %>

	<!-- 전체 틀 -->
	<div class="outer">

	    <!-- 상단 회색바 (현재 게시판 이름) -->
	    <div class="top">
	        <br>
	        	<h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        <hr>
	        	<h5>Q&A문의 관리</h5>
	        <br>
	        
	    </div>
	
	    <!-- 검색창 (답변 처리상태 분류, 검색어 입력) -->
	    <div class="middle">
	    		<!-- 입력폼 -->
	            <form>
	                <hr>   
	                <br><br>
	
	                <div class="dropdown">
	                     <button type="button" class="btn btn-light" disabled>* 답변</button>
	                     <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background:lightslategray">
	                                       처리상태
	                     </button>
	                     
	                     <div class="dropdown-menu">
	                        <a class="dropdown-item" href="#">미답변</a>
	                        <a class="dropdown-item" href="#">처리완료</a>
	                     </div>
	                </div>

	                <div class="selectzone">
	                    <button type="button" class="btn btn-light" disabled>검색어</button>                                                                                                                                                                                                                                                                                                            
	                    <input type="text" placeholder="검색어를 입력해주세요">
	                </div>
	                
	            </form> 
	                    
	            <br><br><br><br><br>
	                    
	            <div class="allselect" align="center">
	               <button type="button" class="btn btn-warning">검색</button>
	               <hr>
	            </div>
	            
	            <br><br><br><br><br>
	               
	     </div>
	    
	    
	    <!-- 버튼(등록,수정,삭제), 테이블, 페이징바 -->
	    <div class="under">
	        <div class="rightbutton" align="right">
	            <a href="<%= contextPath %>/adminEnrollForm.qna" class="btn btn-sm btn-warning">등록</a>
	            <a href="<%= contextPath %>/adminDelete.qna" class="btn btn-sm btn-danger">삭제</a>
	            
	        	
	            
	            
	           <br><br>
	        </div>
	     </div>
	     
	    <!-- Q&A 조회 테이블 -->
		<div class="bottom" align="right">
			<table id="qnatable"class="table table-bordered" style="margin:none;">
	        	<thead>
	            	<tr>
	                    <th width="100">번호</th>
	                    <th width="150">등록일</th>
	                    <th width="400">문의제목</th>
	                    <th width="150">작성자</th>
	                    <th width="150">처리상태</th>
	                </tr>
	             </thead>
	             
	             <tbody>
	             <% if(list.isEmpty()) { %>
	                <!--1. 게시글 없을 경우-->
	                <tr align="center">
	                    <td colspan="7">조회된 게시글이 없습니다</td>
	                </tr>
	             <% }else { %>
	                <!--2. 게시글 있을 경우-->
	                <% for(Qna q : list) { %>
	                <tr align="center">
	                    <td><%= q.getQnaNo() %></td>
	                    <td><%= q.getQnaDate() %></td>
	                    <td><%= q.getQnaTitle() %></td>
	                    <td><%= q.getMemNo() %></td>
	                    
	                    <% if (q.getQnaReplyContent() == null) { %>
	                    <td>미답변</td>
	                    <% }else { %>
	                    <td>답변완료</td>
	                    <% } %>
	                  <% } %>
	                <% } %>
	                </tr>
	              </tbody>
	         </table>
	      </div>


		<!-- 글 클릭시 상세페이지 조회 -->
    	<script>
    	$(function(){
    		$("#qnatable>tbody>tr").click(function(){
    			location.href = '<%=contextPath%>/adminDetail.qna?num=' + $(this).children().eq(0).text();
    		})
    	})
    	</script>
	       
	      <!-- 페이징바 -->
		  <script>
	      $(function(){
	          $(".paging-area button").click(function(){
	              $(this).siblings(".paging-area button").css({background: "", color:"black"});
	              $(this).css({background: "rgb(247, 198, 4)", color:"black"});
	          })
	      })
	  	  </script>
	  	  
	  	  <br><br><br>

	    
	    <!-- 페이징 바 -->
            <div class="paging-area" align="center">
            <% if(currentPage != 1) { %>
                <button onclick="location.href='<%=contextPath%>/adminList.qna?num=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            	<% if(p== currentPage) { %>
                <button disabled><%= p %></button>
                <% }else { %>
                <button onclick="location.href='<%=contextPath%>/adminList.qna?num=<%= p %>';"><%= p %></button>
                <% } %>
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/adminList.qna?num=<%=currentPage+1%>';"> &gt; </button>
			<% } %>
            </div>
        </div>

	
  	
  	<!-- .outer 닫음 -->
  
  	
	
	
</body>
</html>