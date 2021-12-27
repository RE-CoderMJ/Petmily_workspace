<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.pm.shop.model.vo.*"%>
<%
	OrderSelect o = (OrderSelect)request.getAttribute("o");
	OrderSelect od = (OrderSelect)request.getAttribute("od");

	//ArrayList<OrderSelect> osdetail=(ArrayList<OrderSelect>)request.getAttribute("osdetail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
         div, img, li, a{
		     box-sizing: border-box;
		}
		.oouter{
			width: 1700px;
			height: 1000px;
			margin:auto;
		}     
		.content-area{
			width: 1200px;
			height: 1000px;
			padding:100px;
			padding-top:0px;
			margin:auto;
		}

       #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
            margin-left:10px;
        } 
        #outer{
            width:1000px;
            border: 1px solid rgb(94,94,94);
            border-radius: 10px;
            padding: 50px 20px;
            margin:auto;
			position:relative;
        }
       
        
        #content-img{margin-left: 30px;}
        #onecontent{
        	position:relative;
        	top:20px;
            font-size: 20px;
            margin-left: 30px;
        }
        #money{
        	position:relative; 
        	left:500px; 
        	top:30px; 
        	font-size:18px;
        	font-weight: 800;
        }

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
        

	  th{
         padding-right: 40px;
         font-size:20px;
      }
      
      td{
      	 padding-right: 40px;
         font-size:18px;
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
            left:700px;
            top:500px;
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
            left:800px;
            top:500px;
        }
        
        .modal-backdrop { opacity:0.1 !important; }
        #rtreason{
         width:180px;
         height:40px;
         font-size:18px;
         border-radius:3px;
         
        }
        
        #donebtn{
        	width:80px;
        	height:40px;
        	background-color:orange;
        	border:none;
        	border-radius:5px;
        }

       
        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>

<div class="oouter">

<%@ include file="mypageSidebar.jsp" %>

<div class="content-area">

    <div id="title"  >교환 / 반품 신청</div>

<div id="outer">
<input type="hidden" name="memNo" value="<%= loginUser.getMemNo() %>">
	


        <div id="one">
            <div class="inline-block" >
                <img src=""  id="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block"  id="onecontent" >
                        
               	 <%= o.getProductName() %>
                <br>

                <div id="option" style="font-size:12px; margin-top: 5px;"><%= o.getOrderPoption() %></div>
    
            </div>
            
            <div class="inline-block" id="money">
                <h3><%= o.getPrice() %>원</h3>
            </div>
        </div>


        <hr>
        <div id="two">
            <div class="smalltitle">배송지정보</div>
            <table>
                <tr>
                    <td>이름 </td>
                    <td><%= od.getMemName() %>님</td>
                </tr>
                <tr>
                    <td>주소 </td>
                    <td><%= od.getAdderess() %></td>
                </tr>
                <tr>
                    <td>휴대폰 </td>
                    <td><%= od.getPhone() %></td>
                </tr>
                <tr>
                    <td>배송메모 </td>
                    <td><%= od.getDeliveryMemo() %></td>
                </tr>
            </table>


        </div>

        <hr>

        <div id="three">
            <div class="smalltitle">결제정보</div>
            <table>
                <tr>
                    <td>상품금액</td>
                    <td><%= od.getPrice() %> 원</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td>2,500원</td>
                </tr>
                 <tr>
                    <td>결제수단</td>
                    <td><%= od.getPayment() %></td>
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
	  
	<form id="enroll-form" action="<%=contextPath %>/exchangeinsert.my" method="post">
	        <!-- Modal Header -->
	        <div class="modal-header" >
	          <h4 class="modal-title" style="color: white;">교환 내용</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	  
	        <!-- Modal body -->
	        <div class="modal-body">
	        <input type="hidden" name="memNo" value="<%= loginUser.getMemNo() %>">
	        <input type="hidden" name="pno" value="<%= o.getOrderPnum() %>"> <%-- <%= o.getOrderPnum %> --%>
	        <input type="hidden" name="payment" value="<%= od.getPayment() %>">
	        <input type="hidden" name="deliveryMemo" value="<%= od.getDeliveryMemo() %>">
	            <p  style="color: white;">※불량 교환시 [불량 교환] 기재 부탁드립니다.</p> 
	              <hr>
	          <textarea name="ecreason" id="" cols="30" rows="10" style="margin-left:50px; width:350px; resize: none;">
	
	              
	
	          </textarea>
	        </div>
	  
	        <!-- Modal footer -->
	       <div class="modal-footer">
              <button type="submit" id="donebtn" >확인</button>
            </div>
	</form> 
	      </div>
	    </div>
	  </div>

    <!-- 반품버튼 모달창 -->

    <button type="button" id="bbtn2" data-toggle="modal" data-target="#cancel">
        반품
      </button>


    <!-- <div class="modal" id="cancel" style="background: rgba(0, 0, 0, 0.8);"> -->
    <div class="modal" id="cancel">
        <div class="modal-dialog">
          <div class="modal-content" style="background-color: gray;">
          

            <!-- Modal Header -->
            <div class="modal-header" >
              <h4 class="modal-title" style="color: white;">반품 사유</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body">
                
                <div align="center">

                    <select id="rtreason" name="rtreason">
                      <option value="rtreson1">고객변심</option>
                      <option value="rtreson2">상품불만족</option>
                      <option value="rtreson3">고객주문오류</option>
                      <option value="rtreson4">불량반품</option>
                      <option value="rtreson5">기타</option>
                    </select>
                    
                    
				      
                  </div>
    
                
            </div>
      
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="submit" id="donebtn" onclick="location.href='<%= contextPath %>/returnComplete.my'">확인</button>
            </div>
            

            
          </div>
        </div>
      </div>
            <br>
            <br>

        </div>
    </div>

 
</div>
</div>


    
<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>