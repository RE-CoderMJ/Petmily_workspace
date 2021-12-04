<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .outer{
            width:1000px;
            height:800px;
            margin:auto;
            margin-top:50px;
        }
        /* .list-area{
            border:1px solid lightgray;
            text-align:center;
        } */
        .list-area>tbody>tr:hover{
            background:rgb(247, 198, 4);
            color:white;
            cursor:pointer;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- 메뉴바 -->
    <%@ include file="../comon/menubar.jsp" %>

    <!-- 사이드바 아직-->

    <div class="outer">
        <br>
        <h2 style="color:gray">&gt; 관리자 고객센터</h2>
        <hr>
        <h3>공지사항 관리</h3>
        <br>

        
            <div align="left">

                <form>
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text" style="color:black">제목</span>
                      </div>
                      <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
                      <a href="" class="btn btn-sm btn-warning">검색</a>
                    </div>
                  </form>

                <br><br>
            </div>

            
            <div align="right">
                <a href="" class="btn btn-sm btn-warning">등록</a>
                <a href="" class="btn btn-sm btn-warning">수정</a>
                <a href="" class="btn btn-sm btn-danger">삭제</a>
                <br><br>
            </div>

        <div class="table table-bordered" >
            <table>
                <thead>
                    <tr>
                        <th width="30"><input type="checkbox" name="" value=""></th>
                        <th width="120">번호</th>
                        <th width="550">제목</th>
                        <th width="150">작성자</th>
                        <th width="150">작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <!--1. 게시글 없을 경우-->
                    <tr>
                        <td colspan="6">조회된 게시글이 없습니다</td>
                    </tr>
                    <!--2. 게시글 있을 경우-->
                    <tr>
                        <td>v</td>
                        <td>12</td>
                        <td>개인정보처리방침 안내</td>
                        <td>펫밀리</td>
                        <td>2021-12-04</td>
                    </tr>
                </tbody>
        	</table>
    	</div>
    <br><br><br>

    <!-- 페이징 바 -->
    <div class="paging-area" align="center">
            <button> &lt; </button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>6</button>
            <button>7</button>
            <button>8</button>
            <button>9</button>
            <button>10</button>
            <button> &gt; </button>
    </div>

    <script></script>

</div>
</body>
</html>