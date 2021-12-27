<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.pm.shop.model.vo.*"%>
<%
	OrderSelect o = (OrderSelect)request.getAttribute("o");
	ArrayList<OrderSelect> osdetail = (ArrayList<OrderSelect>)request.getAttribute("osdetail");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY</title>
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
			width: 1700px;
			height: 1200px;
			padding:200px;
			padding-top:5px;
			margin:auto;
		}

       #title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
            margin-left:150px;
        } 
        #outer{
            width:1100px;
            border: 1px soild black;
            background-color: rgb(235, 235, 235);
            padding: 10px 20px;
            margin-left:150px;
        }

        .cart-content{
            width:800px;
            height:120px;
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
            
        }

        #button{position: absolute; top:65px; left:360px;}
        .bbtn{ 
            background-color: rgb(247, 198, 4); /*색 바꾸기*/
            width:100px;
            padding:7px 15px;
            margin: 0px 5px;
            border:0;
            border-radius: 4px;
        }
        #money{position:absolute; right:2%; bottom:5%; font-size:18px;}

         /*총개수, 총금액 */
         #sumcount {
            font-size: 25px;
            font-weight: 900;
            color:darkgray;     /*색 바꾸기*/
        }

        #summoney{ 
            font-size: 25px;
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

<div class="oouter">
<%@ include file="mypageSidebar.jsp" %>
<div class="content-area">
<div id="title">주문내역 상세조회</div>


<div id="outer">


    <% if(osdetail.isEmpty()) { %>
		<div align="center" id="nullcase">주문 내역이 없습니다.(잘 들어왔는지 테스트해보기 위해 있는 문구)</div>
	<% } else { %>
		<% for(OrderSelect osd : osdetail) { %>
		
<input type="hidden" name="orderno" value="<%= osd.getOrderNo() %>">

        <span style="font-weight: 700; font-size: 23px;">주문번호 : <%= osd.getOrderNo() %></span>  <br>
        <span style=" font-size: 20px;">
        	주문일 : <%= osd.getOrderDate() %>    
        </span>


        <div class="cart-content" >
                
            <div class="inline-block" >
                <img src=""  id="content-img" width="80px" height="80px">    
        	</div>
            
            <div class="inline-block"  id="cart-option" >
                
               	 <%= osd.getProductName() %>
                <br>
             	 <%= osd.getOrderPoption() %>
                <br>
                <br>
                <span style="color:forestgreen;">배송준비중 | 배송중 | 배송완료</span>
            </div>

            <div class="inline-block" id="button">
                <button class="bbtn" data-toggle="modal" data-target="#exchangeOk">교환/반품</button>
                <button class="bbtn" style="color:black; background-color: rgb(213,213,213);" data-toggle="modal" data-target="#cancelOk">취소</button>
                
                <!-- 교환 모달창 시작 -->
			       <div class="modal" id="exchangeOk">
			        <div class="modal-dialog">
			          <div class="modal-content">
				        <!-- Modal Header -->
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					      </div>
				      
			            <!-- Modal body -->
			            <div class="modal-body">
								배송준비중 상태에서는 취소만 가능합니다.
			      		</div>
			            <!-- Modal footer -->
			            <div class="modal-footer">
			              <a href="<%= contextPath %>/exchangeselect.my?orderno=<%= osd.getOrderNo() %>&pno=<%= osd.getOrderPnum() %>" class="btn" style="background-color:rgb(247, 198, 4);">확인</a>
			            </div>
			      
			        </div>
			      </div>
			
				</div>
				<!-- 모달창 끝 -->
                
                
                
                <!-- 취소 모달창 시작 -->
			       <div class="modal" id="cancelOk">
			        <div class="modal-dialog">
			          <div class="modal-content">
				        <!-- Modal Header -->
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					      </div>
				      
			            <!-- Modal body -->
			            <div class="modal-body">
								배송완료 상태에서는 교환/반품 가능합니다.
			      		</div>
			            <!-- Modal footer -->
			            <div class="modal-footer">
			              <a href="<%= contextPath %>/appselect.my?orderno=<%= osd.getOrderNo() %>" class="btn" style="background-color:rgb(247, 198, 4);">확인</a>
			            </div>
			      
			        </div>
			      </div>
			
				</div>
				<!-- 모달창 끝 -->
				
				
            </div>
            
            <div class="inline-block" id="money">
                <h3><%= osd.getPrice() %> 원</h3>
            </div>
        </div>


        <div id="foot">            
            <span id="sumcount">총개수 : 1개</span>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span id="summoney">총금액 : <%= osd.getPrice() %>원</span>
        </div>
        <br><br>
        
		</div>
        <% } %>
	<% } %>
	
	

</div>


</div>
</div>
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>