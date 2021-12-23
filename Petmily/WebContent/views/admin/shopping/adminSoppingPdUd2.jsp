<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.pm.admin_Shopping.model.vo.AdminShopping, com.pm.common.model.vo.Attachment" %>
<%
	AdminShopping as = (AdminShopping)request.getAttribute("as");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
	System.out.println(list);
%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>adminSoppingEnrollPd</title>
    <style>
        
        /* 세부 카테고리 전체 스타일 */
        .dd-category{
            list-style-type: none;
            color: darkgray;
            font-weight: bolder;
            font-size: 13px;
            width: 60px;
            display: none;
            margin-bottom: 3px;
            cursor: pointer;
            margin-left: 15px;
        }
        /* cont-wrap */
        .cont-wrap{
            margin-left: 350px;
        }
        .title-box h3{
            font-size: 24px;
            font-weight: bold;
            color: rgb(196, 195, 195);
        }
        .product-reg input{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;

        }
        .ct-tit{
            font-size: 26px;
            font-weight: bold;
        }
        
        /* 셀렉트 박스 */
        .search-box{
            display: flex;
        }
        .selectpicker{
            width: 150px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        /* 버튼 박스 */
        .btn-box{
            text-align: right;
        }
        
        /* 표 */
        table {
            text-align: left;
        }
        table tbody td{
            display: flex;
            margin-bottom: 20px;
        }
        table tbody td input{
         margin-right: 20px;
        }
        #spPdUd{
            background: rgb(247, 198, 4);
            color: white;
        }
        /* 상태변경 모달창 */
        .modalMsg-area{
            font-weight: bolder;
            font-size: 17px;
            margin-top: 20px;
            height: 70px;
            text-align: center;
        }
        .modal-backdrop { opacity:0.3 !important; }
        
        #statusChangebtn-area-area>*{
            color: white;
            font-weight: bolder;
            font-size: 15px;
            height: 35px;
            line-height: 5px;
            width: 130px;
            margin-top: -10px;
            float: left;
        }
        #changeCompletedclosebtn{
            background-color: orange;
            width: 100px;
            color: white;
            font-weight: bolder;
        }



    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@ include file="../../common/admin_menubar.jsp" %>
        
        <% 
        String productOp = (as.getProductOp() == null) ? "" : as.getProductOp();
        String detail = (as.getDetail() == null) ? "" : as.getDetail();
        String explain = (as.getExplain() == null) ? "" : as.getExplain();
        %>
    	
        <div class="container" style="max-width:1600px;">
            <%@ include file="../../common/admin_shoppingSidebar.jsp" %>
            
            <!-- cont-wrap -->
            <div class="cont-wrap">
                <div class="title-box mt-1 pb-2">
                    <h3 class="mt-2">> 관리자 쇼핑몰</h3>
                </div>
                <div class="content product-reg">
                    <hr>
                    <p class="ct-tit pb-3">상품 수정</p>
                    <form id="update-form" action="<%= contextPath %>/adSpUdfin.ad?pno=<%= as.getProductNo() %>" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="ProductNo" value="<%=as.getProductNo()%>"> 
                        <input type="hidden" name="managerNo" value="<%=loginAdmin.getManagerNo()%>"> 
                         <table>
                             <tbody>
                                 <tr>
                                     <th width="130px">*카테고리</th>
                                     <td>
                                         <select name="category" class="selectpicker show-tick p-2">
                                             <option value="1">강아지</option>
                                             <option value="2">고양이</option>
                                             <option value="3">기타</option>
                                         </select>
                                         <script>
					                    	$(function(){
					                    		$("select[name=category] option").each(function(){
					                    			if($(this).val() == "<%= as.getCategory()%>"){
					                    				$(this).attr("selected", true);
					                    			}
					                    		})
					                    	})
					                    </script>
                                         <!-- <select class="selectpicker show-tick p-2">
                                             <option>1차</option>
                                             <option>2</option>
                                             <option>3</option>
                                         </select>-->
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">* 상품명</th>
                                     <td>
                                         <input value="<%= as.getProductName() %>" name="productName" class="form-control" type="text" placeholder="상품명을 입력하세요." required>
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">상품 옵션</th>
                                     <td id="form0" style="width: 100px">
                                         <!-- <input type="hidden" name="opcount" value=""> -->
                                         <input value="<%= productOp %>" class="form-control" type="text" placeholder="옵션1" name="productOp" style="width: 130px;">
                                         
                                         <div class="btn-box">
                                             <!-- <button type="button" onclick="plus();" class="btn btn-sm material-icons" id="add">add</button> -->
                                             <!-- <button onclick="minus();" class="btn btn-sm material-icons">remove</button> -->
                                         </div>
                                     
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">* 판매가</th>
                                     <td>
                                         <input value="<%= as.getPrice() %>" class="form-control" type="number" placeholder="판매가를 입력해주세요" name="price" required>
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">한줄평</th>
                                     <td>
                                         <input value="<%= explain %>" class="form-control" type="text" name="explain">
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">* 기본이미지</th>
                                     <td>
                                         <!-- <input class="form-control" type="text" placeholder="상품이미지를 등록하세요."> -->
                                         
				                        <!-- 현재 이 게시글에 딸린 첨부파일이 있을경우 -->
				                        
				                        <%= list.get(0).getOriginName() %>
				                        <input type="hidden" name="originFileNo1" value="<%= list.get(0).getAttachmentNo() %>">
										<input type="file" class="mt-3" name="file1">
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">상품상세정보</th>
                                     <td>
                                         <!-- <input class="form-control" type="text"> -->
                                         <textarea value="<%= detail %>" class="form-control" type="text" name="detail" class="mt-1" style="height: 160px; width: 300px; resize: none;"></textarea>
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">세부 이미지1</th>
                                     <td>
                                         <!-- <input class="form-control" type="text"> -->
                                         <% if(1 < list.size()) { %>
                                         	<%= list.get(1).getOriginName() %>
				                        	<input type="hidden" name="originFileNo2" value="<%= list.get(1).getAttachmentNo() %>">
                                         <% } %>
											<input type="file" name="file2" class="mt-3">
                                         <!-- <button class="btn btn-sm btn-primary ml-3">파일선택</button> -->
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">세부 이미지2</th>
                                     <td>
                                         <!-- <input class="form-control" type="text"> -->
                                         <% if(2 < list.size()) { %>
                                         	<%= list.get(2).getOriginName() %>
				                        	<input type="hidden" name="originFileNo3" value="<%= list.get(2).getAttachmentNo() %>">
                                         <% } %>
                                         <input type="file" name="file3" class="mt-3">
                                     </td>
                                 </tr>
                                 <tr>
                                     <th width="130px">* 수량</th>
                                     <td>
                                         <input value="<%= as.getAmount() %>" class="form-control" type="number" placeholder="수량을 입력해주세요" name="amount" required>
                                     </td>
                                 </tr>
                             </tbody>    
                         </table>
                         <div style="width: 800px; text-align: center;" align="center">
                             <br><br><br><br>
                             
                             <button class="btn btn-warning mr-3" style="width: 80px;" data-dismiss="modal" data-toggle="modal" type="submit">확인</button>
                             <button onclick="location.href='<%= contextPath %>/spPdUd.ad?cpage=1';" type="button" class="btn btn-light" style="width: 80px;">취소</button>
                         </div>
                         
                     </form>
                     </div>
                 </div>
             </div>
    </body>
    </html>
   