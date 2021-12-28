<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pm.shop.model.vo.*"%>
<%
	Cancel ca1 = (Cancel)request.getAttribute("ca1");
	Cancel sum = (Cancel)request.getAttribute("sum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY</title>
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
			width: 1700px;
			height: 1200px;
			padding-top:5px;
			margin:auto;
		}
        .outer{
            margin:auto;
            border: 1px solid black;
            width:1000px;
            height:800px;
            position: relative;
            
        }

        #title{
            text-align: center;
            vertical-align: middle;
            background-color: rgb(235, 235, 235);
            margin:0px;
            padding:10px;
            font-weight: 700;
            font-size:25px;
            height:50px;
            padding-top:8px ;
        }
        .smalltitle{
            font-size:20px;
            font-weight: 600;
            margin:3px 0px;
        }
        #merchandise{
            font-size:15px;
            color:gray;
            position: absolute;
            right:250px;
            top:170px;
        }
        #summoney{ 
            font-size: 25px;
            font-weight: 800;
            position: absolute;
            right:80px;
        }


        #content{
            margin-left:80px;
            margin-right:80px;
            margin-bottom: 20px;
            margin-top:50px;
        }
        #one {
        	margin:20px 0px;
        	font-size:18px;
        }
        
        #two{
        	margin:20px 0px;
        	font-size:18px;
        }
        #three{
        	margin:20px 0px;
        	font-size:18px;
        }
        #four{
        	margin:20px 0px;
        	font-size:18px;
        }
        

        th,td{
            padding-right: 100px;
        }
        #bbtn{ 
            background-color: rgb(247, 198, 4);
            color:black;
            text-decoration:none;
            width:100px;
            padding:7px 15px;
            border:0;
            border-radius: 4px;
            float:right;
            position: absolute;
            right:100px;
            bottom:100px;
        }
        #bb{
         	color:black;
            text-decoration:none;
        }
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>


    <form action="<%=contextPath %>/cancelinsert.my" method="post">
    <div class="content-area">
        <div class="outer">
            <div id="title">주문취소신청</div>
            
            <br>
            
            <div id="content">
                <div id="canclebody">
                    <div id="one">
                        <div class="smalltitle" name="orderno">주문번호 : <%= ca1.getOrderNo() %> </div>
                        21.11.15 구매 
                        <a href="" id="merchandise"><%= sum.getAmountSum() %>개의 상품</a>
                        <div class="inline-block" id="summoney">총 : <%= sum.getPriceSum() %>원</div>
    
                    </div>
    
    
                    <hr>
                    <div id="two">
                        <div class="smalltitle">취소사유</div>
                        <div class="dropdown">
                            <button type="button" id="dropdown" class="btn dropdown-toggle" data-toggle="dropdown">
                               	 취소사유
                            </button>

                            <select id="ccreason" name="ccreason">
		                      <option value="ccreson1">고객변심</option>
		                      <option value="ccreson2">상품불만족</option>
		                      <option value="ccreson3">고객주문오류</option>
		                      <option value="ccreson4">불량반품</option>
		                      <option value="ccreson5">기타</option>
		                    </select>
		                    
                          </div>
                    </div>
    
    
                    <hr>
    
                    <div id="three">
                        <div class="smalltitle">배송지정보</div>
                        <table>
                            <tr>
                                <td>이름 </td>
                                <td><%= ca1.getMemName() %>님</td>
                            </tr>
                            <tr>
                                <td>주소 </td>
                                <td><%= ca1.getAdderess() %></td>
                            </tr>
                            <tr>
                                <td>휴대폰 </td>
                                <td><%= ca1.getPhone() %></td>
                            </tr>
                            <tr>
                                <td>배송메모 </td>
                                <td name="delmemo"><%= ca1.getDeliveryMemo() %></td>
                            </tr>
                        </table>
    
                    </div>
    
                    <hr>
    
                    <div id="four">
                        <div class="smalltitle">결제정보</div>
                        <table>
                            <tr>
                                <td>상품금액</td>
                                <td><%= ca1.getPrice() %></td>
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
                                <th><%= sum.getPriceSum() %> </th>
                            </tr>
                        </table>
                        
                        <input type="hidden" name="orderno" value="<%= ca1.getOrderNo() %>">
                        <input type="hidden" name="ccreason" value="<%= ca1.getCcReason() %>">
                        <input type="hidden" name="payment" value="<%= ca1.getCcPayment() %>">
                        <input type="hidden" name="delmemo" value="<%= ca1.getDeliveryMemo() %>">
                        <%-- <input type="hidden" name="sledding" value="<%= ca1.get %>">--%>
                        <input type="hidden" name="pnum" value="<%= ca1.getOrderPnum() %>">
                        
                        <button id="bbtn"><a href="<%= contextPath %>/cancelComplete.my?" id="bb">취소신청</a></button>

                        
                    </div>
                </div>
            

            </div>

        </div>
</div>
</form>


<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>