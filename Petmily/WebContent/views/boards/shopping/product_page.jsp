<!DOCTYPE html>
<html lang="en">
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
                 </style>
        <!-- Favicon-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                 <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles1.css" rel="stylesheet" />
    </head>
    <body>
               
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
                          <h4 class="display- fw-bolder">댕댕랜드 닭가슴살 오리지널 30g</h4>
                        
                                                     <span><b>10,000원</b></span>
                                                     <p><span>식욕을 돋우는 훈제향, 고기 안에 육즙이 한가득!</span></p> <hr>
                                                   
                                             <p><span data-ke-size="size23"><b><span style="color: #f3c000;">배송비</span></b></span> 2500원 (20,000원 이상 무료배송)</p>
                                            <hr>
                                             <tr>
                                                <th width="130px">상품 옵션</th>
                                                <td>
                                                    <select class="selectpicker show-tick p-1">
                                                        <option>댕댕랜드 닭가슴살 오리지널 30g</option>
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
                                                                                                     
                                                     <button type="button" class="btn btn-warning">구매하기</button>
                        </div>
                    </div>
                    
                </div>
            </div><hr style="border: solid 1px rgb(179, 178, 178);">
            <b>상품 정보 &nbsp&nbsp 후기 &nbsp&nbsp Q&A </b>
        </section>
        <div style="text-align : center;">

            <img src="resources/img/sp_product.jpg">
       
       </div>
        </section>
          
        
                  <!-- 장바구니 Modal -->
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
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn" onclick="location='cart.jsp'">이동</button>
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
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn" onclick="location='like.jsp'">이동</button>
                      <button type="button" class="btn" data-dismiss="modal" id="closebtn">닫기</button>
                    </div>              
                </div>
   
     


    </body>

     <!-- Core theme JS-->
<script src="js/product.js"></script>
</html>
