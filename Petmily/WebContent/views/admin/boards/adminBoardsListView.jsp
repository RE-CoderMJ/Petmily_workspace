<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Boards> list = (ArrayList<Boards>)request.getAttribute("list");
 
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
        width:1000px;
        height:auto;
        margin:auto;
    }
    .outer>div{
        float:left;
    }
    /* 상단 회색바 */
    .top{
        width:1000px;
    }
    /* 3개 게시판별 조회 */
    .middle{
        width:1000px;
        height:120px;
    }
    .middle div{
        width:300px;
        float:left;
        text-align:center;
        line-height:35px;
        font-weight:900;
        font-size:15px;
        cursor:pointer;
    }
    .middle>div{
        margin:10px;
        background-color: rgb(247, 198, 4);
    }
    /* 버튼(삭제), 테이블, 페이징바 */
    .bottom{
        width:1000px;
        float:center;
        padding-top:20px;
    }
    .bottom table tr{
        text-align:center;
    }
    .adminselect{
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
    <%@ include file="../../common/admin_boardsmainSidebar.jsp" %>

	<!-- 전체 틀 -->
    <div class="outer">

        <!-- 상단바 -->
        <div class="top">
            <br>
            	<h2 style="color:gray">&gt; 관리자 게시판 관리</h2>
            <hr>
            	<h5>전체 게시글 조회</h5>
        </div>

        <!-- 게시판별 알림박스 -->
        <div class="middle">
            <div>
                <div>궁금해요</div>
                <div>157</div>
            </div>
            <div>
                <div>찾고있어요</div>
                <div>23</div>
            </div>
            <div>
                <div>중고거래</div>
                <div>102</div>
            </div>
        </div>

        <!-- 테이블, 검색창, 페이징바 -->
        <div class="bottom">

			<!-- 오른쪽 버튼 -->
            <div class="adminbutton" align="right">
            
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
			
			<!-- 조회 테이블 -->
            <div class="table table-bordered">
                <table id ="boardstable">
                    <thead>
                        <tr>
                            <th width="50"><input type="checkbox" name="" value=""></th>
                            <th width="100">번호</th>
                            <th width="100">아이디</th>
                            <th width="150">게시판 제목</th>
                            <th width="150">동물 분류</th>
                            <th width="450">글 제목</th>
                            <th width="100">작성일</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <!--1. 게시글 없을 경우-->
                        <tr>
                            <td colspan="6">조회된 게시글이 없습니다</td>
                        </tr>
                        <!--2. 게시글 있을 경우-->
                        <tr>
                            <td>v</td>
                            <td>1</td>
                            <td>bbomi</td>
                            <td>찾고있어요</td>
                            <td>강아지</td>
                            <td>우리집 코코를 찾아주세요</td>
                            <td>21-11-15</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br><br>

			<!-- 하단 검색창 -->
            <div class="adminselect">
                <select>
                    <option>궁금해요</option>
                    <option>찾고있어요</option>
                    <option>중고거래</option>
                </select>
                <input type="text">
                <button type="button" class="btn btn-light">검색</button>
            </div>
            

            <!-- 페이징 바 -->
            <div class="paging-area" align="center">
                <button> &lt; </button>
                <button>1</button>
                <button>2</button>
                <button>3</button>
                <button>4</button>
                <button>5</button>
                <button> &gt; </button>
            </div>
        </div>
    </div>

    <!-- 페이징바 -->
    <script>
        $(function(){
            $(".paging-area button").click(function(){
                $(this).siblings(".paging-area button").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
            })
        })
    </script>
	
</body>
</html>