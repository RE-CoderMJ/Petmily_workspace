<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.shop.model.vo.Cancel" %>
 <%
 	Cancel c = (Cancel)request.getAttribute("c");
 	
 %>
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
 
		.oouter{
			width: 1700px;
			min-height: 1000px;
			margin:auto;
		}  
		     
		.content-area{
			width: 1700px;
			height: 1200px;
			padding:200px;
			padding-top:5px;
			
		}
        #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
            margin-left:150px;
            cursor:pointer;
        } 
        #outer{
            width:800px; 
            border: 1px solid rgb(94,94,94);
            padding: 10px 20px;
            border-radius: 10px;
            position: relative;
            margin-left:250px;
        }
        .content-img{margin-left: 30px;}

        .one{
            position: relative;
            margin:10px 0;
            font-size:15px;
        }
        .onecontent{
            position: absolute;
            top:15px;
            font-size: 20px;
            margin-left: 30px;
        }
        .money{position:absolute; right:50%; top:30px; font-size:18px;}

        #two{
            margin:10px 30px;
			font-size:18px;
        }
        #three{
            margin:10px 30px;
			font-size:18px;
        }

        .smalltitle{
            font-size:16px;
            font-weight: 600;
            margin:3px 0px;
        }
        th,td{
            padding-right: 40px;
        }
       
        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>
<div class="oouter">
<%@ include file="mypageSidebar.jsp" %> 
<div class="content-area">

    <div id="title" class="inline-block"
   	 		onclick="location.href='<%=contextPath%>/cancelselect.my?cpage=1'">
   	 	취소/환불 내역 조회
   	 </div>

	<% if(c == null) { %>
		<div align="center" id="nullcase">취소/환불 내역이 없습니다.</div>
	<% } else { %>
    <div id="outer">
        <div class="one">
            <div class="inline-block" >
                <img src=""  class="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block onecontent" >
                        
               <%= c.getProductName() %>
                <br>

                <div id="option" style="font-size:12px; margin-top: 5px;"><%= c.getOrderPoption() %></div>
    
            </div>
            
            <div class="inline-block money">
                <h3><%= c.getPrice() %>원</h3>
            </div>
        </div>





        <hr>
        <div id="two">
            <div class="smalltitle">배송지정보</div>
            <table style="border-spacing: 10px;">
                <tr>
                    <td>이름 </td>
                    <td><%= c.getMemName() %>님</td>
                </tr>
                <tr>
                    <td>주소 </td>
                    <td><%= c.getAdderess() %></td>
                </tr>
                <tr>
                    <td>휴대폰 </td>
                    <td><%= c.getPhone() %></td>
                </tr>

            </table>


        </div>


        <div id="three">
            <div class="smalltitle">결제정보</div>
            <table style="border-spacing: 10px;">
                <tr>
                    <td>상품금액</td>
                    <td><%= c.getPrice() %>원</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td>무료배송</td>
                </tr>
                <tr>
                    <td>포인트</td>
                    <td>500 p</td>
                </tr>
                <tr>
					<td>결제수단</td>
					<td><%= c.getCcPayment() %><td>
                </tr>
                <tr>
                    <th>최종 결제금액</th>
                    <th><%= c.getPrice() %>원</th>
                </tr>
            </table>


            <hr>

            <div id="four">
                <div class="smalltitle">환불금액</div>
                <table>
                    <tr>
                        <td>환불상품금액</td>
                        <td><%= c.getPrice() %>원</td>
                    </tr>

                    <tr>
                        <td>환불포인트</td>
                        <td> 500 p</td>
                    </tr>
                    <tr>
                        <th>최종 결제금액</th>
                        <th>0원 </th>
                    </tr>
                </table>
                <br><br>

            
        </div>
    </div>
    </div>
	<% } %>

</div>
</div>
    
 <%@ include file="../../common/footerbar.jsp" %>   
</body>
</html>