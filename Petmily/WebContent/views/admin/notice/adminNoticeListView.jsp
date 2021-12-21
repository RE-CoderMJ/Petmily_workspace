<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.admin_Notice.model.vo.Notice, com.pm.admin_Login.model.vo.AdminMember" %>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
 
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
    .outer>div{
       float:left;
    }
	/* 맨 위 게시판이름 바 */
    .top{
       width:1100px;
	}
    /* 검색창, 버튼들(등록,수정,삭제) */
    .bottom{
       width:1100px;
       height:70px;
	}
	/* 검색창 */
    .noticeselect{
       width:750px;
       height:300px;
    }
	.bottom>div{
       width:400px;
       height:50px;
       padding-top:15px;
    }
    /* 버튼들(등록,수정,삭제) */
    .buttons{
       width:1100px;
       float:right;
       padding-right:10px;
    }
    /* 테이블 + 페이징바 */
    .table-paging{
        width:1100px;
        float:center;
        text-align:center;
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
    
    <!-- 사이드바 -->
    <%@ include file="../../common/admin_cusmainSidebar.jsp" %>

    <!-- 전체 틀-->
    <div class="outer">

        <!-- 맨 위 게시판이름 -->
        <div class="top">
            <br>
            	<h2 style="color:gray">&gt; 관리자 고객센터</h2>
            <hr>
            	<h5>공지사항 관리</h5>
            <br>
        </div>

        <br><br><br><br><br>
     <%--<% if(loginAdmin != null && loginAdmin.getManagerId().equals("admin")) {%> --%> 
        <!-- 검색창 -->
        <div class="bottom">
            <div class="noticeselect">
            	<!-- 검색어 입력폼 -->
                <form>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="color:black">제목</span>
                    </div>
                        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
						<a href="" class="btn btn-sm btn-warning">검색</a>
                    </div>
                </form>
                <br><br>
            </div>
        </div>
            
        <!-- 버튼 (등록) -->
        <div class="buttons" align="right">
        	<div>
            	<a href="<%= contextPath %>/adminEnrollForm.no" class="btn btn-sm btn-warning">등록</a>

                <br><br>
                
           	</div>
        <%--<% } --%>   
          
        
		<!-- 테이블 + 페이징 바 -->
		<div class="table-paging">

        <!-- 테이블 -->
        <div class="table table-bordered">
	          <table  id="noticetable">
                <thead>
                    <tr>
                        <th width="100">번호</th>
                        <th width="200">분류</th>
                        <th width="700">제목</th>
                        <th width="100">작성자</th>
                    </tr>
                </thead>
                
                <tbody>
                <% if(list.isEmpty()) { %>
                    <!--1. 게시글 없을 경우-->
                    <tr>
                        <td colspan="4">조회된 게시글이 없습니다</td>
                    </tr>
                <% }else { %>
                    <!--2. 게시글 있을 경우-->
                <% for(Notice n : list) { %>
                    <tr>
                        <td><%= n.getNoticeNo() %></td>
                        <% 
                        String category = "";
                        
                        switch(Integer.parseInt(n.getNoticeCate())) {
                        case 1: category="궁금해요"; break;
                        case 2: category="중고거래"; break;
                        case 3: category="찾고있어요"; break;
                        case 4: category="고객센터공지사항"; break;
                        }
                        %>
                    	<td><%= category %></td>
                        <td id="admintitleclick"><%= n.getNoticeTitle() %></td>
                        <td><%= n.getManagerNo() %></td>
                    </tr>
                  <% } %>
				<% } %>
                </tbody>
        	</table>
    	</div>

    	
    	<!-- 글 클릭시 상세페이지 조회 -->
    	<script>
    	$(function(){
    		$("#noticetable>tbody>tr").click(function(){
    			location.href = '<%=contextPath%>/adminDetail.no?num=' + $(this).children().eq(0).text();
    		})
    	})
    	</script>

		<!-- 페이징 바-->
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
                <button onclick="location.href='<%=contextPath%>/adminList.no?cpage=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            	<% if(p== currentPage) { %>
                <button disabled><%= p %></button>
                <% }else { %>
                <button onclick="location.href='<%=contextPath%>/adminList.no?cpage=<%= p %>';"><%= p %></button>
                <% } %>
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/adminList.no?cpage=<%=currentPage+1%>';"> &gt; </button>
			<% } %>
            </div>
        </div>
    

	</div>

</div>
</body>
</html>