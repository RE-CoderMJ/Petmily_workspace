<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    div {
        /* border: 1px solid green; */
    }

	.inner {
        width: 1300px;
        height: auto;
        margin: auto;
    }

    .inner > div {
        width: 85%;
    }

    .qna-top {
        margin: auto;
        width: 80%;

    }

    #title {
        font-weight: 900;
        font-size: 45px;
        height: 50px;
        margin-top: -15px;
        float: left;
    }

    #title_sm {
        position: relative;
        left: 15px;
        top: 15px;
        font-weight: bold;
        font-size: 18px;
    }

    #enrollBtn {
        float: right;
        margin-top: 20px;
    }

    .titleBottom {
        margin: 10px;
        margin-bottom: 100px;
        
    }

    #notify {
        float: left;
        margin: 5px;
        
    }
   
    table {
        text-align: center;
    }

    thead {
        background-color: rgb(235, 235, 235);   
    }

    tbody {
        cursor: pointer;
    }

</style>
</head>

<body>
	<%@ include file="../../common/menubar.jsp" %>
    <%@ include file="../shoppingSidebar.jsp" %>
    
    <div class="outer">
        
        
        <div class="inner">
            
            <div class="qna-top">

                <div>
                    <p id="title">상품 문의</p>
                    <span id="title_sm">Q&A</span>
                    <button type="button" id="enrollBtn" class="btn btn-sm btn-warning"
                            onclick="location.href='<%= contextPath %>/shop.qna'">문의하기</button>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
                
                <div class="titleBottom">
                   <p id="notify">구매하시려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.</p>
                                  </div>


                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>조회</th>
                        </tr>
    
                    </thead>
    
                    <tbody>
    
                        <tr>
                            <td class="tdNo">10</td>
                            <td class="tdTitle">이번주에 구매하면 유통기한이 언제까지일까요? <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">서머</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">9</td>
                            <td class="tdTitle">비밀 문의글입니다 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">쭈니</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">8</td>
                            <td class="tdTitle">제공량이 하루 제공량인가요? <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">뽀야미</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">7</td>
                            <td class="tdTitle">재입고 언제 되나요<span class="tdreply">(1)</span></td>
                            <td class="tdWriter">애플</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">6</td>
                            <td class="tdTitle">품절 언제 풀리나여<span class="tdreply">(1)</span></td>
                            <td class="tdWriter">미애</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">5</td>
                            <td class="tdTitle">재입고<span class="tdreply">(1)</span></td>
                            <td class="tdWriter">핑키</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">4</td>
                            <td class="tdTitle">배송 언제쯤 되나요 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter"차차</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">3</td>
                            <td class="tdTitle">상품 받았는데 유통기한이<span class="tdreply">(1)</span></td>
                            <td class="tdWriter">동글이</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">2</td>
                            <td class="tdTitle">지금 막 주문 넣었어요 유통기한 넉넉한걸로 부탁드려여<span class="tdreply">(1)</span></td>
                            <td class="tdWriter">집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">사료 알갱이 크기 좀 알려주세요 강쥐가 예민해서요  <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">달리</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                    </tbody>
                </table>

                <%@ include file="../../common/pagingBar.jsp" %>
            </div>
            
            <script>
	            $(function(){
	                $("tr").click(function(){
	                //const num = $(this).children().eq(0).text();
	               
	                // /jsp/detail.qna?num=클릭한글번호
	                location.href = '<%=contextPath%>/detail.qna'
	                })
	            })
	        </script>

    
            <div style="margin-top: 200px;">
                <%@ include file="../../common/footerbar.jsp" %>
            </div>

       </div>
   </div>
</body>
</html>