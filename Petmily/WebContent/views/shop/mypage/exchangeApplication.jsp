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
         div, img, li, a{
		     box-sizing: border-box;
		}
		     
		.content-area{
			width: 1400px;
			height: 1000px;
			padding:200px;
			padding-top:35px;
		}
        #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin:20px;
            margin-left:150px;
        } 
        #outer{
            width:800px;
            border: 1px solid rgb(94,94,94);
            padding: 10px 20px;
            border-radius: 10px;
            position: relative;
        }
        #content-img{margin-left: 30px;}
        #onecontent{
            position: absolute;
            top:25px;
            font-size: 20px;
            margin-left: 30px;
        }
        #money{position:absolute; right:50%; top:30px; font-size:18px;}

        #two{
            margin:10px 30px;

        }
        #three{
            margin:10px 30px;

        }
        .smalltitle{
            font-size:16px;
            font-weight: 600;
            margin:3px 0px;
        }
        th,td{
            padding-right: 40px;
        }

        #bbtn1{ 
            color:white;
            background-color:rgb(99, 96, 96) ; /*색 바꾸기*/
            width:80px;
            padding:7px 15px;
            border:0;
            border-radius: 4px;
            float:right;
            position: absolute;
            left:550px;
            top:480px;
        }
        
        #bbtn2{ 
            color:black;
            background-color: rgb(196, 196, 196); /*색 바꾸기*/
            width:80px;
            padding:7px 15px;
            border:0;
            border-radius: 4px;
            float:right;
            position: absolute;
            left:650px;
            top:480px;
        }
       
        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>

<div class="content-area">

    <div id="title" class="inline-block" >교환 / 반품 신청</div>

    <div id="outer">

        <div id="one">
            <div class="inline-block" >
                <img src=""  id="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block"  id="onecontent" >
                        
                상품명
                <br>

                <div id="option" style="font-size:12px; margin-top: 5px;">블루 1개</div>
    
            </div>
            
            <div class="inline-block" id="money">
                <h3>20,000 원</h3>
            </div>
        </div>
        <hr>
        <div id="two">
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

        <div id="three">
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
            <br><br>

<!-- 교환버튼 모달창 -->
<button type="button" id="bbtn1" data-toggle="modal" data-target="#myModal">
    교환
  </button>
  

  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content" style="background-color: gray;">
  
        <!-- Modal Header -->
        <div class="modal-header" >
          <h4 class="modal-title" style="color: white;">교환 사유</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
  
        <!-- Modal body -->
        <div class="modal-body">
            <p  style="color: white;">※불량 교환시 [불량 교환] 기재 부탁드립니다.</p> 
              <hr>
          <textarea name="" id="" cols="30" rows="10" style="margin-left:50px; width:350px; resize: none;">

              

          </textarea>
        </div>
  
        <!-- Modal footer -->
        <div class="modal-footer">
          <a href="" class="btn btn-danger">확인</a>
        </div>
  
      </div>
    </div>
  </div>

    <!-- 반품버튼 모달창 -->

    <button type="button" id="bbtn2" data-toggle="modal" data-target="#cancle">
        반품
      </button>


    <div class="modal" id="cancle">
        <div class="modal-dialog">
          <div class="modal-content" style="background-color: gray;">
      
            <!-- Modal Header -->
            <div class="modal-header" >
              <h4 class="modal-title" style="color: white;">반품 사유</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body">
                
                <div class="dropdown" align="center">
                    <button type="button" id="dropdown" class="btn dropdown-toggle" data-toggle="dropdown" style="background-color: white;">
                        반품사유
                    </button>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="#">고객변심</a>
                      <a class="dropdown-item" href="#">상품불만족</a>
                      <a class="dropdown-item" href="#">고객주문오류</a>
                      <a class="dropdown-item" href="#">불량반품</a>
                      <a class="dropdown-item" href="#">기타</a>
                    </div>
                  </div>
    
                
            </div>
      
            <!-- Modal footer -->
            <div class="modal-footer">
              <a href="" class="btn btn-danger">확인</a>
            </div>
      
          </div>
        </div>
      </div>
    


            <br>
            <br>

            
        </div>
    </div>

</div>


    
<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>