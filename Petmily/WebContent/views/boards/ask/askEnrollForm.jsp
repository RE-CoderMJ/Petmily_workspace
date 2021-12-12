<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/ask/askEnrollUpdateForm.css" rel="stylesheet">
<%@ include file="../../common/links.jsp" %>
</head>

<body>
	
	<%@ include file="../../common/menubar.jsp" %>
	<%@ include file="askSidebar.jsp" %>

	<div class="content-area" align="center">
		<div id="top">
			<div id="list-btn" align="right">
				<button type="button" class="btn btn-secondary" id="list" onclick="location.href='<%=contextPath%>/main.ask?page=1';">목록</button>
			</div>
			<hr style="border: solid 1px rgb(179, 178, 178);">
			<div id="required-area" align="right">
				<span class="required">*</span>
				<span id="required">필수입력사항</span>
			</div>
		</div>
		<form action="" method="post" enctype="multipart/form-data">
			<div id="category-area">
				<div>
					<div>분류</div>
					<div>
						<select name="category" id="category" required>
							<option value="dog">강아지</option>
							<option value="cat">고양이</option>
							<option value="etc">기타</option>
						</select>
					</div>
					<span class="required" id="required-category">*</span>
				</div>
			</div>
			<div id="content">
				<div>
					<input type="text" name="title" id="title" placeholder="제목을 입력해 주세요" required>
					<span class="required" id="title-required">*</span>
				</div>
				<div>
					<textarea name="texts" id="texts" required>
		
					</textarea>
					<span class="required" id="texts-required">*</span>
				</div>
				
				<div id="file-area">
					<p>파일<br>첨부</p>
					<!--
						<textarea name="attatchment" id="attatchment">
							
						</textarea>
					-->
					<input type="file">
				</div>
				<div id="btn-area" align="right">
					<button class="btn">올리기</button>
				</div>
			</div>
		</form>
		
	</div>
	
	<%@ include file="../../common/footerbar.jsp" %>

</body>
</html>