<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.admin_Inquiry.model.vo.Inquiry, com.pm.admin_Login.model.vo.AdminMember" %>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
 
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
    /* 큰 틀 */
    .outer{
        width:1100px;
        height:auto;
        margin:auto;
    }
    .outer div{
        /* float:left; */
    }
   /* 상단 회색바 */
    .top{
       width:1100px;
        height:100px;
    }
    /* 검색창 (카테고리 분류, 검색어 검색) */
    .middle{
       width:1100px;
        height:auto;
   }
    .middle div{
        float:left;
    }
    /* 상품문의 조회 테이블*/
    .table-bordered{
          margin:none;
    }
    
    /* 버튼(등록,수정,삭제), 테이블, 페이징바 */
    .bottom{
        width:1100px;
        float:center;
    }
    .dropdown{
        padding-right:30px;
    }
    .allselect{
        width:100%;
    }

	/* 삭제 모달창 버튼들 */
	#iDeleteModal {
		align:center;
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
   
      <!-- 상단 회색바 (게시판 이름) -->
        <div class="top">
           <br>
              <h2 style="color:gray">&gt; 관리자 고객센터</h2>
                    <hr>
            <br>
               <h5>상품문의 관리</h5>
       </div>
       <br><br>
   
       <!-- 검색창 (답변분류, 검색어입력, 검색버튼) -->
       <div class="middle">
       <!-- 검색폼 -->
       <form >
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
                       
               <br><br><br><br><br>
            
            <div class="allselect" align="center">
                   <button type="button" class="btn btn-warning" >검색</button>
                   <hr>
            </div>
            
               <br><br><br><br><br>
                   
        </form>
          </div>
       
        <!-- 버튼, 테이블, 페이징바 -->
        <div class="bottom">
   
            <!-- 상품문의 조회 테이블 -->
            <div class="table-paging" style="width:100%">
               <table id="inquirytable" class="table table-bordered" style="margin:none;">
                   <thead>
                       <tr align="center">
                           <th width="100">번호</th>
                           <th width="150">등록일</th>
                           <th width="400">문의제목</th>
                           <th width="150">작성자</th>
                           <th width="150">처리상태</th>
                           <th colspan="2" width="200">답변 등록/삭제</th>
                       </tr>
                   </thead>
                   
                   <tbody>
                   <% if(list.isEmpty()) { %>
                       <!--1. 게시글 없을 경우-->
                       <tr align="center">
                           <td colspan="6">조회된 게시글이 없습니다</td>
                       </tr>
                   <% }else { %>   
                       <!--2. 게시글 있을 경우-->
                   <% for(Inquiry i : list) { %>
                       <tr align="center">
                           <td><%= i.getPinquiryNo() %></td>
                           <td><%= i.getPinquiryDate() %></td>
                           <td><%= i.getPinquiryTitle() %></td>
                           <td><%= i.getMemNo() %></td>

                    <% if (i.getReplyContent() != null) { %>
                          <td>답변완료</td>
                   <% }else { %>
                          <td>미완료</td>
                          
                   <% } %>
                   
                         <td><button class="btn btn-sm btn-warning" id="replybtn"  data-toggle="modal" data-target="#iReplyModal">등록</button>
                         	 <button class="btn btn-sm btn-danger" id="deletebtn"  data-toggle="modal" data-target="#iDeleteModal">삭제</button></td>

                   <% } %>
                   <% } %>
                   
                         
                       </tr>
                       
                
                   </tbody>
                   </table>
              </div>
               
               
               <!-- 삭제 모달 Modal -->
               <div class="modal fade" id="iReplyModal" >
                  <div class="modal-dialog modal-dialog-centered">
                     <div class="modal-content" style="width:500px;">

                        <!-- Modal body -->
                        <div class="modal-body" align="center">
                           <div class="modalMsg-area">
                                <!-- (상품문의) 답변 입력폼 -->
              					<form action="<%= contextPath %>/adminInsert.iq?inum=<%= list.get(0).getPinquiryNo() %>" id="enroll-form-inquiry" method="post">
	
	      							<input type="hidden" name="managerNo" value="<%= loginAdmin.getManagerNo() %>">
	         						<!--  상품문의 답변입력창 -->
	            					<table>
	                					<tr>
	                   						<th align="center" style="width:450px">답변 내용</th>
	                					</tr>
	                					<tr>
	                						<td><textarea cols="50" rows="15" name="iqcontent" style="resize:none" required></textarea></td>
	                					</tr>
	            					</table>
	            					<br><br>
	
	            					<!-- 하단 버튼들 -->
	            					<div>
	                					<button type="submit" class="btn btn-sm btn-warning">등록</button>
	                					<a class="btn btn-sm btn-secondary" href="<%= contextPath %>/adminList.iq?cpage=1">목록</a>
	            					</div>

        						</form>
                           </div>     
                        </div>
                        
                     </div>
                  </div>
               </div>

                 <!-- The Modal -->
				  <div class="modal fade" id="iDeleteModal">
				    <div class="modal-dialog modal-lg">
				      <div class="modal-content" style="width:500px">
				      
				        <!-- Modal Header -->
				        <div class="modal-header"  align="center">
				          <div class="modal-title" align="center">답변내용</div>
				        </div>
				        
				        <!-- Modal body -->
				        <div class="modal-body"  align="center">
				          <div><%= list.get(0).getReplyContent() %></div>
				          <input type="hidden" name="managerNo" value="<%= loginAdmin.getManagerNo() %>">
				        </div>
				        
				        <!-- Modal footer -->
				        <div class="modal-footer" align="center">
				          <a href="<%= contextPath %>/adminDelete.iq?inum=<%= list.get(0).getPinquiryNo() %>" class="btn btn-sm btn-danger">삭제</a>
	                	  <a class="btn btn-sm btn-secondary" href="<%= contextPath %>/adminList.iq?cpage=1">목록</a>
				        </div>
				        
				      </div>
				    </div>
				  </div>
           
        <!-- bottom 버튼 끝 -->
          

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
                <button onclick="location.href='<%=contextPath%>/adminList.iq?cpage=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
               <% if(p== currentPage) { %>
                <button disabled><%= p %></button>
                <% }else { %>
                <button onclick="location.href='<%=contextPath%>/adminList.iq?cpage=<%= p %>';"><%= p %></button>
                <% } %>
         <% } %>
         
         <% if(currentPage != maxPage){ %>
               <button onclick="location.href='<%=contextPath%>/adminList.iq?cpage=<%=currentPage+1%>';"> &gt; </button>
         <% } %>
            </div>

      
      
      </div>
      
      
   </div>

</body>
</html>