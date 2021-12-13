<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* 큰 틀 크기 지정*/
        .outer{
            width:1000px;
            height:auto;
            margin:auto;
        }
        .outer>div{
            float:left;
        }
        
        /* 메뉴바 밑 상단 회색바 */
        .top{
            width:1000px;
            height:70px;
        }
        /* 노란박스 (new) */
        .left{
            width:200px;
            height:700px;

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
            font-size:17px;
            padding-top:20px;
            font-weight:700;
            cursor:pointer;
        }
        /* 게시판별 조회 목록 (더보기) */
        .board{
            width:800px;
            height:auto;
        }
        .board table{
        	
        	width:400px;

        	
        }
        .board td{
        	
        	width:400px;
        }
        .board>div{
            float:left;
            width:300px;
            height:200px;
            box-sizing: border-box;
            padding-left:20px;
            padding-top:30px;
        }
        .boardcate{
            font-size:17px;
            font-weight:900;
        }
        .maindate{
        	width:100px;
        	padding-left:30px;
        }
        
        /* 회색박스 (답변처리상태) */
        .graybox{
        	width:150px;
            background-color: rgb(230, 235, 240);
            text-align:center;
            font-size:18px;
            font-weight: 900;
            cursor:pointer;
            margin:10px;
        }
        #qnanotyet, #qnadone{
			padding-right:20px;
        }
        .graybox>div{
            padding-top:25px;
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
    
    <!-- 사이드바 (관리자 전체) -->
    <%@ include file="../common/admin_cusmainSidebar.jsp" %>

    <br><br>

    <div class="outer">

        
        <!-- 관리자 상단 -->
        <div class="top">
            <h2 style="color:gray">&gt; 관리자 메인페이지</h2>
            <hr>
        </div>
        <!-- 관리자 왼쪽 노란색 박스 (new)-->
        <div class="left">
            <div>
                <div>새로 등록된 공지사항</div>
                <div>7</div>
            </div>
            <div>
                <div>새로 등록된 FAQ</div>
                <div>2</div>
            </div>
            <div>
                <div>새로 등록된 Q&A</div>
                <div>719</div>
            </div>
            <div>
                <div>새로 등록된 리뷰</div>
                <div>505</div>
            </div>
        </div>

        <!-- 게시글들 간단 조회 (더보기)-->
        <div class="board">
            <div>
                <table>
                    <tr>
                        <td class="boardcate" colspan="2">공지사항 관리</td>
                    </tr> 
                    <tr>
                        <td>개인정보처리방침 개정 안내</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                    <tr>
                        <td>개인정보처리방침 개정 안내</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate" colspan="2">FAQ 관리</td>
                    </tr>
                    <tr>
                        <td>배송관련 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                    <tr>
                        <td>반품/교환 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate" colspan="2">Q&A문의/상품문의 관리</td>
                    </tr>
                    <tr>
                        <td>11월 상품문의 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                    <tr>
                        <td>10월 상품문의 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate" colspan="2">리뷰 관리</td>
                    </tr>
                    <tr>
                        <td>11월 리뷰 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                    <tr>
                        <td>10월 리뷰 조회</td>
                        <td class="maindate">2021-12-02</td>
                    </tr>
                </table>
            </div>

            <!-- 아래 회색 박스 (답변처리상태에 따른 분류)-->
                <div class="graybox" id="qnanotyet">
                    <div>확인하지 못한 Q&A</div>
                    <div>857</div>
                </div>
                <div class="graybox">
                    <div>확인하지 못한 상품문의</div>
                    <div>856</div>
                </div>
                <div class="graybox" id="qnadone">
                    <div>답변처리 된 Q&A</div>
                    <div>132</div>
                </div>
                <div class="graybox">
                    <div>답변처리 된 상품문의</div>
                    <div>68</div>
                </div>



        </div>


    </div>






</body>
</html>