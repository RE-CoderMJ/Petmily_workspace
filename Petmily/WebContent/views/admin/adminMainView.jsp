<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        /* 큰 틀 크기 지정 */
        .outer{
            /* width:800px; */
            height:850px;
            margin:auto;
        }
        .outer>div{
            /* float:left; */
        }
        #sidebar{
        	width:350px;
        }
		#adminContent{
			width:800px;
            margin:auto;
		}
        
        /* 메뉴바 밑 상단 회색바 */
        .top{
            width:800px;
            height:70px;
            padding-top:15px;
            padding-bottom:15px;
        }
        /* 노란박스 (new) */
        .left{
            width:200px;
            height:500px;
            float:left;
            margin:20px;
            
        }
        .left div{
            text-align:center;
            line-height:50px;
            background-color:rgb(247, 198, 4);
            
        }
        .left>div{
            width:100%;
            height:150px;
            margin-bottom:10px;
            font-size:20px;
            padding-top:15px;
            font-weight:700;
        }
        .left div div{
            cursor:pointer;
            
        }
        .left>div>div{
        	/*box-sizing: border-box;*/
        }
        /* 게시판별 조회 목록 */
        .right{
            width:1000px;
            height:550px;
            margin:0;
        }
        .right>div{
            float:left;
            width:300px;
            height:200px;
            box-sizing: border-box;
            padding-left:25px;
            padding-top:15px;
        }
        /* 목록조회시 뜨는 게시판제목 */
        .boardcate{
            font-size:20px;
            font-weight:900;
        }
        
        
        /* 회색박스 (주문건수) */
        .graybox{
            width:800px;
            text-align:center;
            font-size:17px;
            font-weight: 900;
            margin:10px;
            
            
        }
        .graybox>div{
            width:190px;
            background-color: rgb(230, 235, 240);
            float:left;
            padding-top:50px;
            padding-bottom:50px;
            margin-right:10px;

        }
        .graybox div div{
        	cursor:pointer;
        	/*box-sizing: border-box;*/
        	
        }

    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>

	<!-- 메뉴바 -->
    <%@ include file="../common/admin_menubar.jsp" %>
    
    
    
    <div class="outer" style="width: 1400px;">
        
        
        <div id="sidebar">
        <!-- 사이드바 (관리자 전체) -->
        <%@ include file="../common/admin_MainSidebar.jsp" %>
        </div>
        
	<div id="adminContent">
        <!-- 맨밑 회색 상단바 -->
        <div class="top">
            <h2 style="color:gray">&gt; 관리자 메인페이지</h2>
            <hr>
        </div>

        <!-- 노란 박스 (new) -->
        <div class="left">
            <div>
                <div>새로 등록된 Q&A</div>
                <div>719</div>
            </div>
            <div>
                <div>새로 등록된 리뷰</div>
                <div>505</div>
            </div>
            <div>
                <div>새로 신고된 내역</div>
                <div>7</div>
            </div>
        </div>

        <!-- 게시판별 조회목록 (더보기x) -->
        <div class="right">
            <div>
                <table>
                    <tr>
                        <th class="boardcate">상품관리</th>
                    </tr> 
                    <tr>
                        <td>11월 새로이 등록할 상품</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>12월 새로 등록할 상품</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <th class="boardcate">회원관리</th>
                    </tr>
                    <tr>
                        <td>회원 전체조회</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>블랙컨슈머 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <th class="boardcate">상품문의 관리</th>
                    </tr>
                    <tr>
                        <td>11월 상품문의 관리</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>10월 상품문의 관리</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <th class="boardcate">신고관리</th>
                    </tr>
                    <tr>
                        <td>신고내역 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>신고된 회원 계정 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <th class="boardcate">리뷰관리</th>
                    </tr>
                    <tr>
                        <td>11월 리뷰 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>10월 리뷰 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <th class="boardcate">고객센터관리</th>
                    </tr>
                    <tr>
                        <td>고객센터관리</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>공지사항 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- 회색박스 (주문건수) -->
        <div class="graybox">
            <div id="dayorder">
                <div>일별 주문건 수</div>
                <div>27</div>
            </div>
            <div>
                <div>월별 주문건 수</div>
                <div>107</div>
            </div>
            <div id="yearorder">
                <div>연간 주문건 수</div>
                <div>815</div>
            </div>
            <div>
                <div>오늘 방문자 수</div>
                <div>505</div>
            </div>
        </div>
    </div>

    </div>


</body>
</html>