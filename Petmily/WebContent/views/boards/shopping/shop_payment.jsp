<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    div {
   border: px solid red;
}
        div, img, li, a{
             box-sizing: border-box;
         }
                 
         .content-area{
             width: 1400px;
             height: 1000px;
             margin:auto;
             padding: 200px;
	         padding-top: 5px;
         }
 
         #outer{
             width:1000px;
             height: auto;
             text-align: center;
             margin:auto;
         }
         #content{
             font-size: 14px;
         }
         
     /*주문 상품 영역*/
     .order-contents{
            width:30%;
        }

        /* 주문 상품명, 가격 */
        .order-photo{
            border: px solid black;
            margin-bottom: 1px;
            margin-right: 5px;
            width: 60px;
            height: 60px;
            display: inline-block;
        }
        .order-texts{
            width:75%;
            display: inline-block;
        }
        .order-title{
            font-weight: bolder;
            font-size: 17px;
            text-align: left;
            width: 100%;
            height: 30%;
            margin-top: 7px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
            display: inline-block;
        }
        
        .order-text{
            width:100%;
            text-align: left;
            text-overflow:ellipsis;
            overflow:hidden;
            display: -webkit-box !important;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            white-space: normal;
            display: inline-block;
            font-size: 13px;
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
     
<!-- 메뉴바 -->
<%@ include file="../../common/menubar.jsp"%>


<div class="outer">
    <!-- 사이드바  -->
    <%@ include file="shoppingsidebar.jsp"%>

 </head>
 <body>
     <div id="outer">
         <div id="title"> <h3>결제가 완료되었습니다.</h3></div>
         
         <hr>
         <div id="content">
             <br>
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
             <br>
            <div id="board">
                <div id="ask">
                                
                    <div class="order-contents">
                        <div class="order-photo">
                            <img src="resources/img/sp_coshion.jpg" class="order-photo" width="60px" height="60px"> </div>
                        <div class="order-texts">
                            
                            <div class="order-title">댕댕나라 사료 10kg</div>
                            
                            <div class="order-text" align="left">12000
                        </div>
  
                    </div>
                 </div>


            </div>
             <br>
             <hr>
            
         
                 <button class="button1"onclick="location.href='<%= contextPathas %>/orderselect.my'">구매 내역 보기</button>
                 <button class="button1"onclick="location.href='<%= contextPathas %>/shop.main'">쇼핑몰 계속하기</button>
             
                           
         
         </body>
         </html>