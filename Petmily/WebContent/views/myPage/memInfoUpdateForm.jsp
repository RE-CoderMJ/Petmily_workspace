<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<style>

    .outer {
        width: 1400px;
        margin: auto;   
    }
    

    .inner {
        width: 650px;
        margin: auto;
    }

    #title {
        font-weight: 900;
        font-size: 20px;
        height: 50px;
    }

    .memDelBtn {
        float: right;
        color: gray;
        text-decoration-line: underline;
    }

    .content { 
        margin-top: 80px;
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
        padding: 10px;
    }

    input[type=password] {
        height: 40px;
        width: 325px;
        border: 1px solid lightgray;
        border-radius: 5px;
        padding: 10px;
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
        border: 1px solid lightgray !important;
        border-radius: 5px;
    }

    #updateForm>div {
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

    .updateButton {
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
    <%@ include file="../common/menubar.jsp" %>
	<div class="outer">
        <%@ include file="../shop/mypage/mypageSidebar.jsp" %>
        

        <div class="inner">
            
            <div>
                <p id="title">회원정보 수정</p>
                <div style="border-bottom: 2px solid lightgray; margin: -30px 0px 5px;"></div>
                <a href="<%= contextPath %>/delForm.my" class="memDelBtn">회원탈퇴</a>
            </div>

            <div class="content">

                <form action="" id="updateForm" method="post">
                    
                    <div>
                        <div>
                            <label class="leftText" for="userEmail">이메일<span class="star">*</span></label>
                        </div>
                        

                        <div>
                            <input type="text" name="userEmail" placeholder="이메일" style="width: 150px;" readonly>
                            @
                            <select name="email_select" aria-placeholder="선택해주세요">
                                <option selected disabled>선택해주세요</option>
                                <option disabled="disabled" value="naver.com">naver.com</option>
                                <option disabled="disabled" value="hanmail.com">hanmail.com</option>
                                <option disabled="disabled" value="daum.net">daum.net</option>
                                <option disabled="disabled" value="gmail.com">gmail.com</option>
                                <option disabled="disabled" value="nate.com">nate.com</option>
                                <option disabled="disabled" value="1">직접입력</option>
                            </select>

                        </div>
                        <span class="tip">이메일을 변경하시려면 FAQ에 문의글을 남겨주세요</span>

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
                        <!-- 닉네임 중복버튼 클릭 시 중복일 때 -->
                        <!-- <span class="notifyRed">중복된 닉네임입니다. 다른 닉네임을 입력해주세요</span> -->
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
                            <label class="leftText" for="userPwd2">프로필 이미지</label>
                        </div>

                        <div>
                            <img id="fileImg" src="" width="250" height="250" onclick="chooseFile(1);">
                        </div>
                        
                        <div>
                            <label class="leftText"></label>
                        </div>

                        <input type="file" name="file" id="file" style="margin-top: 20px;" onchange="loadImg(this, 2);">
                    </div>

                    <script>



                    </script>
                        
                        
                    <button type="submit" class="updateButton btn-warning">회원정보 수정</button>
                        
                        
                    
                </form>

            </div>
            
        </div>
    
    <div style="margin-top: 200px;">

        <%@ include file="../common/footerbar.jsp" %>
    </div>

</body>
</html>