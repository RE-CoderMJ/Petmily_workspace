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
}

textarea {
	width: 700px;
	height: 200px;
	resize: none !important;
	padding: 20px;
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
				<form action="<%= contextPath %>" name="delForm" onsubmit="return checkForm()">
                
                    <p class="delTitle">회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요,
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
                    </p>
    
                    <input type="checkbox" name="confirm" style="transform: scale(1.5);">위 내용을 모두 확인하였습니다. 
                    <span style="color: red; font-size: 12px;">필수</span>
    
                    <script>
                        function checkForm() { 
                            if(delForm.confirm.checked == false) {
                                delForm.confirm.focus();
                                
                                alert("필수 체크란에 체크해주세요"); 
                                return false; 
                            } 
                        }

                    </script>
    
                    <br><br><br>
    
                    <p class="delTitle">PETMILY 회원 탈퇴하려는 이유가 무엇인가요? (복수선택 가능) <span style="color: red; font-size: 12px;">필수</span>
                        <div class="delContent">
                            <input type="checkbox" style="transform: scale(1.5);">이용빈도 낮음<br>
                            <input type="checkbox" style="transform: scale(1.5);">재가입<br>
                            <input type="checkbox" style="transform: scale(1.5);">콘텐츠/제품정보/상품 부족<br>
                            <input type="checkbox" style="transform: scale(1.5);">개인정보보호<br>
                            <input type="checkbox" style="transform: scale(1.5);">회원특혜/쇼핑혜택 부족<br>
                            <input type="checkbox" style="transform: scale(1.5);">기타
                        </div>
                    </p>
    
                    <br><br>
    
                    <p class="delTitle">PETMILY 서비스 이용 중 어떤 부분이 불편하셨나요? <span style="color: gray; font-size: 12px;">선택</span>
                        <p style="font-size: 15px;">펫밀리를 떠나시는 이유를 자세히 알려주신다면, <br>
                            여러분의 소중한 의견을 반영해 더 좋은 서비스로 꼭 찾아뵙겠습니다.</p>
                        <textarea name="delDetail" id=""></textarea>
                    </p>
    
                    <div align="center" style="margin-top: 50px;">
                        <button type="submit" class="btn btn-sm btn-secondary">탈퇴 신청</button>
                    </div>


                </form>
                
            </div>


		</div>

	</div>

	<div style="margin-top: 200px;">

		<%@ include file="../common/footerbar.jsp"%>
	</div>


</body>
</html>