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
     <% if(loginAdmin != null && loginAdmin.getManagerId().equals("admin")) { %>
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
            
        <!-- 버튼 (등록,수정,삭제) -->
        <div class="buttons" align="right">
        	<div>
            	<a href="<%= contextPath %>/adminEnrollForm.no" class="btn btn-sm btn-warning">등록</a>
                <a href="<%= contextPath %>/adminUpdate.no" class="btn btn-sm btn-warning">수정</a>
                
                <!-- 삭제버튼(혜선꺼) : Button to Open the Modal -->
               <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteModal">
                            삭제
               </button>

               <!-- 삭제 모달 Modal -->
               <div class="modal fade" id="deleteModal">
                  <div class="modal-dialog modal-dialog-centered">
                     <div class="modal-content" style="width: 400px;">

                        <!-- Modal body -->
                        <div class="modal-body" align="center">
                           <div class="modalMsg-area">
                                                  정말 삭제하시겠습니까?
                           </div>
                           
                       	   <div id="deletebtn-area">
                           	   <a type="button" class="btn" id="confirm-btn" data-dismiss="modal" data-toggle="modal" href="#deleteCompleted">확인</a>
                           	   <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                           </div>              
                        </div>
                        
                     </div>
                  </div>
               </div>
               
               <!-- 삭제 완료 확인창 Modal -->
               <div class="modal fade" id="deleteCompleted">
                  <div class="modal-dialog modal-sm modal-dialog-centered">
                     <div class="modal-content">

                        <!-- Modal body -->
                        <div class="modal-body" align="center" style="text-align: center;">
                           <div class="modalMsg-area">
                                                  정상적으로 삭제되었습니다.
                           </div>
                           
                           <div>
                           <button type="button" class="btn" data-dismiss="modal" id="deleteCompletedclosebtn">닫기</button>
                           </div>              
                        </div>
                  
                     </div>
                  </div>
               </div>
               
			<br><br>
           	</div>
        <% } %>   
          
        
		<!-- 테이블 + 페이징 바 -->
		<div class="table-paging">

        <!-- 테이블 -->
        <div class="table table-bordered" id="noticetable">
            <table>
                <thead>
                    <tr>
                        <th width="50"><input type="checkbox" name="" value=""></th>
                        <th width="100">번호</th>
                        <th width="200">분류</th>
                        <th width="650">제목</th>
                        <th width="100">작성자</th>
                    </tr>
                </thead>
                
                <tbody>
                <% if(list.isEmpty()) { %>
                    <!--1. 게시글 없을 경우-->
                    <tr>
                        <td colspan="6">조회된 게시글이 없습니다</td>
                    </tr>
                <% }else { %>
                    <!--2. 게시글 있을 경우-->
                <% for(Notice n : list) { %>
                    <tr>
                        <td><input type="checkbox" name="" value=""></td>
                        <td><%= n.getNoticeNo() %></td>
                        
                        
                        
                        <% 
                        String category = "";
                        
                        switch(Integer.parseInt(n.getNoticeCate())) {
                        case 1: category="궁금해요"; break;
                        case 2: category="중고거래"; break;
                        case 3: category="찾고있어요"; break;
                        case 4: category="고객센터 공지사항"; break;
                        }
                        %>
                        <td><%= category %></td>
                        
                        
                        
                        
                        
                        
                        <td><%= n.getNoticeTitle() %></td>
                        <td><%= n.getManagerNo() %></td>
                    </tr>
                  <% } %>
				<% } %>
                </tbody>
        	</table>
    	</div>
    	
    	

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


</body>
</html>