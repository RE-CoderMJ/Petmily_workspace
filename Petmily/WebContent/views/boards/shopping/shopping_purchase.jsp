<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

      

 div, img, li, a{
		     box-sizing: border-box;
		}
		     
		.content-area{
			width: 1400px;
			height: 1200px;
			padding:200px;
			padding-top:5px;
			
		}
        
        #outer{
            width:800px;
            border: 1px solid rgb(94,94,94);
            padding: 10px 20px;
            border-radius: 10px;
            position: relative;
            margin-left:200px;
        }

             .star {
        color: orange;

        
        </style>

        </head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
          

         <!-- 메뉴바 -->
    <%@ include file="../common/admin_menubar.jsp" %>
    
        <!-- 사이드바-->
        <%@ include file="../common/shoppingsidebar.jsp" %>
       
       
        <div class="content-area">
           <h1>주문 결제</h1>
                  
             
     <!-- 주문 고객 정보 -->
     <p align="right" style="margin-top: 50px;"><span class="star">*</span>필수 입력 사항</p>
     <div class="h2_padding">
         <h2>주문 고객 정보</h2>
     </div>
     <div>
         <table class="payadd_table"> 
         <col width="150px"><col width="300px"><col width="150px">
             <tr>
                <tr class="pay_tr">
                    <th>주문하시는 분<span class="star">*</span></th><td colspan="4">
                        <input type="text" name="receiveName" class="form-area"></td>
                                                      
                    
                 </td>
             </tr>		
             <tr class="pay_tr">
                 <th>연락처<span class="star">*</span></th><td colspan="2"><select name="phoNum1" class="form-area-call">
                                     <option value="010">010</option>
                                     <option value="011">011</option>
                                     <option value="017">017</option>
                                     <option value="019">019</option>
                                 </select>
                 
                 
                 <input type="text" name="phoNum2" maxlength="4" class="form-area-call"> - <input type="text" name="phoNum3" maxlength="4" class="form-area-call"></td>
                 
                 
             </tr>
             <tr class="pay_tr">
                 <th>이메일<span class="star">*</span></th><td><input type="text" id="email1" class="form-area-email"> @ <input type="text" size="10" id="emailaddr" class="form-area-email"></td>
                                                                     <td><select id="selemail" class="form-area-call">
                                                                     <option value="">직접 입력</option>
                                                                     <option value="gmail.com">gmail.com</option>
                                                                     <option value="naver.com">naver.com</option>
                                                                     <option value="daum.net">daum.net</option>
                                                                     <option value="hotmail.com">hotmail.com</option>
                                                                 </select></td>
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
         <col width="150px"><col width="300px"><col width="100px"><col width="150px"><col width="150px">
             	
             <tr class="pay_tr">
                 <th>받으시는 분<span class="star">*</span></th><td colspan="4"><input type="text" name="receiveName" class="form-area"></td>				
             </tr>
             <tr class="pay_tr">
                 <th>연락처<span class="star">*</span></th><td colspan="4"><select name="phoneNum1" class="form-area-call">
                                     <option value="010">010</option>
                                     <option value="011">011</option>
                                     <option value="017">017</option>
                                     <option value="019">019</option>
                                 </select>
                 
                 -<input type="text" name="phoneNum2" maxlength="4" class="form-area-call"> - <input type="text" name="phoneNum3" maxlength="4" class="form-area-call"></td>
             </tr>
             <tr class="pay_tr">
                 <th>배송 주소<span class="star">*</span></th>
                 <td colspan="4"><input type="text" id="sample4_postcode" placeholder="우편번호" class="form-area-email">
                 <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="s_btn"><br>
                 <input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="40" class="form-area-address"><br>
                 <span id="guide" style="color:#999;display:none"></span>
                 <input type="text" id="sample4_detailAddress" placeholder="상세주소" class="form-area-address">
                 </td>
             </tr>
             <tr class="pay_tr">
                 <th>배송 메세지</th><td colspan=4"><select class="form-area-address">
                                         <option>배송 메세지를 선택해주세요</option>
                                         <option>배송 전 미리 연락 바랍니다</option>
                                         <option>부재시 경비실에 맡겨주세요</option>
                                         <option>부재시 문앞에 놓아주세요</option>
                                         <option>택배함에 보관해 주세요</option>
                                     </select><textarea rows="4" cols="80" class="form-area"></textarea></td>
             </tr>
         </table>
         </div>

         <!-- 결제 수단 -->
     <br><hr><div class="h2_padding">
         <h2>결제 수단</h2>
     
        <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
            <label class="form-check-label" for="flexRadioDefault1">
              신용 카드
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
            <label class="form-check-label" for="flexRadioDefault2">
              일반 결제
            </label>
        </div>   <input type="checkbox" name="checkpay">상기 결제정보를 확인하였으며, 구매진행에 동의합니다.
          <br><hr>
          
          <!-- 포인트 -->
          <tr class="h2_padding">
            <h2>포인트</h2>
            
            전체 포인트 0원 할인적용
            <br> <br>
   사용 포인트 500원 할인적용
            
    
            
        </tr>
     </div><hr>
     <!-- 약관 -->
     <div class="h2_padding">
                 <input type="checkbox" name="checkpay">상기 결제정보를 확인하였으며, 구매진행에 동의합니다.
            <br>
         <input type="checkbox" name="checkpay">주문할 상품의 상품명, 상품 가격, 배송 정보를 확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제8조 2항)
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
                    <th>17,000원 </th>
                </tr>
            </table>
            <hr>
            <div class="container">
<button type="button" class="btn btn-primary btn-sm btn-block">결제하기</button>
     </div>	