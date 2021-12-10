<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 정보는 펫밀리</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .top {
        width: 100%;
        height: 60px;
        background-color: rgb(247, 198, 4);
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
        margin-left: 0px;
        font-size: 12px;
    }

    #termsBox {
        margin-left: 160px;
        border-radius: 5px;
        border: 1px solid lightgray; 
        width: 325px;
        height: 180px;
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

    .joinButton {
        margin-left: 160px;
        margin-top: 40px;
        width: 325px;
        height: 50px;
        border-radius: 5px;
        border: none;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }

    .notify {
        font-size: 13px;
        color: mediumseagreen;
        font-weight: bold;
    }

    .notifyRed {
        font-size: 13px;
        color: red;
        font-weight: bold;
    }

</style>
</head>

<body>
	<div class="outer">

        <div class="top" align="center">
            <a href="<%= contextPath %>">
                <img src="resources/img/logo_side.png" alt="">
            </a>
        </div>

        <div class="inner">
            
            <div class="inner-top">
                <h1 align="center" style="margin-bottom: 20px;">Welcome to Petmily</h1>
                <p align="center">이미 계정이 있으신가요?  <a href="<%= contextPath %>/loginForm.me">로그인</a></p>
                <p align="right" style="margin-top: 50px;"><span class="star">*</span>필수입력사항</p>
            </div>

            <div class="content">

                <form action="" id="joinForm" method="post">
                    
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

                            <button type="button" class="rightBtn btn-sm btn-light">이메일 인증</button>
                            
                            <!-- 이메일 인증 버튼 누를 시 바뀌는 버튼 (이메일 인증->인증번호 재전송) -->
                            <!-- <button type="button" class="rightBtn btn-sm btn-light">인증번호 재전송</button> -->
                        </div>

                    </div>


                    <!-- 이메일 인증 버튼 누를 시 아래에 나타나는 div -->
                    <!-- <div>
                        <div>
                            <label class="leftText" for="verify"></span></label>
                        </div>

                        <div>
                            <input type="text" name="verification" placeholder="인증번호" required>
                            <button type="button" class="rightBtn btn-sm btn-light">인증하기</button>
                        </div>

                        <div>
                            <span class="notify">등록하신 이메일로 인증번호를 발송하였습니다</span>
                            // 이메일 인증 성공 시
                            <span class="notify">이메일 인증 성공</span>
                            // 이메일 인증 실패 시
                            <span class="notifyRed">이메일 인증 실패</span>
                        </div>

                    </div> -->



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
                            <button type="button" class="rightBtn btn-sm btn-light">중복 확인</button>
                        </div>
                        <span class="tip">한글, 영문, 숫자로만 2~15자로 입력해주세요</span>
                        
                    </div>


                    <div>
                        <div>
                            <label class="leftText" for="address">주소</label>
                        </div>

                        <div>
                            <input type="text" name="address" placeholder="우편번호">
                            <button type="button" class="rightBtn btn-sm btn-light">우편번호 찾기</button>
                        </div>

                        <div style="margin : 10px 160px">
                            <input type="text" name="address2" placeholder="주소">
                        </div>

                        <div style="margin : 10px 160px">
                            <input type="text" name="address3" placeholder="상세주소">
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
                                        <a href="" class="checkText" data-toggle="modal" data-target="#terms1">이용 약관</a> 
                                        <span class="smallSpan">(필수)</span><span class="star">*</span>
                                
                            </div>

                            

                            <div class="termsCheck">
                                        <input type="checkbox">
                                        <a href="" class="checkText" data-toggle="modal" data-target="#terms2">개인정보 수집 및 이용동의</a> 
                                        <span class="smallSpan">(필수)</span><span class="star">*</span>
                                
                            </div>

                        </div>
                        
                        <button type="submit" class="joinButton btn-warning">회원가입 하기</button>
                        
                        
                    </div>
                </form>

            </div>
            
        </div>
       
        
    <!-- terms1 Modal -->
    </div>

        <div class="modal" id="terms1">
            <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                <h5 class="modal-title" style="font-weight: bold;">이용약관</h5>
                <button type="button" class="close" data-dismiss="modal">×</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body" style="padding: 50px">
                    <p>제 1조 (목적) 펫밀리 서비스 이용약관(이하 “약관”이라 합니다)은 주식회사 개발하라묘(이하 “조”라고 합니다)가 제공하는 서비스와 관련하여 회사와 이용 고객(또는 회원) 간에 서비스의 이용 조건 및 절차, 회사와 회원 간의 권리, 의무 및 책임 사항 기타 필요한 사항을 규정함을 목적으로 합니다.</p>

                    <p> 제 2조 (용어) 본 약관에서 사용하는 용어의 정의는 다음 각 호와 같으며, 정의되지 않은 용어에 대한 해석은 관계법령 및 서비스별 안내에서 정하는 바에 따릅니다.
                    1. 펫밀리 서비스(이하 “서비스”라 합니다): 이용 고객 또는 회원이 PC, 휴대형 단말기, 태블릿PC 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 회사가 제공하는 반려동물 관련 컨텐츠 및 전문가 큐레이션 서비스, SNS 및 그 외 관련된 서비스를 말합니다.
                    2. 회원: 회사의 서비스에 접속하여 본 약관에 동의하고 ID와 PASSWORD를 발급 받았으며 회사가 제공하는 서비스를 이용하는 고객을 포괄적으로 의미합니다.
                    3. 회원정보: 회사가 가입신청자에게 회원가입 신청양식(이하 “신청양식"이라 합니다)에 기재를 요청하는 가입신청자의 개인정보와 회원의 식별과 서비스 이용을 위하여 회원이 입력하고 서비스 내 공개된 개인정보를 의미합니다.
                    4. ID(고유번호): 회원 식별과 회원의 본 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합을 말합니다. 본 서비스에서는 E-mail 주소를 ID로 사용합니다.
                    5. PASSWORD(비밀번호): 회원의 정보 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다.
                    6. 게시물: 회원이 회사가 제공하는 서비스에 게시 또는 등록하는 부호(URL 포함), 문자, 음성, 음향, 영상(동영상 포함), 이미지(사진 포함), 파일 등 일체의 정보를 말합니다.
                    </p>

                    <p>이 외 조항이 더 있는데요 생략하겠습니다~^^</p>
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer" align="center">
                <button type="button" class="btn btn-warning" data-dismiss="modal">확인</button>
                </div>
                
            </div>
            </div>
        </div>
    </div>

    <!-- terms1 Modal2 -->
    </div>

    <div class="modal" id="terms2">
        <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
        
            <!-- Modal Header -->
            <div class="modal-header">
            <h5 class="modal-title" style="font-weight: bold;">개인정보 수집 및 이용동의</h5>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body" style="padding: 50px">
                <h5 style="font-weight: bold;">수집방법</h5>
                <p>회원가입(필수)</p>

                <h5 style="font-weight: bold;">수집 항목</h5>
                <p>닉네임, 이메일, 비밀번호, 주소</p>

                <h5 style="font-weight: bold;">수집 및 이용목적</h5>
                <p>서비스 이용 및 상담, 환불 및 문의 회신, 마케팅 및 서비스개선을 위한 분석 등</p>

                <h5 style="font-weight: bold;">보유 및 이용기간</h5>
                <p>회원탈퇴 및 목적 달성 후 지체없이 삭제합니다.</p>
                <p>단, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령의 규정에 따라 거래 관계 확인을 위해 개인정보를 일정기간 보유할 수 있습니다.</p>
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer" align="center">
            <button type="button" class="btn btn-warning" data-dismiss="modal">확인</button>
            </div>
            
        </div>
        </div>
    </div>
    </div>
</body>
</html>