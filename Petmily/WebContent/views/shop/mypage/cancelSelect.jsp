<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pm.common.model.vo.PageInfo, java.util.ArrayList, com.pm.shop.model.vo.Cancel" %>
 <%
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	ArrayList<Cancel> list = (ArrayList<Cancel>)request.getAttribute("list");
 	//ArrayList<Cancel> termList = (ArrayList<Cancel>)request.getAttribute("termList");
 	
 	String search = (String)String.valueOf(request.getAttribute("search"));
 	
 	int currentPage = pi.getCurrentPage();
 	int startPage = pi.getStartPage();
 	int endPage = pi.getEndPage();
 	int maxPage = pi.getMaxPage();
 	
 %>
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
			width: 1700px;
			min-height: 1000px;
			margin:auto;
		}     
		.content-area{
			width: 1700px;
			min-height: 1000px;
			padding:200px;
			padding-top:0px;
			margin:auto;
			
		}
	 	#outer{
            width:1200px;
            border: 1px soild black;
            margin:auto;
            margin-left:100px;
        }
       .title{
            color:rgb(94,94,94);
            font-size: 30px;
            font-weight: 900;
            margin-bottom:20px;
			margin-left:10px;
			cursor:pointer;
        } 
        .div1{
        margin-left:40px;
        margin-bottom:20px;
        cursor:pointer;
        }
        /*기간 버튼 클릭시 색 변경*/
        .div2 {
	        width: 70px;
	        height: 40px;
	        padding-top:10px;
	        padding-left:17px;
	        border-radius: 5px;
	        margin:10px;
	        background-color: rgb(235, 235, 235); 
      }

      .clicked {
        	background-color: rgb(247, 198, 4);
      }

      /*내역 테이블*/
      #cancel-content{
          width:1100px;
          border:1px solid #444444;
          border-collapse: collapse;
          text-align: center;
          margin:auto;
          margin-bottom:20px;
          padding-top: 30px;
      }

      th{
         border: 1px solid #444444;
         padding:5px;
         font-size:20px;
      }
      
      td{
      	 border: 1px solid #444444;
         padding:5px;
         font-size:18px;
      }
      
      /* 취소환불과정*/
	 #process{
	 margin:auto;
	 text-align:center;
	 }
      #process1, #process2, #process3, #process4 {
          font-size: 20px;
          text-align: center;
          color:orangered;
          font-weight: 700;
          margin-top:30px;
          height:150px;
          vertical-align: middle;
      }

      .process-content{
          font-size: 15px;
          color:gray;
          margin:20px 20px
      }


	/* 페이징바 스타일 */
	.paging-area{
		margin:auto;
		text-align:center;
	}
	/* 페이징바 */
	.paging-area button{
		border:  0;
		background-color: transparent;
		height: 40px;
		width: 40px;
		border-radius: 5px;
	}

	/* cancel-content div 클릭하면 넘어가게*/
	#c {
		cursor:pointer;
	}
	
      
      .inline-block{display:inline-block;}
    </style>
</head>
<body>
<%@ include file="../../common/menubar.jsp" %>

<div class="oouter">

