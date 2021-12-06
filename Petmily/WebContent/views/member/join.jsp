<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 정보는 펫밀리</title>

<style>
    .top {
        width: 100%;
        height: 55px;
        background-color: orange;
        margin-bottom: 50px;
    }

    img {
        width: 200px;
        margin-top: 5px;
    }

    .inner {
        width: 650px;
        margin: auto;
    }

    .leftText {
        float: left;
        width: 160px;
        font-size: 20px;
        font-weight: bold;
        height: 40px;
        line-height: 40px;
    }

    input[type=text] {
        height: 40px;
        width: 325px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    input[type=password] {
        height: 40px;
        width: 325px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    select {
        width: 150px;
        height: 40px;
        font-size: 14px;
        border: 1px solid lightgray;
        border-radius: 5px;
    }

    .rightBtn {
        float: right;
        height: 40px;
        width: 140px;
        border: 1px solid lightgray;
        border-radius: 5px;
        cursor: pointer;
    }

    #joinForm>div {
        padding-bottom: 20px;
    }

    .star {
        color: orange;
    }

    .tip {
        margin-left: 160px;
        font-size: 12px;
    }

    #termsBox {
        margin-left: 160px;
        border-radius: 5px;
        border: 1px solid lightgray; 
        width: 325px;
        height: 170px;
    }

    .termsCheck {
        margin: 20px;
    }
    
    input[type=checkbox] {
        transform : scale(1.5);
    }

    .checkText {
        padding-left: 10px;
        font-size: 15px;
    }

    .smallSpan {
        font-size: 13px;
    }

    #joinButton {
        margin-left: 160px;
        margin-top: 40px;
        width: 325px;
        height: 50px;
        border-radius: 5px;
        border: none;
        background-color: orange;
        font-size: 15px;
        font-weight: bold;
    }

    #joinButton:hover {
        background-color: tomato;
        cursor: pointer;
    }
</style>
</head>

<body>
	<div class="outer">

        <div class="top" align="center">
            <a href="">
                <img src="../../resources/img/logo_side.png" alt="">
            </a>
        </div>

        <div class="inner">
            
            <div class="inner-top">
                <h1 align="center" style="margin-bottom: 20px;">Welcome to Petmily</h1>
                <p align="center">이미 계정이 있으신가요?  <a href="로그인경로">로그인</a></p>
                <p align="right" style="margin-top: 50px;"><span class="star">*</span>필수입력사항</p>
            </div>

            <div class="content">

                <form action="" id="joinForm" method="post";>
                    
                    <div>
                        <div>
                            <label class="leftText" for="userEmail">이메일<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="text" name="userEmail" placeholder="이메일" style="width: 150px;" required>
                            @
                            <select name="email_select" aria-placeholder="선택해주세요">
                                <option selected disabled>선택해주세요</option>
                                <option value="naver.com">naver.com</option>
                                <option value="hanmail.com">hanmail.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="nate.com">nate.com</option>
                                <option value="1">직접입력</option>
                            </select>

                            <button type="button" class="rightBtn">이메일 인증</button>
                        </div>
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="userPwd">비밀번호<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="password" name="userPwd" placeholder="비밀번호" required>
                        </div>
                        <span class="tip">영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요</span>
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="userPwd2">비밀번호 확인<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="password" name="userPwd2" placeholder="비밀번호 확인" required>
                        </div>
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="userName">이름<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="text" name="userName" placeholder="이름" required>
                        </div>
                        <span class="tip">한글, 영문으로만 2~15자로 입력해주세요</span>
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="Phone">전화번호<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="text" name="Phone" style="width: 80px" placeholder="010" required>
                            -
                            <input type="text" name="Phone2" style="width: 105px" placeholder="0000" required>
                            -
                            <input type="text" name="Phone3" style="width: 105px" placeholder="0000" required>
                        </div>
                    </div>

                
                    <div>
                        <div>
                            <label class="leftText" for="nickname">닉네임<span class="star">*</span></label>
                        </div>

                        <div>
                            <input type="text" name="nickname" placeholder="닉네임" required>
                            <button type="button" class="rightBtn">중복 확인</button>
                        </div>
                        <span class="tip">한글, 영문, 숫자로만 2~15자로 입력해주세요</span>
                        
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="address">주소</label>
                        </div>

                        <div>
                            <input type="text" name="address" placeholder="우편번호" required>
                            <button type="button" class="rightBtn">우편번호 찾기</button>
                        </div>

                        <div style="margin : 10px 160px">
                            <input type="text" name="address2" placeholder="주소" required>
                        </div>

                        <div style="margin : 10px 160px">
                            <input type="text" name="address3" placeholder="상세주소" required>
                        </div>
                    </div>


                    <div>

                        <div>
                            <label class="leftText" for="terms">약관동의</label>
                        </div>

                        <div id="termsBox">

                            <div class="termsCheck">
                                        <input type="checkbox" name="agreeAll">
                                        <span class="checkText">전체 동의</span>
                            </div>
                            
                            <hr style="width: 300px;">
                            
                            <div class="termsCheck">
                                        <input type="checkbox">
                                        <a href="" class="checkText">이용 약관</a> 
                                        <span class="smallSpan">(필수)</span><span class="star">*</span>
                                
                            </div>

                            <div class="termsCheck">
                                        <input type="checkbox">
                                        <a href="" class="checkText">개인정보 수집 및 이용동의</a> 
                                        <span class="smallSpan">(필수)</span><span class="star">*</span>
                                
                            </div>

                        </div>

                        <button type="submit" id="joinButton">회원가입 하기</button>
                    

                    </div>
                </form>

            </div>

        </div>

    </div>
</body>
</html>