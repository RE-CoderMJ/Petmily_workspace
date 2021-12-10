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
        } 
        #outer{
            width:800px;
            border: 1px solid rgb(94,94,94);
            padding: 10px 20px;
            border-radius: 10px;
            position: relative;
            margin-left:200px;
        }
        .content-img{margin-left: 30px;}

        .one{
            position: relative;
            margin:10px 0;
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
       
        .inline-block{display:inline-block;}
    </style>
</head>

<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %> 

<div class="content-area">

    <div id="title" class="inline-block" >취소/환불 내역 조회</div>

    <div id="outer">

        <div class="one">
            <div class="inline-block" >
                <img src=""  class="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block onecontent" >
                        
                상품명
                <br>

                <div id="option" style="font-size:12px; margin-top: 5px;">블루 1개</div>
    
            </div>
            
            <div class="inline-block money">
                <h3>20,000 원</h3>
            </div>
        </div>

        <div class="one">
            <div class="inline-block">
                <img src=""  class="content-img" width="80px" height="80px">    
            </div>
    
            <div class="inline-block onecontent">
                상품명
                <br>
                <div id="option" style="font-size:12px; margin-top: 5px;">블루 1개</div>
    
            </div>
            
            <div class="inline-block money">
                <h3>20,000 원</h3>
            </div>

        </div>

        <div class="one">
            <div class="inline-block">
                <img src=""  class="content-img" width="80px" height="80px">    
            </div>
    
            <div class="inline-block onecontent">
                상품명
                <br>
                <div id="option" style="font-size:12px; margin-top: 5px;">블루 1개</div>
    
            </div>
            
            <div class="inline-block money">
                <h3>20,000 원</h3>
            </div>

        </div>



        <hr>
        <div id="two">
            <div class="smalltitle">배송지정보</div>
            <table style="border-spacing: 10px;">
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


        <div id="three">
            <div class="smalltitle">결제정보</div>
            <table style="border-spacing: 10px;">
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


            <hr>

            <div id="four">
                <div class="smalltitle">환불금액</div>
                <table>
                    <tr>
                        <td>환불상품금액</td>
                        <td>60,000원</td>
                    </tr>
                    <tr>
                        <td>환불배송비</td>
                        <td style="text-align: left;">2,500원</td>
                    </tr>
                    <tr>
                        <td>환불포인트</td>
                        <td> -500원</td>
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

</div>
    
 <%@ include file="../../common/footerbar.jsp" %>   
</body>
</html>