<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.admin_Faq.model.vo.Faq, com.pm.admin_Login.model.vo.AdminMember" %>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
   AdminMember loginAdmin = (AdminMember)session.getAttribute("loginAdmin");
 
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
    /* 맨위 현재게시판이름 */
    .top{
       width:1100px;
    }
    /* 버튼들(등록,수정,삭제) */
    #right{
       float:right;
       padding-top:50px;
       padding-right:10px;
    }
    /* 테이블 + 페이징 바 */
    .tablepaging{
       width:1100px;

       text-align:center;
       margin:auto;
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

    	<!-- 상단바 (현재 게시판 이름) -->
    	<div class="top">
            <br>
            	<h2 style="color:gray">&gt; 관리자 고객센터</h2>
            <hr>
            	<h5>FAQ 관리</h5>
            <br>
        </div>

        <!-- 검색창 (카테고리, 검색어) -->
        <div class="select">
            <div align="left">
            
            	<!-- 카테고리, 제목 검색 입력창 -->

                    <div class="input-group mb-3">
                        <select name="faqcate">제목
                            <option value="all" selected>전체</option>
                            <option value="join">회원가입</option>
                            <option value="pwd">비밀번호 재설정</option>
                            <option value="meminfo">회원정보</option>
                            <option value="delete">탈퇴 및 재가입</option>
                            <option value="order">상품 주문/결제</option>
                            <option value="store">스토어 입점 제휴</option>
                            <option value="return">반품/교환</option>
                            <option value="cancle">취소/환불</option>
                            <option value="board">게시글 등록</option>
                            <option value="pic">사진/영상</option>
                            <option value="pet">펫적사항</option>
                            <option value="point">포인트</option>                                                                                                           <option value="other">취소/환불</option>
                        </select>
                     <div class="input-group-prepend">
                        <span class="input-group-text" style="color:black">제목</span>
                     </div>
                     	<input type="text" class="form-control" placeholder="검색어를 입력해주세요">
                     	<a href="" class="btn btn-sm btn-warning">검색</a>
                    </div>


                <br><br>
            </div>
        </div>

		
        <!-- 버튼들(등록, 수정,삭제) -->
        <div class="right" id="right">
            <div>
                <a href="<%= contextPath %>/adminEnrollForm.faq" class="btn btn-sm btn-warning">등록</a>
                <a href="<%= contextPath %>/adminUpdateForm.faq" class="btn btn-sm btn-warning">수정</a>
                
                
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
                
                
            <br><br>
            </div>
        

        <!-- 테이블 + 페이징 바 -->
        <div class="tablepaging">
            <div class="table table-bordered" >
                <table>
                    <thead>
                        <tr>
                            <th width="50"><input type="checkbox" name="" value=""></th>
                            <th width="100">번호</th>
                            <th width="150">분류</th>
                            <th width="650">제목</th>
                            <th width="150">작성자</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% if(list.isEmpty()) { %>
                        <!--1. 게시글 없을 경우-->
                        <tr>
                            <td colspan="6">조회된 게시글이 없습니다!</td>
                        </tr>
                    <% }else { %>
                        <!--2. 게시글 있을 경우-->
					<% for(Faq f : list) { %>
                        <tr>
                            <td><input type="checkbox" name="" value=""></td>
                            <td><%= f.getFaqNo() %></td>
                            
                            <% 
                        	String category = "";
                        
                        	switch(Integer.parseInt(f.getFaqCate())) {
                        	case 1: category="회원가입"; break;
                        	case 2: category="비밀번호재설정"; break;
                        	case 3: category="회원정보"; break;
                        	case 4: category="탈퇴및재가입"; break;
                        	case 5: category="주문결제"; break;
                        	case 6: category="입점제휴"; break;
                        	case 7: category="포인트"; break;
                        	case 8: category="교환환불"; break;
                        	case 9: category="게시물등록"; break;
                        	case 10: category="사진영상"; break;
                        	case 11: category="펫적사항"; break;
                        	case 12: category="기타"; break;
                        	}
                        	%>
                        	<td><%= category %></td>
                            
                            
                            <td><%= f.getFaqTitle() %></td>
                            <td><%= f.getManagerNo() %></td>
                        </tr>
                      <% } %>
					<% } %>
                     </tbody>
             	</table>
           	 </div>  
           	 
           	<!-- 페이징 바 -->
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
                <button onclick="location.href='<%=contextPath%>/adminList.faq?cpage=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            	<% if(p== currentPage) { %>
                <button disabled><%= p %></button>
                <% }else { %>
                <button onclick="location.href='<%=contextPath%>/adminList.faq?cpage=<%= p %>';"><%= p %></button>
                <% } %>
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/adminList.faq?cpage=<%=currentPage+1%>';"> &gt; </button>
			<% } %>
		
            </div>
        </div>

    
    

    
</div>

</body>
</html>