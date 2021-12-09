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
            width:100%;
            height:100%;
        }
        .outer>div{
            float:left;

             
        }
        /* 사이드바 크기 지정 */
        .side{
            width:250px;
            height:800px;
        }

        /*사이드바 스타일*/
    .sidebar-area{
        float: left;
        width: 250px;
        height: 800px;
        position: relative;
    }
    /* 사이드바 큰 제목 스타일 */
    #category{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:90px;
    }
    /* 세부 카테고리 스타일*/
    .d-category{
        list-style-type: none;
        font-size: 16px;
        width: 130px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    #d-category{
        position: absolute;
        top:80px;
        left: 90px;
    }
    /* 세부 카테고리 전체 스타일 */
    .dd-category{
        list-style-type: none;
        color: darkgray;
        font-weight: bolder;
        font-size: 13px;
        width: 150px;
        display: none;
        margin-bottom: 3px;
        cursor: pointer;
        margin-left: 15px;
    }

        /* 메뉴바 밑 상단 회색바 */
        .top{
            width:70%;
            height:70px;
        }
        /* 노란박스 (new) */
        .left{
            width:200px;
            height:550px;
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
            font-size:15px;
            padding-top:15px;
            font-weight:700;
        }
        /* 게시판별 조회 목록 */
        .right{
            width:550px;
            height:550px;
        }
        .right>div{
            float:left;
            width:250px;
            height:200px;
            box-sizing: border-box;
            padding-left:25px;
            padding-top:20px;
        }
        /* 목록조회시 뜨는 게시판제목 */
        .boardcate{
            font-size:18px;
            font-weight:900;
        }
        /* 회색박스 (주문건수) */
        .graybox{
            width:70%;
            text-align:center;
            font-size:15px;
            font-weight: 900;
        }
        .graybox>div{
            width:200px;
            background-color: rgb(230, 235, 240);
            float:left;
            /* padding:50px; */
            padding-top:50px;
            padding-bottom:50px;
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
    <%@ include file="../common/admin_memSidebar.jsp" %>

    <div class="outer">

        <!-- 사이드바 (관리자 전체) -->
        <div class="side">
            <div class="sidebar-area">
                <ul>
                    <div id="category">
        
        
                    </div>
                    <div id="d-category">
                        <div class="d-category" id="member">회원관리</div>
                        <div class="dd-category bottom">회원정보 조회/수정/삭제</div>
                        <div class="dd-category bottom">회원 포인트 관리</div>
                        <div class="dd-category bottom">블랙리스트 회원 관리</div>
        
                        <div class="d-category" id="shop">쇼핑몰</div>
                        <div class="dd-category bottom">상품 등록</div>
                        <div class="dd-category bottom">상품 관리(수정, 삭제)</div>
                        <div class="dd-category bottom">주문/배송조회</div>
                        <div class="dd-category bottom">취소/환불/교환/반품 내역 조회</div>
                        <div class="dd-category bottom">결제 내역 조회</div>
        
                        <div class="d-category" id="board">게시판 관리</div>
                        <div class="dd-category bottom">전체 게시글 조회</div>
                        <div class="dd-category bottom"></div>
        
                        <div class="d-category" id="petlog">Petlog</div>
                        <div class="dd-category bottom">피드관리</div>
                        <div class="dd-category bottom"></div>
        
                        <div class="d-category" id="customer">고객센터</div>
                        <div class="dd-category bottom">공지사항 관리</div>
                        <div class="dd-category bottom">FAQ 관리</div>
                        <div class="dd-category bottom">Q&A문의/상품문의 관리</div>
                        <div class="dd-category bottom">리뷰 관리</div>
        
                        <div class="d-category" id="report">신고관리</div>
                        <div class="dd-category bottom">신고 내역 조회</div>
                        <div class="dd-category bottom">신고 회원 관리</div>
                    </div>
                </ul>
            </div>
        </div>

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
                        <td class="boardcate">상품관리</td>
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
                        <td class="boardcate">회원관리</td>
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
                        <td class="boardcate">상품문의 관리</td>
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
                        <td class="boardcate">신고관리</td>
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
                        <td class="boardcate">리뷰관리</td>
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
                        <td class="boardcate">고객센터관리</td>
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

    <script>
        // 사이드바
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                const $bottom = $(this).next();
    
                if($bottom.css("display") == "none" && $bottom.next().css("display") == "none"){
                    $(this).siblings(".bottom").slideUp();
                    $(this).siblings(".bottom").slideUp();
                    
                    $bottom.slideDown();
                    $bottom.next().slideDown();
                }else{
                    $bottom.slideUp();
                    $bottom.next().slideUp();
                }
            })

            $(".dd-category").click(function(){
                $(this).siblings(".dd-category").css("color", "darkgray").css("text-decoration", "none");
                $(this).css("color", "orange").css("text-decoration", "underline");
            })
        })
    </script>


</body>
</html>