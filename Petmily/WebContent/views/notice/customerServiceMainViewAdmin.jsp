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
        width: 200px;
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
    /* 카테고리 스타일*/
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
        /* 메뉴바 밑 상단 회색바 */
        .top{
            width:70%;
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
            font-size:15px;
            padding-top:15px;
            font-weight:700;
        }
        /* 게시판별 조회 목록 (더보기) */
        .board{
            width:550px;
            height:700px;
        }
        .board>div{
            float:left;
            width:270px;
            height:200px;
            box-sizing: border-box;
            padding-left:10px;
            padding-top:30px;
        }
        .boardcate{
            font-size:15px;
            font-weight:900;
        }
        .more{
            font-size:10px;
            text-align:right;

        }
        /* 회색박스 (답변처리상태) */
        .graybox{
            background-color: rgb(230, 235, 240);
            text-align:center;
            font-size:15px;
            font-weight: 900;
        }
        #qnanotyet, #qnadone{
            margin-left:10px;
        }
        .graybox>div{
            padding-top:40px;
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
    <%@ include file="../comon/admin_menubar.jsp" %>


    <br><br>

    <div class="outer">

        <!-- 사이드바 -->
        <div class="side">
            <div class="sidebar-area">
                <ul>
                    <div id="category">고객센터</div>
                    <div id="d-category">
                        <div class="d-category" id="notice">공지사항 관리</div>
        
                        <div class="d-category" id="faq">FAQ 관리</div>
        
                        <div class="d-category" id="qna">Q&A문의/상품문의 관리</div>
        
                        <div class="d-category" id="review">리뷰 관리</div>
                    </div>
                </ul>
            </div>
        </div>
       
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
                        <td class="boardcate">공지사항 관리</td>
                        <td class="more">더보기</td>
                    </tr> 
                    <tr>
                        <td>개인정보처리방침 개정 안내</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>개인정보처리방침 개정 안내</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate">FAQ 관리</td>
                        <td class="more">더보기</td>
                    </tr>
                    <tr>
                        <td>배송관련 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>반품/교환 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate">Q&A문의/상품문의 관리</td>
                        <td class="more">더보기</td>
                    </tr>
                    <tr>
                        <td>11월 상품문의 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                    <tr>
                        <td>10월 상품문의 조회</td>
                        <td>2021-12-02</td>
                    </tr>
                </table>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="boardcate">리뷰 관리</td>
                        <td class="more">더보기</td>
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


    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
                const $buy = $(this).next(); 
            })
        })
    </script>





</body>
</html>