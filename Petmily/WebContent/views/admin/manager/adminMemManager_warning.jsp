<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.member.model.vo.Member" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>adminMemManager</title>
    <style>
        
        /* cont-wrap */
        .cont-wrap{
            margin-left: 350px;
        }
        .title-box h3{
            font-size: 24px;
            font-weight: bold;
            color: rgb(196, 195, 195);
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
        /* 검색 박스 */
        .search .form-control{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .search button{
            width: 50px;
            height: 50px;
            border: 1px solid #ddd;
            border-radius: 4px;
            line-height: 50px;
        }
        /* 버튼 박스 */
        .btn-box{
            text-align: right;
        }
        /* 표 */
        table {
            text-align: center;
        }
        /* 페이징바 */
        .paging-area button{
            border:  0;
            background-color: transparent;
            height: 40px;
            width: 40px;
            border-radius: 5px;
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
        .modal-backdrop { opacity:0.3 !important; }

        /* 사이드바 색 고정 */
        #memWarning{
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
        <%@ include file="../../common/admin_menubar.jsp" %>
        
        <div class="container" style="max-width:1600px;">
            <%@ include file="../../common/admin_memSidebar.jsp" %>
    
            <!-- cont-wrap -->
            <div class="cont-wrap">
                <div class="title-box mt-1 pb-2">
                    <h3>> 관리자 회원관리</h3>
                </div>
                <div class="content">
                    <hr>
                    <p class="ct-tit pb-3">블랙리스트 관리</p>
                    <!-- 회원 조회 -->
                    <div class="search-box pb-5">
                        <select class="selectpicker show-tick p-2">
                            <option>회원 아이디</option>
                            <option>회원 이름</option>
                            <option>회원 이메일</option>
                        </select>
                        <div class="search">
                            <form class="form-inline" action=" ">
                              <input class="form-control p-4" type="text" placeholder="조회할 회원을 입력해주세요." style="width: 350px;">
                              <button class="btn" type="submit">
                                <span class="material-icons">search</span>                                    
                              </button>
                            </form>
                        </div>
                    </div>

                    <!-- table -->
                    <div class="table">
                        <!-- btn-box -->
                        <div class="btn-box pb-5" style="width: 100%;">
                            <button onclick="location.href='<%= contextPath %>/blackDelete.ad?mno='+no;" class="btn btn-sm btn-danger mr-2"  data-toggle="modal" data-target="#deleteModal">회원 탈퇴</button>
                        	<input type="hidden" id="memNo" name="mno">
                        </div>
                        <!-- 회원삭제 Modal -->
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
                        <!-- 게시글 삭제완료 Modal -->
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
                    </div>
                    
                        </div>
                        <table style="width: 100%;" class="table table-hover">
                            <thead>
                                <tr>
                                    <th width="30px"><input type="checkbox" name="" value=""></th>
                                    <th width="100px">회원 No</th>
                                    <th width="250px">회원 이메일</th>
                                    <th width="150px">회원 이름</th>
                                    <th width="200px">신고 일자</th>
                                    <th width="200px">회원 상태</th>
                                    <th width="100px">누적신고 수</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--1. 게시글 없을 경우-->
                                <% if(list.isEmpty()) { %>
                                <tr style="display:none">
                                    <td colspan="6">조회된 게시글이 없습니다</td>
                                </tr>
                                <!--2. 게시글 있을 경우-->
                                <% }else { %>
                                <% for(int i=0; i<list.size(); i++) {%>
                                <tr id="row">
                                    <td><input type="checkbox" name="selectCheck" value=""></td>
                                    <td id="mNo"><%= list.get(i).getMemNo() %></td>
                                    <td><%= list.get(i).getMemEmail() %></td>
                                    <td><%= list.get(i).getMemName() %></td>
                                    <td><%= list.get(i).getReportDate() %></td>
                                    <td><%= list.get(i).getStatus() %></td>
                                    <td><%= list.get(i).getReportCount() %></td>
                                </tr>
                                <% } %>
							<% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
			 $(function(){
                 $('input:checkbox[name="selectCheck"]').click(function(){
                     if($('input:checkbox[name="selectCheck"]').is(':checked')){
                         //console.log("확인");
                         clickEvent(event);
                     }else{
                         //console.log("체크해제확인");
                     }
                 })
             });                           

			 function clickEvent(event) {
                 //console.log('target ::', $(event.target));

                 var row = $(event.target).closest('tr');
				
                 var columns0 = row.find('#mNo');

                 var values = "";
				
                 //for(var i=0; i<=4; i++){
	                 //var value = $('columns'+i).val();
	                 $.each(columns0, function(idx, item){
	                	 no = item.innerHTML;
	                 });
                 //}
                 //for(var i=0; i<=4; i++){
                 	console.log(no);
                 //}
                 	$("#memNo").val(no); 
                 	
                 
             }
            </script>
            <br><br><br><br>
            <!-- 페이징 바 -->
            <div class="paging-area" align="center">
                 <% if(currentPage != 1) {%>
                 <button onclick="location.href='<%=contextPath%>/blackMem.ad?cpage=<%=currentPage-1%>';"> &lt; </button>
                 <% } %>
                            
               <% for(int p=startPage; p<=endPage; p++) {%>
			      <% if(p == currentPage) { %>
			      <button disabled><%= p %></button>
			      <% }else { %>
						<button onclick="location.href='<%= contextPath %>/blackMem.ad?cpage=<%= p %>';"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			       <% if(currentPage != maxPage) {%>
			       <button onclick="location.href='<%=contextPath%>/blackMem.ad?cpage=<%=currentPage+1%>';">&gt; </button>
					<% } %>
			
              </div>
              <script>
                $(function(){
                  $(".paging-area button").click(function(){
                    $(this).siblings(".paging-area button").css({background: "", color:"black"});
                    $(this).css({background: "rgb(247, 198, 4)", color:"black"});
                      })
                  })
             </script>
        </div>

    </body>
    </html>
   