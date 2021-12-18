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

    .outer {
        width: 1600px;
        margin: auto;
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

    #search { 
        float: right;
        border: 1px solid lightgray;
        border-radius: 5px;
        height: 40px;
        width: 300px;
        margin-top: 7px;
        padding: 10px;
    }

    #searchImg {
        float: right;
        width: 40px;
        height: 40px;
        margin: 7px;
        cursor: pointer;
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
    
    <div class="outer">
        <%@ include file="../notice/noticeSidebar.jsp" %>
        
        
        <div class="inner">
            
            <div class="qna-top">

                <div>
                    <p id="title">QnA</p>
                    <span id="title_sm">1:1</span>
                    <% if(loginUser != null) { %>
	                    <button type="button" id="enrollBtn" class="btn btn-sm btn-warning"
	                            onclick="location.href='<%= contextPath %>/enrollForm.qna'">글쓰기</button>
                    <% } %>
                </div>
                
                <div style="border-bottom: 2px solid lightgray; margin-top: 30px;"></div>
                
                <div class="titleBottom">
                   <p id="notify">궁금하신 사항을 먼저 FAQ에 있는지 확인하시면 문의없이 좀 더 빠른 답변을 얻으실 수 있습니다. <br>
                    펫밀리에 대해 궁금하신 점이나 의견을 남겨주시면 최대한 신속하고 자세히 답변드리겠습니다.</p>
                    <img src="resources/img/searchImg.png" id="searchImg">
                    <input type="text" id="search" placeholder="검색어를 입력해주세요">
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
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">비밀 문의글입니다 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>

                        <tr>
                            <td class="tdNo">1</td>
                            <td class="tdTitle">어디로 가야하죠 펫밀리 <span class="tdreply">(1)</span></td>
                            <td class="tdWriter">땅콩집사</td>
                            <td class="tdDate">20xx-xx-xx</td>
                            <td class="tdCount">4</td>
                        </tr>
    
                    </tbody>
                </table>

                <%@ include file="../bCommon/boardPagingBar.jsp" %>
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