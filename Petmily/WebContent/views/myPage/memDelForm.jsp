<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.outer {
	width: 1400px;
	margin: auto;
}

.inner {
	width: 800px;
	margin: auto;
}

#title {
	font-weight: 900;
	font-size: 20px;
	height: 50px;
}

.content {
	margin: 50px;
}

.delContent {
	border: 1px solid gray;
	padding: 15px;
}

.delTitle {
	font-size: 18px;
	font-weight: bold;
}

.delSubTitle {
	font-size: medium;
	font-weight: bold;
}

input[type=checkbox] {
	margin-right: 10px;
}

.delContent>input {
	margin: 10px;
	transform: scale(1.5);
}

textarea {
	width: 670px;
	height: 200px;
	resize: none !important;
	padding: 20px;
}

input[type=password] {
	width: 200px;
	height: 30px;
	border: 1px solid lightgray;
	padding: 10px;
}
</style>
</head>

<body>

	<%@ include file="../common/menubar.jsp"%>
	<div class="outer">

		<%@ include file="../shop/mypage/mypageSidebar.jsp"%>
		<div class="inner">

			<div>
				<p id="title">회원탈퇴 신청</p>
				<div
					style="border-bottom: 2px solid lightgray; margin: -30px 0px 5px;"></div>
			</div>

			<div class="content">
				<form action="<%= contextPath %>/delete.me" method="post" id="delForm" name="delForm" onsubmit="return checkForm()">
                
                    <p class="delTitle">회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요</p>
                        <div class="delContent">
                            <p class="delSubTitle">회원탈퇴 시 처리내용</p>
                           	 	ㆍ펫밀리 포인트는 소멸되며 환불되지 않습니다. <br>      
                            	ㆍ펫밀리 구매 정보가 삭제됩니다. <br>
                            	ㆍ소비자보호에 관한 법률 제6조에 의거,계약 또는 
                            	청약철회 등에 관한 기록은 5년, 대금결제 및 재화등의 공급에 관한 기록은 5년, 
                            	소비자의 불만 또는 분쟁처리에 관한 기록은 3년 동안 보관됩니다. 
                            	동 개인정보는 법률에 의한 보유 목적 외에 다른 목적으로는 이용되지 않습니다.
                            <br><br>
                            <p class="delSubTitle">회원탈퇴 시 게시물 관리</p>
                           		 회원탈퇴 후 펫밀리 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 
                           		 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 
                            	게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다.
                            <br><br>
                            <p class="delSubTitle">회원탈퇴 후 재가입 규정</p>
                           		 탈퇴 회원이 재가입하더라도 기존의 펫밀리 포인트는 이미 소멸되었기 때문에 양도되지 않습니다.
                        </div>
                    	
                    	<br>
    
                    <input type="checkbox" id="confirm" style="transform: scale(1.5);" required>위 내용을 모두 확인하였습니다. 
                    <span style="color: red; font-size: 12px;">필수</span>
    				
    				
    				<script>
						$(document).ready(function () {
						    $('#submitBtn').click(function() {
						      checked = $("#confirm:checked").length;
						
						      if(!checked) {
						        alert("필수 내용을 먼저 확인해주세요");
						        setTimeout(function(){
						        	$("#confirm").focus();
						        });
						        return false;
						      }
						
						    });
						});
					</script>
    
                    <br><br><br>
    
                    <p class="delTitle">PETMILY 회원 탈퇴하려는 이유가 무엇인가요? (복수선택 가능) <span style="color: red; font-size: 12px;">필수</span></p>
                    <div class="delContent">
					

						<input type="checkbox" class="ck" name="ck" id="ck1" value="이용빈도 낮음">
						<label for="ck1">이용빈도 낮음</label><br>
						<input type="checkbox" class="ck" name="ck" id="ck2" value="재가입">
						<label for="ck2">재가입</label><br>
						<input type="checkbox" class="ck" name="ck" id="ck3" value="콘텐츠/제품정보/상품부족">
						<label for="ck3">콘텐츠/제품정보/상품 부족</label><br>
						<input type="checkbox" class="ck" name="ck" id="ck4" value="개인정보보호">
						<label for="ck4">개인정보보호</label><br>
						<input type="checkbox" class="ck" name="ck" id="ck5" value="회원특혜/쇼핑혜택부족">
						<label for="ck5">회원특혜/쇼핑혜택 부족</label><br>
						<input type="checkbox" class="ck" name="ck" id="ck6" value="기타">
						<label for="ck6">기타</label>
						
                    </div>
                    
                    <script>
						$(document).ready(function () {
						    $('#submitBtn').click(function() {
						      checked = $(".ck:checked").length;
						
						      if(!checked) {
						        alert("탈퇴하려는 이유를 선택해주세요");
						        setTimeout(function(){
						        	$(".ck").focus();
						        });
						        return false;
						      }
						
						    });
						});
						
					</script>
					

                    <br><br>
    
                    <p class="delTitle">PETMILY 서비스 이용 중 어떤 부분이 불편하셨나요? <span style="color: gray; font-size: 12px;">선택</span></p>
                        <p style="font-size: 15px;">펫밀리를 떠나시는 이유를 자세히 알려주신다면, <br>
                           						       여러분의 소중한 의견을 반영해 더 좋은 서비스로 꼭 찾아뵙겠습니다.</p>
                        <textarea name="delDetail"></textarea>
                    
    
                    <div align="center" style="margin-top: 50px;">
                        <button type="button" id="submitBtn" data-toggle="modal" data-target="#delModal" class="btn btn-sm btn-secondary">탈퇴 신청</button>
                    </div>
                
                
	

					<div style="margin-top: 200px;">
				
						<%@ include file="../common/footerbar.jsp"%>
					</div>
				
					<div class="modal" id="delModal">
						<div class="modal-dialog">
						  <div class="modal-content">
						  
							<!-- Modal Header -->
							<div class="modal-header">
							  <h4 class="modal-title" style="margin-left: 170px; font-weight: bold;">회원 탈퇴</h4>
							  <button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							
							<!-- Modal body -->
							<div class="modal-body" style="margin: auto; text-align: center; padding: 30px;">
							  
							  탈퇴 후 복구가 불가능합니다. <br>
							  정말로 <b>탈퇴</b>하시겠습니까? <br><br>
							  <input type="hidden" name="userNo" value="<%= loginUser.getMemNo() %>">
							  <input type="password" name="userPwd" placeholder="비밀번호" required> <br><br>
							  <button type="submit" class="btn btn-sm btn-danger">탈퇴하기</button>
							</div>
							
						  </div>
						</div>
					</div>
                </form>

            </div>

		</div>
	</div>

	
	<div class="modal" id="delSuccessModal">
		<div class="modal-dialog">
		  <div class="modal-content">
		  
			<div class="modal-header">
			  <h4 class="modal-title" style="margin-left: 170px; font-weight: bold;">탈퇴 완료</h4>
			  <button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			
			<div class="modal-body" style="margin: auto; text-align: center; padding: 30px;">
			  
			  그 동안 펫밀리를 이용해주셔서 감사합니다 <br>
			  더 좋은 서비스로 다시 찾아뵙겠습니다 <br><br>
			  <button type="submit" class="btn btn-sm btn-warning">확인</button>
			</div>
			
		  </div>
		</div>
	</div>
	 

</body>
</html>