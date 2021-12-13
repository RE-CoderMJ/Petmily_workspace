<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

		div, img, li, a{
		     box-sizing: border-box;
		}
		.oouter{
			width: 1600px;
			height: 1000px;
			margin:auto;
		}   
		     
		.content-area{
			width: 1400px;
			height: 1000px;
			padding:200px;
			padding-top:5px;
			margin:auto;
		}
        #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
            
        } 
        #outer{
            width:1000px;
            border: 1px soild black;
            background-color:rgb(235, 235, 235);
            padding: 10px 20px;
            margin:auto;
        }
        
        /* 흰 박스 안에 css*/
        .cart-content{
            width:800px;
            height:100px;
            border:0;
            background-color: white;
            margin:auto;
            position: relative;
            margin-top: 15px;
            margin-bottom: 20px;
            vertical-align: middle;
        }
        #cart-checkbox{width:700px; margin:auto;}

        input[type=checkbox] { vertical-align:middle; }
        #content-img{
            margin-top:10px;
            margin-left: 10px;
            vertical-align: middle;

        }
        #cart-option{
            width:350px;
            position:absolute;
            margin-left: 10px;
            top:10px;
            bottom: px;
        }

        #delivery{position:absolute; left:475px; top:13px;}
        #money{position:absolute; right:2%; top:40px; font-size:18px;}
        

        /*총개수, 총금액, 구매버튼*/
        #sumcount {
            font-size: 25px;
            font-weight: 900;
            color:rgb(94,94,94);
        }

        #summoney{ 
            font-size: 25px;
            font-weight: 900;
        }

        #foot1 ,#foot2{
            float:right;
            margin-right: 100px;
        }

        .bbtn{ 
            background-color: rgb(247, 198, 4);
            padding:9px 18px;
            margin: 0px 10px;
            border:0;
            border-radius: 4px;
            font-size:18px;
        }

        .inline{display:inline;}
        .inline-block{display:inline-block;}
    </style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
<div class="oouter">
	
	<%@ include file="mypageSidebar.jsp" %>
	
<div class="content-area">
<div id="title"  >장바구니</div>
<div id="outer">

    <form action="">
        <div>
            <div id="cart-checkbox">
                <input type="checkbox" name="" id=""> <label for="">모두선택</label>  
                <div class="inline" style="float:right;"><input type="checkbox" name="" id="" > <label for="">모두선택해제</label>  </div>
            </div>

            <div class="cart-content" >
                
                <div class="inline-block" >
                    <input type="checkbox" style="margin-top: 10px; margin-left:15px;"> 
                    <img src=""  id="content-img" width="80px" height="80px">    
                </div>
                
                <div class="inline-block"  id="cart-option" >
                    
                   	 상품명
                    <br>
                    <hr>
                    <input type="number" name="" id="" placeholder="1" style="width:30px;">
                    <input type="button" value="옵션변경">
                    <input type="button" value="바로구매">

                </div>
                <div class="inline-block" id="delivery">
                  	  무료배송 | 2500원
                </div>
                <div class="inline-block" id="money">
                    <h3>20,000 원</h3>
                </div>

                
            </div>


            <div class="cart-content" >

                <div class="inline-block" >
                    <input type="checkbox"  style="margin-top: 10px; margin-left:15px;"> 
                    <img src=""  id="content-img" width="80px" height="80px">    
                </div>
                
                <div class="inline-block"  id="cart-option" >
                    
                    상품명
                    <br>
                    <hr>
                    <input type="number" name="" id="" style="width:30px;">
                    <input type="button" value="옵션변경">
                    <input type="button" value="바로구매">

                </div>
                <div class="inline-block" id="delivery">
                    무료배송 | 2500원
                </div>
                <div class="inline-block" id="money">
                    <h3>20,000 원</h3>
                </div>

                
            </div>


            <div class="cart-content" >

                <div class="inline-block" >
                    <input type="checkbox"  style="margin-top: 10px;margin-left:15px;"> 
                    <img src=""  id="content-img" width="80px" height="80px">    
                </div>
                <div class="inline-block"  id="cart-option" >
                    
                    상품명
                    <br>
                    <hr>
                    <input type="number" name="" id="" style="width:30px;">
                    <input type="button" value="옵션변경">
                    <input type="button" value="바로구매">

                </div>
                <div class="inline-block" id="delivery">
                    무료배송 | 2500원
                </div>
                <div class="inline-block" id="money">
                    <h3>20,000 원</h3>
                </div>

                
            </div>
            
            
            
            
            
            
            
             <div class="cart-content" >

                <div class="inline-block" >
                    <input type="checkbox"  style="margin-top: 10px;margin-left:15px;"> 
                    <img src=""  id="content-img" width="80px" height="80px">    
                </div>
                <div class="inline-block"  id="cart-option" >
                    
                    상품명
                    <br>
                    <hr>
                    <input type="number" name="" id="" style="width:30px;">
                    <input type="button" value="옵션변경">
                    <input type="button" value="바로구매">

                </div>
                <div class="inline-block" id="delivery">
                    무료배송 | 2500원
                </div>
                <div class="inline-block" id="money">
                    <h3>20,000 원</h3>
                </div>

                
            </div>
            
            
            

            <div id="foot1">
                <span id="sumcount">총개수 : xx개</span>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="summoney">총금액 : xxxxx원</span>
            
            </div>
            <br>
            <br><br>

            <div id="foot2">
                <button class="bbtn" style="background:rgb(250, 237, 167);">선택구매</button>
                <button class="bbtn">전체구매</button>
            </div>

            <br both="clear">
            <br>
            <br>

        </div>
    </form>

</div>
</div>
</div>
	
	
	<%@ include file="../../common/footerbar.jsp" %>
</body>
</html>