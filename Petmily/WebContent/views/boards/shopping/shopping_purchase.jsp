<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
<style>

/* * {
    border: 1px solid red;
} */

div, img, li, a {
	box-sizing: border-box;
}

.content-area {
	width: 1400px;
	height: auto;
	padding: 200px;
	padding-top: 5px;
    margin: auto;
}

.outer { 
    width: 1600px;
    height: auto;
    margin: auto;
}

.star {
	color: orange;
}

table select {
    margin: 5px;
}

table input {
    margin: 5px;
}
</style>

</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!-- 메뉴바 -->
<%@ include file="../../common/menubar.jsp"%>


<div class="outer">
    <!-- 사이드바  -->
    <%@ include file="shoppingsidebar.jsp"%>
    
    <div class="content-area">
        <h1>주문 결제</h1>
    
    
        <!-- 주문 고객 정보 -->
        <p align="right" style="margin-top: 50px;">
            <span class="star">*</span>필수 입력 사항
        </p>
    
        <div class="h2_padding">
            <h2>주문 고객 정보</h2>
        </div>
    
        <div style="border: 1px blue;">
            <table class="payadd_table">
                <col width="150px">
                <col width="300px">
                <col width="100px">
                <col width="150px">
                <col width="150px">
                <tr>
                <tr class="pay_tr">
                    <th>주문하시는 분<span class="star">*</span></th>
                    <td colspan="4"><input type="text" name="receiveName"
                        class="form-area">
                    </td>
    
                </tr>
                <tr class="pay_tr">
                    <th>연락처<span class="star">*</span></th>
                    <td colspan="4">
                        <select name="phoNum1" class="form-area-call">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="017">017</option>
                            <option value="019">019</option>
                        </select> 
                        
                        <input type="text" name="phoNum2" maxlength="4"
                        class="form-area-call"> - 
                        <input type="text" name="phoNum3" maxlength="4" class="form-area-call">
                    </td>
    
                </tr>
    
                <tr class="pay_tr">
                    <th>이메일<span class="star">*</span></th>
                    <td colspan="4"><input type="text" id="email1" class="form-area-email">
                        @ <input type="text" id="emailaddr" class="form-area-email">
                        <select id="selemail" class="form-area-call">
                                <option value="">직접 입력</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="hotmail.com">hotmail.com</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
    
    
    
        <br>
        <hr>
        <!-- 받는 사람 정보 -->
        <div class="h2_padding">
            <h2>배송 정보</h2>
        </div>
        <div>
            <input type="checkbox" name="same" id="_same">주문자와 동일
        </div>
    
    
        <div>
            <table class="payadd_table">
                <col width="150px">
                <col width="300px">
                <col width="100px">
                <col width="150px">
                <col width="150px">
    
                <tr class="pay_tr">
                    <th>받으시는 분<span class="star">*</span></th>
                    <td colspan="4">
                        <input type="text" name="receiveName" class="form-area">
                    </td>
                </tr>
    
                <tr class="pay_tr">
                    <th>연락처<span class="star">*</span></th>
                    <td colspan="4"><select name="phoneNum1" class="form-area-call">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="017">017</option>
                            <option value="019">019</option>
                    </select> 
                    
                    - <input type="text" name="phoneNum2" maxlength="4" class="form-area-call"> 
                    - <input type="text" name="phoneNum3" maxlength="4" class="form-area-call"></td>
                </tr>
    
                <tr class="pay_tr">
                    <th>배송 주소<span class="star">*</span></th>
                    <td colspan="4">
                        <input type="text" id="sample4_postcode" placeholder="우편번호" class="form-area-email"> 
                        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="s_btn"><br> 
                        <input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="40" class="form-area-address"><br> 
                        <span id="guide" style="color: #999; display: none"></span> 
                        <input type="text" id="sample4_detailAddress" placeholder="상세주소" class="form-area-address"></td>
                      
                        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                        <script>
                            //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
                            function sample4_execDaumPostcode() {
                                new daum.Postcode({
                                    oncomplete: function(data) {
                                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                        
                                        // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                                        var extraRoadAddr = ''; // 참고 항목 변수
                        
                                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                            extraRoadAddr += data.bname;
                                        }
                                        // 건물명이 있고, 공동주택일 경우 추가한다.
                                        if(data.buildingName !== '' && data.apartment === 'Y'){
                                           extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                        }
                                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                        if(extraRoadAddr !== ''){
                                            extraRoadAddr = ' (' + extraRoadAddr + ')';
                                        }
                        
                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                        document.getElementById('sample4_postcode').value = data.zonecode;
                                        document.getElementById("sample4_roadAddress").value = roadAddr;
                                        document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                                        
                                        // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                                        if(roadAddr !== ''){
                                            document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                                        } else {
                                            document.getElementById("sample4_extraAddress").value = '';
                                        }
                        
                                        var guideTextBox = document.getElementById("guide");
                                        // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                                        if(data.autoRoadAddress) {
                                            var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                                            guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                                            guideTextBox.style.display = 'block';
                        
                                        } else if(data.autoJibunAddress) {
                                            var expJibunAddr = data.autoJibunAddress;
                                            guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                                            guideTextBox.style.display = 'block';
                                        } else {
                                            guideTextBox.innerHTML = '';
                                            guideTextBox.style.display = 'none';
                                        }
                                    }
                                }).open();
                            }
                        </script>
                </tr>
    
                <tr class="pay_tr">
                    <th>배송 메세지</th>
                    <td colspan=4"><select class="form-area-address">
                            <option>배송 메세지를 선택해주세요</option>
                            <option>배송 전 미리 연락 바랍니다</option>
                            <option>부재시 경비실에 맡겨주세요</option>
                            <option>부재시 문앞에 놓아주세요</option>
                            <option>택배함에 보관해 주세요</option>
                    </select>
                    <textarea rows="4" cols="80" class="form-area"></textarea></td>
                </tr>
            </table>
        </div>
    
    
        <!-- 결제 수단 -->
        <br>
        <hr>
        <div class="h2_padding">
            <h2>결제 수단</h2>
    
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"> 
                <label class="form-check-label" for="flexRadioDefault1"> 신용 카드 </label>
            </div>
    
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked> 
                <label class="form-check-label" for="flexRadioDefault2"> 일반 결제 </label>
            </div>
            <hr>
    
            <!-- 포인트 -->
            <tr class="h2_padding">
                <h2>포인트</h2>
    
                전체 포인트 0원 할인적용
                <br>
                <br> 
                사용 포인트 500원 할인적용
    
    
            </tr>
    
        </div>
    
    
        <hr>
        <!-- 약관 -->
        <div class="h2_padding">
            <input type="checkbox" name="checkpay">상기 결제정보를 확인하였으며, 구매진행에동의합니다. <br> 
            <input type="checkbox" name="checkpay"> 주문할 상품의 상품명, 상품 가격, 배송 정보를 확인하였으며, 
                                                    구매에 동의하시겠습니까? (전자상거래법 제8조 2항)
        </div>
        <hr>
    
        <!-- 결제 금액 -->
        <div class="h2_padding">
            <h2>결제 금액</h2>
            <div id="three">
                <table>
                    <tr>
                        <td>상품금액</td>
                        <td>15,000원</td>
                    </tr>
                    <tr>
                        <td>배송비</td>
                        <td>2,500원</td>
                    </tr>
                    <tr>
                        <td>포인트</td>
                        <td>-500원</td>
                    </tr>
                    <tr>
                        <th>최종 결제금액</th>
                        <th>17,000원</th>
                    </tr>
                </table>
                <hr>
                <div class="container">
                    <button id="check_module" button type="button" class="btn btn-primary btn-sm btn-block">결제하기</button>
                    <script>
                        $("#check_module").click(function () {
                        var IMP = window.IMP; // 생략가능
                        IMP.init('imp55296916');
                        // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                        // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
                        IMP.request_pay({
                        pg: 'inicis', // version 1.1.0부터 지원.
                        /*
                        'kakao':카카오페이,
                        html5_inicis':이니시스(웹표준결제)
                        'nice':나이스페이
                        'jtnet':제이티넷
                        'uplus':LG유플러스
                        'danal':다날
                        'payco':페이코
                        'syrup':시럽페이
                        'paypal':페이팔
                        */
                        pay_method: 'card',
                        /*
                        'samsung':삼성페이,
                        'card':신용카드,
                        'trans':실시간계좌이체,
                        'vbank':가상계좌,
                        'phone':휴대폰소액결제
                        */
                        merchant_uid: 'merchant_' + new Date().getTime(),
                                 
                        name: '주문명:결제 테스트',
                        //결제창에서 보여질 이름
                        amount: 1000,
                        //가격
                        buyer_email: 'iamport@siot.do',
                        buyer_name: '구매자이름',
                        buyer_tel: '010-1234-5678',
                        buyer_addr: '서울특별시 강남구 삼성동',
                        buyer_postcode: '123-456',
                        m_redirect_url: 'https://www.yourdomain.com/payments/complete'
                        /*
                        모바일 결제시,
                        결제가 끝나고 랜딩되는 URL을 지정
                        (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
                        */
                        }, function (rsp) {
                        console.log(rsp);
                        if (rsp.success) {
                        var msg = '결제가 완료되었습니다.';
                        msg += '고유ID : ' + rsp.imp_uid;
                        msg += '상점 거래ID : ' + rsp.merchant_uid;
                        msg += '결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        } else {
                        var msg = '결제에 실패하였습니다.';
                        msg += '에러내용 : ' + rsp.error_msg;
                        }
                        alert(msg);
                        });
                        });
                        </script>
                        </body>
                        
                                       </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../../common/footerbar.jsp" %>

</html>