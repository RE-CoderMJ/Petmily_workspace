<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        float:left;
    }


        /* 상단 회색바 */
        .top{
            width:1100px;
            height:100px;
            

        }
        /* 카테고리 분류 포함 검색창 */
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
        .select{
        	float:center;
        }
        .allselect{
        	width:100%;
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

	<!-- 큰 틀 -->
	<div class="outer">

	
	    <!-- 상단 회색바 (게시판 이름) -->
	    <div class="top">
	        <br>
	        <h2 style="color:gray">&gt; 관리자 고객센터</h2>
	        <hr>
	        <h5>Q&A문의 관리</h5>
	        <br>
	        
	    </div>
	
	    <!-- 카테고리 및 검색창 -->
	    <div class="middle">
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
	    
			
	        <div class="rightbutton" align="right">
	            <a href="<%= contextPath %>/adminEnrollForm.qna" class="btn btn-sm btn-warning">등록</a>
	            <a href="" class="btn btn-sm btn-warning">수정</a>
	            
	            
	            
	            <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#myModal">
    삭제
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">

        
        <!-- Modal body -->
        <div class="modal-body" align="center">
          	정말로 삭제하시겠습니까?
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
        
      </div>
    </div>
  </div>
	            <br><br>
	        </div>
	     
	    
			<div class="bottom" align="right">
		
	            <table class="table table-bordered" style="margin:none;">
	                <thead>
	                    <tr>
	                        <th width="50"><input type="checkbox" name="" value=""></th>
	                        <th width="100">번호</th>
	                        <th width="150">등록일</th>
	                        <th width="500">문의제목</th>
	                        <th width="150">작성자</th>
	                        <th width="150">처리상태</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <!--1. 게시글 없을 경우-->
	                    <tr align="center">
	                        <td colspan="7">조회된 게시글이 없습니다</td>
	                    </tr>
	                    <!--2. 게시글 있을 경우-->
	                    <tr align="center">
	                        <td>v</td>
	                        <td>12</td>
	                        <td>2021-12-04</td>
	                        <td>번호 변경이 되지 않아요</td>
	                        <td>강동원</td>
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