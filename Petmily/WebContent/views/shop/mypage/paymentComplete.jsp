<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
       div, img, li, a{
	    	box-sizing: border-box;
		}
		     
		.content-area{
			width: 1400px;
			height: 1000px;
			margin:auto;
			margin-top:200px;
		}

        #outer{
            width:1000px;
            padding: 10px 20px;
            margin-left:200px;
            text-align: center;
            margin:auto;
        }
        #content{
            font-size: 14px;
        }
        #image{
            position: absolute;
            top:300px;
        }
        .onecontent{
            position: absolute;
            top:300px;
            left:310px;
            font-size: 20px;
            margin-left: 30px;
        }

        th,td{
            padding:5px;
            padding-right: 40px;

        }
        .button1{
            width:120px;
            background-color: rgb(247, 198, 4);
            border:none;
            border-radius: 4px;
            padding:8px 0px;
            margin: 0px 10px;
            font-weight: 700;
            margin-left: 10px;
        }
        #button{
            position: absolute;
            left:400px;
        }
       
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
    <div id="outer">
        <div id="title">결제가 완료되었습니다.</div>
        <br>
        <hr>
        <div id="content">
            <table>
                <tr>
                    <td>주문번호</td>
                    <td>202123423412</td>
                </tr>
                <tr>
                    <td colspan="2">배송정보</td>
                    
                </tr>
                <tr>
                    <td>이름</td>
                    <td>김박최</td>
                </tr>
                <tr>
                    <td>번호</td>
                    <td>010-1234-5677</td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td>(12345)사랑시 고백구 행복동</td>
                </tr>
                <tr>
                    <td>포인트</td>
                    <td>xxx원 적립</td>
                </tr>

            </table>

            <div class="inline-block" id="image">
                <img src=""  class="content-img" width="80px" height="80px">    
            </div>
            <div class="inline-block onecontent" >
                        
                상품명
                <br>

                <div id="option" style="font-size:15px; margin-top: 5px;">20,000원</div>
    
            </div>

            <br><br><br><br><br><br>
            <hr>
            <br>
            <div id="button">
                <button class="button1">구매 내역 보기</button>
                <button class="button1">쇼핑몰 계속하기</button>
            </div>


        </div>
    </div>
    
</body>
</html>