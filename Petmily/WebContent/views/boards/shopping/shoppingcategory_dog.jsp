<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<style>

			/* 페이징바 */
			.paging-area button {
				border: 0;
				background-color: transparent;
				height: 40px;
				width: 40px;
				border-radius: 5px;
			}

            /*장바구니 모달창*/
            
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

<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="styles.css" rel="stylesheet" />

</head>
<body>

	<!-- 메뉴바 -->
	<%@ include file="../../common/menubar.jsp"%>

	<!-- 사이드바  -->
	<%@ include file="shoppingsidebar.jsp"%>

	<!-- Navigation-->

	<div class="container px-4 px-lg-5 my-5">
		<div class="text-center text-black">

			<!-- 검색창 -->
			<div class="middle" align="left" style="width: 50%;">
				<form>
					<div class="input-group mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" style="color: black">상품명</span>
						</div>
						<input type="text" class="form-control"
							placeholder="검색어를 입력해주세요(키워드)"> <a href=""
							class="btn btn-sm btn-warning">검색</a>

					</div>

				</form>
				<br>

					<!-- 강아지 카테고리 -->

					<div class="category-area" align="left">
						<button type="button" class="btn btn-light btn-sm">전체</button>
						<button type="button" class="btn btn-light btn-sm">사료</button>
						<button type="button" class="btn btn-light btn-sm">간식</button>
						<button type="button" class="btn btn-light btn-sm">건강 관리</button>
						<button type="button" class="btn btn-light btn-sm">위생/배변</button>
						<button type="button" class="btn btn-light btn-sm">미욕/목욕</button>
						<button type="button" class="btn btn-light btn-sm">장난감</button>
					</div>
					<script>
			              $(function(){
			                  $(".category-area button").click(function(){
			                      $(this).siblings(".paging-area button").css({background: "", color:"black"});
			                      $(this).css({background: "rgb(247, 198, 4)", color:"black"});
			                  })
			              })
          			</script>
			</div>
			<div id="middle-bar">
				<div align="right">
					<select name="orderBy" id="orderBy">
						<option value="date">판매인기순</option>
						<option value="count">낮은 가격순</option>
						<option value="reply">높은 가격순</option>
						<option value="reply">등록순</option>
						<option value="reply">리뷰 많은 순</option>
					</select>
				</div>
			</div>
		</div>
	</div>
			<!-- Section-->
			<section class="py-1">
				<div class="container px-4 px-lg-5 mt-4">
					<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">사료사료</h5>
										<!-- Product price-->
										20,000원
									</div>
								</div>
									   <!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
									<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
						   
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">맛난 사료</h5>
										 <!-- Product price-->
										 15,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
									<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
							   
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">사료77</h5>
										<!-- Product price-->
										 10,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
									<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">인기 사료</h5>
										 <!-- Product price-->
										21,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
							   
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">존맛 사료</h5>
										<!-- Product price-->
																	13,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">사료 1</h5>
										<!-- 상품 이름-->
										10,000원
									</div>
								</div>
										<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
													   <!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">사료2</h5>
																		   <!-- 상품 가격-->
									 15,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
						<div class="col mb-5" onclick="location.href='<%= contextPathas %>/shop.product'">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">사료5</h5>
																		  <!-- Product price-->
										20,000원
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<button type="button" a class="btn btn-outline-dark mt-auto" href="#" data-toggle="modal" data-target="#cartModal">장바구니</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
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
			</section>
				 <!-- Bootstrap core JS-->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<!-- Core theme JS-->
			<script src="js/scripts.js"></script>
			<br><br><br><br>
			
			<!-- 페이징 바 -->
			<div class="paging-area" align="center">
				<button> &lt; </button>
				<button>1</button>
				<button>2</button>
				<button>3</button>
				<button>4</button>
				<button>5</button>
				<button> &gt; </button>
			</div>
			<script>
			$(function(){
				$(".paging-area button").click(function(){
					$(this).siblings(".paging-area button").css({background: "", color:"black"});
					$(this).css({background: "rgb(247, 198, 4)", color:"black"});
				})
			})
			</script>
			</body>
			</html>
			