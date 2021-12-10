<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        #title{
            color:rgb(94,94,94);
            font-size: 20px;
            font-weight: 900;
            margin:20px 10px ;
        } 
        #outer{
            width:800px;
            border: 1px soild black;
            background-color: rgb(213,213,213);
            padding: 10px 20px;
        }

        .cart-content{
            width:700px;
            height:100px;
            border:0;
            background-color: white;
            margin:auto;
            position: relative;
            margin-top: 15px;
            margin-bottom: 20px;
            vertical-align: middle;
        }
 
        #content-img{
            margin-top:10px;
            margin-left: 50px;
            vertical-align: middle;

        }

        #cart-option{
            width:350px;
            position:absolute;
            margin-left: 10px;
            top:10px;
            bottom: px;
        }

        #button{position: absolute; top:55px; left:350px;}
        .bbtn{ 
            color:white;
            background-color: orange; /*색 바꾸기*/
            width:90px;
            padding:7px 15px;
            margin: 0px 5px;
            border:0;
            border-radius: 4px;
        }
        #money{position:absolute; right:2%; top:40px; font-size:18px;}

         /*총개수, 총금액 */
         #sumcount {
            font-size: large;
            font-weight: 900;
            color:darkgray;     /*색 바꾸기*/
        }

        #summoney{ 
            font-size: large;
            font-weight: 900;
        }
        #foot{
            float:right;
            margin-right: 50px;
        }



        .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>
<%@ include file="mypageSidebar.jsp" %>

    <div id="title">주문내역 / 배송조회</div>

    <div id="outer">
        <span style="font-weight: 700; font-size: 14px;">주문번호 : A-13124954</span>  <br>
        주문일 : 21.11.15


        <div class="cart-content" >
                
            <div class="inline-block" >
              
                <img src=""  id="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block"  id="cart-option" >
                
                상품명
                <br>
                블루1개 (옵션)
                <br>
                <br>
                <span style="color:forestgreen;">배송준비중 | 배송중 | 배송완료</span>
            </div>

            <div class="inline-block" id="button">
                <button class="bbtn">교환/반품</button>
                <button class="bbtn" style="color:black; background-color: rgb(213,213,213); ">취소</button>
            </div>
            
            <div class="inline-block" id="money">
                <h3>20,000 원</h3>
            </div>
        </div>


        <div class="cart-content" >
                
            <div class="inline-block" >
              
                <img src=""  id="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block"  id="cart-option" >
                
                상품명
                <br>
                블루1개 (옵션)
                <br>
                <br>
                <span style="color:forestgreen;">배송준비중 | 배송중 | 배송완료</span>
            </div>

            <div class="inline-block" id="button">
                <button class="bbtn">교환/반품</button>
                <button class="bbtn" style="color:black; background-color: rgb(213,213,213); ">취소</button>
            </div>
            
            <div class="inline-block" id="money">
                <h3>20,000 원</h3>
            </div>
        </div>



        <div class="cart-content" >
                
            <div class="inline-block" >
              
                <img src=""  id="content-img" width="80px" height="80px">    
            </div>
            
            <div class="inline-block"  id="cart-option" >
                
                상품명
                <br>
                블루1개 (옵션)
                <br>
                <br>
                <span style="color:forestgreen;">배송준비중 | 배송중 | 배송완료</span>
            </div>

            <div class="inline-block" id="button">
                <button class="bbtn">교환/반품</button>
                <button class="bbtn" style="color:black; background-color: rgb(213,213,213); ">취소</button>
            </div>
            
            <div class="inline-block" id="money">
                <h3>20,000 원</h3>
            </div>    
        </div>


        
        <div class="inline-block" style="float:left; margin-left:50px;">
            운송장번호 : 164237235
        </div>
        <br>
        <div id="foot">
            
            <span id="sumcount">총개수 : xx개</span>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span id="summoney">총금액 : xxxxx원</span>
        </div>
        <br>
        <br>






    </div>


    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>