<%@ include file="mypageSidebar.jsp" %>
	
    <div class="content-area">
    <div id="outer">
    	 <div class="title" 
    	 		onclick="location.href='<%=contextPath%>/cancelselect.my?cpage=1'">
    	 	취소/환불 내역 조회
    	 </div>
         <hr>

         <div class="div1">
            <div class="div2 inline-block" 
            onclick="location.href='<%= contextPath %>/term.my?search=7&cpage=1'">1주일</div>
            <div class="div2 inline-block" 
             onclick="location.href='<%= contextPath %>/term.my?search=1&cpage=1'">1개월</div>
            <div class="div2 inline-block"
             onclick="location.href='<%= contextPath %>/term.my?search=3&cpage=1'">3개월</div>
            <div class="div2 inline-block"
             onclick="location.href='<%= contextPath %>/term.my?search=6&cpage=1'">6개월</div>
          </div>

    
 <input type="hidden" name="userNo" value="<%= loginUser.getMemNo() %>">
	<% if(list.isEmpty()) { %>
		<div align="center" id="nullcase">취소/환불 내역이 없습니다.</div>
	<% } else { %>
		<% for(Cancel c : list) { %>
		<div id ="c" onclick="location.href='<%= contextPath %>/canceldetail.my?orderno=<%= c.getOrderNo() %>'">
          <table id="cancel-content" style="border-spacing: 10px;">
            <tr style="background-color: rgb(213,213,213);">
                <th>주문번호/주문일 </th>
                <th>상품정보</th>
                <th>진행상태</th>
            </tr>
            <tr>
                <td>주문번호 : <%= c.getOrderNo() %> 
                    <br> 주문일 : <%= c.getOrderDate() %>
                </td>
                <td>
                   <%= c.getProductName() %> <br>
                    <%= c.getOrderPamount() %>개 / <%= c.getOrderPoption() %> / <%= c.getPrice() %>원 <br>
                    결제수단 : <%= c.getCcPayment() %>
                </td>
                <td>
                    <%= c.getCcSledding() %>
                </td>
            </tr>
    
        </table>
	</div>

	        <% } %>
	<% } %>  

       <br><br>

 <!-- 페이징 바 -->
      <div class="paging-area" >
      <% if( search == null || search.isEmpty() ) { %>
      		
      		<% if(currentPage != startPage) { %>
            	<button onclick="location.href='<%=contextPath%>/cancelselect.my?cpage=<%= currentPage-1 %>';"> &lt; </button>
            <% } %>	
            	
            <% for(int pp=startPage; pp<=endPage; pp++){ %>
            	<% if(pp == currentPage) { %> 
            		<button disabled><%=pp %></button>
            	<% } else { %>
            		<button onclick="location.href='<%=contextPath %>/cancelselect.my?cpage=<%=pp%>';"><%=pp %></button>
            	<% } %>	
            <% } %>

			<% if(currentPage != maxPage) { %>
				<button onclick="location.href='<%= contextPath %>/cancelselect.my?cpage=<%= currentPage+1 %>';"> &gt; </button>
			<% } %>	
      		
      		
			
		<% } else { %>	
		
            <% if(currentPage != startPage) { %>
            	<button onclick="location.href='<%=contextPath%>/term.my?search=<%= search %>&cpage=<%= currentPage-1 %>';"> &lt; </button>
            <% } %>	
            	
            <% for(int p=startPage; p<=endPage; p++){ %>
            	<% if(p == currentPage) { %> 
            		<button disabled><%=p %></button>
            	<% } else { %>
            		<button onclick="location.href='<%=contextPath %>/term.my?search=<%= search %>&cpage=<%=p%>';"><%=p %></button>
            	<% } %>	
            <% } %>

			<% if(currentPage != maxPage) { %>
				<button onclick="location.href='<%= contextPath %>/term.my?search=<%= search %>&cpage=<%= currentPage+1 %>';"> &gt; </button>
			<% } %>	
			
		<% } %>	
    </div>


        <br><br>

        <div class="title">취소/환불 과정</div>
        <hr>
        <div id="process">
            <div class="inline-block" id="process1">
                즉시취소
                <p class="process-content">주문이 결제 완료 상태이면,<br>
                즉시 취소 가능합니다.</p>
            </div>
            <img src="" alt="" width="50px" height="50">
            <div class="inline-block" id="process2">
                반품신청
                <p class="process-content">주문이 배송중, 배송완료 상태이면,<br>
                     반품신청 가능합니다.</p>
            </div>
            <img src="" alt="" width="50px" height="50">
            <div class="inline-block" id="process3">
                반품처리중
                <p class="process-content">반품 신청이 완료되면 고객 <br>
                     센터에서 처리하게 됩니다.</p>
            </div>
            <img src="" alt="" width="50px" height="50">
            <div class="inline-block" id="process4">
                취소/환불 완료
                <p class="process-content">주문 건은 취소/반품 완료 후 <br>
                     환불 처리 해드리고있습니다. <br>
                      영업일 기준 3~5일 소요될 수 <br>
                      있습니다.</p>
            </div>
        </div>
        
 
    </div>
      
</div>
    
    
<%@ include file="../../common/footerbar.jsp" %>
</div>



    <script>
        var div2 = document.getElementsByClassName("div2");

        function handleClick(event) {
        console.log(event.target);
        // console.log(this);
        // 콘솔창을 보면 둘다 동일한 값이 나온다

        console.log(event.target.classList);

        if (event.target.classList[1] === "clicked") {
            event.target.classList.remove("clicked");
        } else {
            for (var i = 0; i < div2.length; i++) {
            div2[i].classList.remove("clicked");
            }

            event.target.classList.add("clicked");
        }
        }

        function init() {
        for (var i = 0; i < div2.length; i++) {
            div2[i].addEventListener("click", handleClick);
        }
        }

        init();
        
        
        $(function(){
            $(".paging-area button").click(function(){
                $(this).siblings(".paging-area button").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"black"});
            })
        })
        
        
    
    </script>
    

</body>
</html>