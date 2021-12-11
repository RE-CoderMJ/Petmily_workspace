<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/boards/bCommon/reportDeleteModals.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 게시글 삭제 Modal -->
    <div class="modal fade" id="deleteAskModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                                        정말 삭제하시겠습니까?
                    </div>
                    <div id="deletebtn-area">
                      <a type="button" class="btn" id="confirm-btn" data-dismiss="modal" data-toggle="modal" href="#deleteCompleted">확인</a>
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>

    <!-- 게시글 삭제완료 Modal -->
    <div class="modal fade" id="deleteCompleted">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                        정상적으로 삭제되었습니다.
                    </div>
                    <div>
                      <button type="button" class="btn" data-dismiss="modal" id="deleteCompletedclosebtn">닫기</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>

    <!-- 신고 Modal -->
    <div class="modal fade" id="reportAskModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div id="required-area"><span class="report-required-mark">*</span>필수입력사항</div>
                    <div id="report-area">
                        신고 사유를 선택해주세요
                        <span class="report-required-mark">*</span>
                    </div>
                    <form action="" id="report-form">
                        <div id=select-area align="left">
                            <input type="radio" name="reason" id="ads" checked>
                            <label for="ads">광고성 게시물</label><br>

                            <input type="radio" name="reason" id="redudancy">
                            <label for="redudancy">도배 및 중복 게시물</label><br>

                            <input type="radio" name="reason" id="abuse">
                            <label for="abuse">욕설/비방</label><br>

                            <input type="radio" name="reason" id="sexual">
                            <label for="sexual">외설적인 게시물</label><br>

                            <input type="radio" name="reason" id="etcbtn">
                            <label for="etcbtn">기타</label>
                        </div>

                        <div id="reason-area">
                            <span class="report-required-mark">*</span>사유에 대한 간략한 설명을 적어주세요.<br>
                            <textarea name="report-reason" id="report-content" placeholder="내용을 입력해주세요" required></textarea>
                        </div>
                        <div id="reportbtn-area">
                          <a type="button" class="btn" id="report-btn" data-dismiss="modal" data-toggle="modal" href="#reportCompleted">신고하기</a>
                          <button type="button" class="btn" data-dismiss="modal" id="report-close">닫기</button>
                        </div>              
                    </form>
                </div>
        
            </div>
        </div>
    </div>

    <!-- 신고완료 Modal -->
    <div class="modal fade" id="reportCompleted">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                        신고가 완료되었습니다.
                    </div>
                    <div id="report-confirmMsg">
                        신고 내역은 검토 후<br>
                        조취될 예정입니다.<br>
                        감사합니다.
                    </div>
                    <div id="deletebtn-area">
                      <button type="button" class="btn" data-dismiss="modal" id="reportCompletedclosebtn">확인</button>
                    </div>              
                </div>
        
            </div>
        </div>
    </div>
</body>
</html>