<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.member.model.vo.Member" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");

	System.out.println(pi);
	
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
        /* 세부 카테고리 전체 스타일 */
        .dd-category{
            list-style-type: none;
            color: darkgray;
            font-weight: bolder;
            font-size: 13px;
            width: 60px;
            display: none;
            margin-bottom: 3px;
            cursor: pointer;
            margin-left: 15px;
        }
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
            display: flex;
            justify-content: flex-end;
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
        /* 모달 팝업 */
        .modal .modal-footer{
            justify-content: center;
        }
        .modal .modal-header{
            border-bottom: 0;
        }
        .modal .modal-body{
            margin: 0 70px;
        }
        .modal-body .md-box{
            position: relative;
            margin-bottom: 25px;
        }
        .md-box p{
            font-size: 14px;
            color: #555;
            font-weight: 500;
            margin: 0;
        }
        .md-box input{
            font-size: 22px;
            padding: 5px 0;
            border:0;
            width: 230px;
        }
        .md-box .btn-box{
            position: absolute;
            bottom: 0;
            right: 0;
        }
        .md-box .btn-box button{
            background-color: #d4d4d4;
        }
        .modal-backdrop { opacity:0.3 !important; }
        /* 사이드바 색 고정 */
        #memInfor{
            background: rgb(247, 198, 4);
            color: white;
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
                    <p class="ct-tit pb-3">회원정보 조회/수정/삭제</p>
                    <!-- 회원 조회 -->
                    <div class="search-box pb-5">
                        <select class="selectpicker show-tick p-2">
                            <option>회원 no</option>
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
                        <div class="btn-box">
                            <!-- btn-box -->
                            <div class="pb-5">
                                <button class="btn btn-sm btn-warning mr-2"  data-toggle="modal" data-target="#myModal">회원수정</button>
                            </div>
                            <!-- 회원수정 Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="md-box">
                                            <p>회원 no.</p>
                                            <input type="text" value="id">
                                        </div>
                                        <div class="md-box">
                                            <p>이름 / 성별</p>
                                            <input type="text" value="name / gender">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 이메일</p>
                                            <input type="text" value="email">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 번화번호</p>
                                            <input type="text" value="phone">
                                        </div>
                                        <div class="md-box">
                                            <p>회원 포인트</p>
                                            <input id="point1" class="point" type="number" value="3000">
                                            
                                            <div class="btn-box">
                                                <button onclick="plus();" style="margin-right: 5px;" class="btn btn-sm material-icons">add</button>
                                                <button onclick="minus();" class="btn btn-sm material-icons">remove</button>
                                            </div>
                                        </div>
                                        <!-- 회원 포인트 +,- 구현 -->
                                        <script>
                                            function plus(){
                                                
                                                const p1 = document.getElementById("point1").value;

                                                const sum = Number(p1) + Number(10);

                                                document.getElementById("point1").value = sum;

                                            }
                                        </script>
                                        <script>
                                            function minus(){

                                                const m1 = document.getElementById("point1").value;

                                                const minus = Number(m1) - Number(10);

                                                document.getElementById("point1").value = minus;
                                            }
                                        </script>

                                    </div>
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-warning" data-dismiss="modal" data-toggle="modal" href="#changeCompleted">회원수정</button>
                                        <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 회원 수정완료 Modal -->
                        <div class="modal fade" id="changeCompleted">
                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                <div class="modal-content">

                                    <!-- Modal body -->
                                    <div class="modal-body" align="center" style="text-align: center;">
                                        <div class="modalMsg-area">
                                            정상적으로 수정 되었습니다.
                                        </div>
                                        <div>
                                        <button type="button" class="btn" data-dismiss="modal" id="deleteCompletedclosebtn">닫기</button>
                                        </div>              
                                    </div>
                            
                                </div>
                            </div>
                        </div>
                            <!-- 회원 삭제 버튼 -->
                            <div class="pb-5">
                                <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteModal">회원삭제</button>
                            </div>
                            <!-- 회원삭제 모달 -->
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
                        
                        <table style="width: 100%;">
                            <thead>
                                <tr>
                                    <th width="30px"><input type="checkbox" name="" value=""></th>
                                    <th width="50px">No.</th>
                                    <th width="150px">회원 no.</th>
                                    <th width="150px">회원 이름</th>
                                    <th width="300px">회원 이메일</th>
                                    <th width="300px">회원 전화번호</th>
                                    <th width="200px">회원 닉네임</th>
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
                                <tr>
                                    <td><input type="checkbox" name="" value=""></td>
                                    <td><%= i+1 %></td>
                                    <td><%= list.get(i).getMemNo() %></td>
                                    <td><%= list.get(i).getMemName() %></td>
                                    <td><%= list.get(i).getMemEmail() %></td>
                                    <td><%= list.get(i).getMemTel() %></td>
                                    <td><%= list.get(i).getNickname() %></td>
                                </tr>
                               <% } %>
							<% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br><br><br><br>
            <!-- 페이징 바 -->
            <div class="paging-area" align="center">
                 <% if(currentPage != 1) {%>
                 <button onclick="location.href='<%=contextPath%>/memMg.ad?cpage=<%=currentPage-1%>';"> &lt; </button>
                 <% } %>
                            
               <% for(int p=startPage; p<=endPage; p++) {%>
			      <% if(p == currentPage) { %>
			      <button disabled><%= p %></button>
			      <% }else { %>
						<button onclick="location.href='<%= contextPath %>/memMg.ad?cpage=<%= p %>';"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			       <% if(currentPage != maxPage) {%>
			       <button onclick="location.href='<%=contextPath%>/memMg.ad?cpage=<%=currentPage+1%>';">&gt; </button>
					<% } %>
			
                   <button> &gt; </button>
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
   