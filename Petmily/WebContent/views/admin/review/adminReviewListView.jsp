<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    /* 상단 회색바 (현재게시판이름) */
    .top{
    	width:1100px;
    	height:150px;
    }
    /* 버튼 2개 (답변등록, 답변삭제) */
    .buttons{
    	width:100%;
    }
    /* 검색바 (상품명 키워드)*/
    .middle{
    	width:400px;
    }
    /* 리뷰 조회 테이블 */ 
    #reviewtable{
    	width:1100px;
    	font-size:13px;
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
     .paging-area{
		margin:auto;
	 }   
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

	<!-- 큰 틀 -->
	<div class="outer">

		<!-- 상단바 -->
	    <div class="top">
	        <br>
	        	<h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        		<hr>
	        	<h5>리뷰관리</h5>
	        <br>
	    </div>

	    <!-- 검색창 -->
	    <div class="middle" align="left">
	    	<!-- (상품문의)검색폼 -->
	        <form>
	            <div class="input-group mb-3">
	            	<div class="input-group-prepend">
	                	<span class="input-group-text" style="color:black">상품명</span>
	            	</div>
	                	<input type="text" class="form-control" placeholder="검색어를 입력해주세요(키워드)">
	                	<a href="" class="btn btn-sm btn-warning">검색</a>
	           	</div>
	    	</form>
	    	
	    	<br>
	    	<br>
    	</div>

    	<!-- 버튼들(답변등록, 답변삭제) -->
        <div class="buttons" align="right">
            <a href="<%= contextPath %>/adminEnrollForm.rv" class="btn btn-sm btn-warning">답변 등록</a>
            
            <!-- 삭제버튼(혜선꺼) : Button to Open the Modal -->
            <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteModal">
                       답변 삭제
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
	    <div class="table table-bordered" id="reviewtable">
	        <table>
	            <thead>
	                <tr>
	                    <th width="50"><input type="checkbox" name="" value=""></th>
	                    <th width="100">번호</th>
	                    <th width="100">등록일</th>
	                    <th width="150">상품명</th>
	                    <th width="500">리뷰 내용</th>
	                    <th width="100">아이디</th>
	                    <th width="100">처리상태</th>
	                </tr>
	            </thead>
	            
	            <tbody>
	                <!--1. 게시글 없을 경우-->
	                <!-- <tr>
	                    <td colspan="7">조회된 게시글이 없습니다</td>
	                </tr> -->
	                
	                <!--2. 게시글 있을 경우-->
	                <tr>
	                    <td>v</td>
	                    <td>12</td>
	                    <td>2021-12-04</td>
	                    <td>챠오츄르</td>
	                    <td>맛있대요</td>
	                    <td>sql</td>
	                    <td>미답변</td>
	                </tr>
	                <tr>
	                    <td>v</td>
	                    <td>12</td>
	                    <td>2021-12-04</td>
	                    <td>챠오츄르</td>
	                    <td>맛있대요</td>
	                    <td>sql</td>
	                    <td>미답변</td>
	                </tr>
	                <tr>
	                    <td>v</td>
	                    <td>12</td>
	                    <td>2021-12-04</td>
	                    <td>챠오츄르</td>
	                    <td>맛있대요</td>
	                    <td>sql</td>
	                    <td>미답변</td>
	                </tr>
	            </tbody>  
	        </table>
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

	<!-- 페이징 바 -->
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