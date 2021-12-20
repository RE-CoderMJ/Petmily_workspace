<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>

           <style> 
      
        .modalMsg-area{
    font-weight: bolder;
    font-size: 17px;
    margin-top: 20px;
    height: 70px;
}
#cart-area>*{
    color: white;
    font-weight: bolder;
    font-size: 15px;
    height: 35px;
    line-height: 5px;
    width: 100px;
    margin-top: -10px;
}
#confirm-btn{
    background-color: gray;
    margin-right: 2px;
    line-height: 22px;
}
#closebtn{
    background-color: orange;
    margin-left: 2px;
}
#deleteCompletedclosebtn{
    background-color: orange;
    width: 250px;
    color: white;
    font-weight: bolder;
}

.outer { 
    width: 1600px;
    height: auto;
    margin: auto;
}

.content-area {
	width: 1400px;
	height: auto;
	padding: 200px;
	padding-top: 5px;
    margin: auto;
}

.accordion { 
        margin-bottom: 20px;
    }

    .accordion-head {
        height: 50px;
        text-align: left;
        cursor: pointer;
        font-size: 20px;
        font-weight: bold;
    }

    .down-arrow {
        float: right;
        width: 20px;
        height: 20px;
    }

    .accordion-body {
        background-color: rgb(235, 235, 235);
        border-radius: 5px;
        margin-top: 5px;
        padding: 20px;
        display: none;
    }

    .accordion.show i.fa-chevron-down {
      transform: rotate(180deg);
    }


    </style>

    <!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!-- Favicon-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                 <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles.css" rel="stylesheet" />
    </head>
    <body>

    <!-- 메뉴바 -->
	<%@ include file="../../common/menubar.jsp"%>

	<!-- 사이드바  -->
	<%@ include file="shoppingsidebar.jsp"%>
 
                    <form class="d-flex">
                     
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-4"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                    <div class="col-md-5">
                          <h4 class="display- fw-bolder">댕댕랜드 오리지널 사료 5kg</h4>
                        
                                                     <span><b>10,000원</b></span>
                                                     <p><span>기호성이 우수하고 소화가 잘되는 가수분해 사료</span></p> <hr>
                                                   
                                             <p><span data-ke-size="size23"><b><span style="color: #f3c000;">배송비</span></b></span> 2500원 (20,000원 이상 무료배송)</p>
                                            <hr>
                                             <tr>
                                                <th width="130px">상품 옵션</th>
                                                <td>
                                                    <select class="selectpicker show-tick p-1">
                                                        <option>댕댕랜드 오리지널 사료 5kg</option>
                                                        <option>추가 상품) 덴탈껌</option>  </select>
                                                        <br> <br> 
                                                        <body onload="init();">
                                                            <script language="JavaScript">
                                                            <!--
                                                            var sell_price;
                                                            var amount;
                                                            
                                                            function init () {
                                                                sell_price = document.form.sell_price.value;
                                                                amount = document.form.amount.value;
                                                                document.form.sum.value = sell_price;
                                                                change();
                                                            }
                                                            
                                                            function add () {
                                                                hm = document.form.amount;
                                                                sum = document.form.sum;
                                                                hm.value ++ ;
                                                            
                                                                sum.value = parseInt(hm.value) * sell_price;
                                                            }
                                                            
                                                            function del () {
                                                                hm = document.form.amount;
                                                                sum = document.form.sum;
                                                                    if (hm.value > 1) {
                                                                        hm.value -- ;
                                                                        sum.value = parseInt(hm.value) * sell_price;
                                                                    }
                                                            }
                                                            
                                                            function change () {
                                                                hm = document.form.amount;
                                                                sum = document.form.sum;
                                                            
                                                                    if (hm.value < 0) {
                                                                        hm.value = 0;
                                                                    }
                                                                sum.value = parseInt(hm.value) * sell_price;
                                                            }  
                                                            //-->
                                                            </script>
                                                            
                                                            <form name="form" method="get">
                                                            <input type=hidden name="sell_price" value="10000">
                                                            <input type="text" name="amount" value="1" size="1" onchange="change();">
                                                            <input type="button" value="+" onclick="add();"> <input type="button" value="-" onclick="del();">
                                                            
                                                            총 <input type="text" name="sum" size="5" readonly>원
                                                            <hr>
                                                     <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#likeModal">찜</button>&nbsp
                                                     <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#cartModal">장바구니</button>
                                                                                                     
                                                     <button type="button" class="btn btn-warning" onclick="location.href='<%= contextPathas %>/shop.order'">구매하기</button>
                        </div>
                    </div>
                    
                </div>
                <div class="outer">
                    <div class="content-area">
                        
            <hr style="border: solid 1px rgb(179, 178, 178);">
           <button type="button" class="btn"">
            <a href="#tag1">상세 정보</a>
            </button>
            <button type="button" class="btn" onclick="location.href='<%= contextPathas %>/shop.rev'">상품 후기</button>
            <button type="button" class="btn" onclick="location.href='<%= contextPathas %>/shop.qna'">상품 문의</button>
       
            <br> <br>

        <div style="text-align : center;">

            <img src="resources/img/sp_product.jpg"> </div>
            <br>

            <div class="accordion">
            <div class="accordion-head">
                <a name="#tag1">상품정보 제공 고시</a>	 
                <img src="resources/img/down-arrow.png" class="down-arrow">
                
            </div>
            <p class="accordion-body">
                <b>주원료</b> 생선/해산물, 칠면조, 닭 <br>
                <b>기능</b> 영양공급, 다이어트/중성화, 면역력강화, 식욕증진 <br>
                <b>중량</b> 5kg <br>
                <b>급여 대상</b> 어덜트, 시니어, 퍼피 <br>
            </p>                
        </div>
            <div class="accordion">
                <div class="accordion-head">
                    거래 조건에 관한 정보
                    <img src="resources/img/down-arrow.png" class="down-arrow">
                    
                </div>
                <p class="accordion-body">
                    전자상거래등에서의소비자보호에관한법률 등에 의한 제품의 하자 또는 오배송 등으로 인한 청약철회의 경우에는 상품 수령 후 3개월 이내, 
                    그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 청약철회를 할 수 있으며, 반품 비용은 통신판매업자가 부담합니다.
                    <br> <br>
                    소비자피해보상의 처리, 재화등에 대한 불만 처리 및 소비자와 사업자 사이의 분쟁처리에 관한 사항은
                    소비자분쟁해결기준(공정거래위원회 고시) 및 관계법령에 따릅니다.
                </p>                
            </div>


            <%@ include file="../../common/footerbar.jsp" %>
  
  
       <!-- 장바구니 Modal -->
       <div class="modal fade" id="cartModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                                        장바구니에 추가되었습니다.
                    </div>
                    <div id="cart-area">
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn" onclick="location.href='<%= contextPathas %>/cart.my'">이동</button>
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                    </div>              
                </div>

            </div>
        </div>
    </div>

 <!-- 찜 Modal -->
       <!-- 찜 Modal -->
       <div class="modal fade" id="likeModal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">

                <!-- Modal body -->
                <div class="modal-body" align="center">
                    <div class="modalMsg-area">
                                       찜 목록에 추가되었습니다.
                    </div>
                    <div id="like-area">
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn" onclick="location.href='<%= contextPathas %>/like.my'">이동</button>
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                    </div>              
                </div>
   

      <script>
        $(function(){
            $(".accordion-head").click(function(){  
                
                const $p = $(this).next(); 
                // var img = document.getElementsByClassName("down-arrow");

                if($p.css("display") == "none"){
                    
                    // $(this).siblings("p").slideUp();
                    
                    $p.slideDown();
                    // img.style.transform = 'rotate()';
                } else {
                    
                    $p.slideUp();
                    // img.style.transform = 'rotate(180deg)';
                }
                
            })
        })
        </script>

    
     
</body>

</html>