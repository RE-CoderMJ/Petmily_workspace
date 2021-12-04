<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        body{
            width:1000px;
            height:800px;
            margin:0;
        }

        .container {
            width:800px;
            height:600px;
            margin:0;
        }
/* 
        .menu a{
        text-decoration:none;
        text-align:center;
        font-size:20px;
        font-weight:bold;
        color:black;
        float:left;
        display:block;
        width:100%;
        height:20px;
        line-height:30px;
    } */
/* 

        .side {
            float:left;
            width:15%;
            height:700px;
            margin:0;
            border:3px solid red;

        }
        .main {
            float:right;
            width:80%;
            height:700px;
            margin:0;
            border:3px solid purple;
        } */

        .yellowbox{
            width:150px;
            height:600px;
            margin:0;
            float:left;
            font-size:15px;
            line-height:70px;
            background:yellow;
            padding:10px;
        }
        .yellowbox td{
            font-size:13px;
            text-align:center;

    
        }

        .borderbox{
            display:grid;
            grid-template-columns:1fr 1fr;
            grid-template-rows:100px 100px;
            grid-gap:20px;
            line-height:50px;
            text-align:center;
            margin:0;
        }
        .graybox{
            display:grid;
            grid-template-columns:1fr 1fr;
            grid-template-rows:100px 100px;
            grid-gap:20px;
            line-height:50px;
            text-align:center;
            margin:0;
        }

    </style>
</head>
<body>
<div class="container">

    <!--메뉴바 자리-->
    <div class="header">
    </div>

    <!--사이드바 자리-->
    <div class="side">
    </div>

    <!--고객센터 조회메뉴 자리-->
    <div class="main">
    </div>


        <div class="yellowbox">
            <table>
                <tr>
                    <th>새로 등록된 공지사항</th>
                </tr>
                <tr>
                    <td>뉴공지사항 수</td>
                </tr>
                <tr>
                    <th>새로 등록된 FAQ</th>
                </tr>
                <tr>
                    <td>뉴faq 수</td>
                </tr>
                    <th>새로 등록된 Q&A</th>
                </tr>
                <tr>
                    <td>뉴qna 수</td>
                </tr>
                <tr>
                    <th>새로 등록된 리뷰</th>
                </tr>
                <tr>
                    <td>뉴리뷰 수</td>
                </tr>
            </table>
        </div>

        <div class="borderbox">
            <table>
                <tr>
                    <th>공지사항 관리</th>
                    <th>FAQ 관리</th>
                </tr>
                <tr>
                    <td>78</td>
                    <td>3</td>
                </tr>
                <tr>
                    <th>Q&A문의/상품문의 관리</th>
                    <th>리뷰관리</th>
                </tr>
                <tr>
                    <td>7</td>
                    <td>5</td>
                </tr>
            </table>
        </div>

        <div class="graybox">
            <table>
                <tr>
                    <th>확인하지 못한 Q&A</th>
                    <th>확인하지 못한 상품문의</th>
                </tr>
                <tr>
                    <td>5</td>
                    <td>8</td>
                </tr>
                <tr>
                    <th>답변처리 된 Q&A</th>
                    <th>답변처리 된 상품문의</th>
                </tr>
                <tr>
                    <td>5</td>
                    <td>4</td>
                </tr>
            </table>
        </div>
    </div>

</div>
</body>
</html>