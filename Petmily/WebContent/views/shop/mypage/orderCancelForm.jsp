<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .outer{
            margin:auto;
            border: 1px solid black;
            width:700px;
            position: relative;
        }

        #title{
            text-align: center;
            vertical-align: middle;
            background-color: gray;
            margin:0px;
            font-weight: 700;
            height:40px;
            padding-top:8px ;
        }
        .smalltitle{
            font-size:16px;
            font-weight: 600;
            margin:3px 0px;
        }
        #merchandise{
            font-size:13px;
            color:gray;
            position: absolute;
            right:200px;
            top:100px;
        }
        #summoney{ 
            font-size: large;
            font-weight: 800;
            position: absolute;
            right:60px;
        }


        #content{
            margin-left:30px;
            margin-right:30px;
            margin-bottom: 20px;
        }

        th,td{
            padding-right: 40px;
        }
        #bbtn{ 
            color:white;
            background-color: orange; /*색 바꾸기*/
            width:100px;
            padding:7px 15px;
            border:0;
            border-radius: 4px;
            float:right;
            position: absolute;
            left:550px;
            top:500px;
        }
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>

    <form action="" method="">
        <div class="outer">
            <div id="title">주문취소신청</div>
            
            <br>
            
            <div id="content">
                <div id="canclebody">
                    <div id="one">
                        <div class="smalltitle">주문번호 : A-14124954 </div>
                        21.11.15 구매 
                        <a href="" id="merchandise">3개의 상품</a>
                        <div class="inline-block" id="summoney">총 : 55000원</div>
    
                    </div>
    
    
                    <hr>
                    <div id="two">
                        <div class="smalltitle">취소사유</div>
                        <div class="dropdown">
                            <button type="button" id="dropdown" class="btn dropdown-toggle" data-toggle="dropdown">
                                취소사유
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">고객변심</a>
                              <a class="dropdown-item" href="#">상품불만족</a>
                              <a class="dropdown-item" href="#">고객주문오류</a>
                              <a class="dropdown-item" href="#">배송 늦어짐</a>
                              <a class="dropdown-item" href="#">기타</a>
                            </div>
                          </div>
                    </div>
    
    
                    <hr>
    
                    <div id="three">
                        <div class="smalltitle">배송지정보</div>
                        <table>
                            <tr>
                                <td>이름 </td>
                                <td>xxx님</td>
                            </tr>
                            <tr>
                                <td>주소 </td>
                                <td>서울시 용산구</td>
                            </tr>
                            <tr>
                                <td>휴대폰 </td>
                                <td>010-xxxx-xxxx</td>
                            </tr>
                            <tr>
                                <td>배송메모 </td>
                                <td>dfdfdfdf</td>
                            </tr>
                        </table>
    
                    </div>
    
                    <hr>
    
                    <div id="four">
                        <div class="smalltitle">결제정보</div>
                        <table>
                            <tr>
                                <td>상품금액</td>
                                <td>20,000원</td>
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
                                <th>22,000 </th>
                            </tr>
                        </table>
                        <button id="bbtn">취소신청</button>

                        
                    </div>
                </div>
            

            </div>

        </div>

    </form>
      </form>

<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>