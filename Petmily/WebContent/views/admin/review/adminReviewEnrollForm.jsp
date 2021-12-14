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
        font-size:15px;
        width:1000px;
        height:500px;
        margin:auto;
        margin-top:50px;
     }
     
     /* 카테고리 */
     #enroll-form-review table th{
         width:50px;
         font-weight:900;
         font-family: 'Gowun Dodum', sans-serif;
     }
     /* 상세내역 및 박스 */
     #enroll-form-review table td{
         width:350px;
         padding:10px;
         text-align:left;
         font-family: 'Gowun Dodum', sans-serif; 
     }
     
     /* 테이블 테두리 */
     #enroll-form-review table{
        border:2px solid lightgray;
        border-collapse: separate;
        border-radius: 10px;
		padding:10px;
     }
     /* 테이블 카테고리,박스들 */
     #enroll-form-review textarea{
        width:100%;
        box-sizing:border-box;
     }
</style>

<link href="https://fonts.googleapis.com/css2?family=Qahiri&family=Quicksand:wght@300&family=Rampart+One&display=swap" rel="stylesheet">
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
	
	<!-- 전체 틀 -->
    <div class="outer" align="center">
        <br>
        <br>
        <br>

	<!-- (리뷰) 답변 입력폼 -->
    <form action="" id="enroll-form-review" method="post">
		<table>
            <tr>
                <th class="category">등록일</th>
                <td class="select">2021-11-11</td>
                <td>2021-12-14(현재날짜)</td>
            </tr>
            <tr>
                <th class="category">아이디</th>
                <td class="select">catlove</td>
                <td rowspan="3">
                    <textarea cols="20" rows="10" name="content" style="resize:none" required></textarea>
                </td>
            </tr>
            <tr>
                <th class="category">상품명</th>
                <td class="select">챠오츄르</td>
            </tr>
            <tr>
            	<th class="category"></th>
                <td class="select">너무 좋아요</td>
            </tr>
         </table>
         
         <br><br>

         <!-- 하단 버튼들 -->
         <div>
            <button type="submit" class="btn btn-sm btn-warning">등록</button>
            <button type="button" class="btn btn-sm btn-secondary" onclick="history.back();">뒤로</button>
         </div>
            <br>
            <br>

     </form>
     
     
	 </div>


</body>
</html>