<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /*사이드바 스타일*/
    .sidebar-area{
        float: left;
        width: 250px;
        height: 800px;
        position: relative;
        position: fixed;
    }
    /* 사이드바 큰 제목 스타일 */
    #boardName{
        list-style-type: none;
        font-weight: bolder;
        font-size: 25px;
        position: absolute;
    }
    /* 강아지, 고양이, 기타 카테고리 스타일*/
    .d-category{
        list-style-type: none;
        font-size: 16px;
        width: 130px;
        font-weight: bolder;
        cursor:pointer;
        margin-bottom: 5px;
    }
    #d-category{
        position: absolute;
        top:80px;
    }
</style>
<%@ include file="../../common/links.jsp" %>
</head>
<body>
      <!--  사이드바  -->
      <div class="sidebar-area">
        <ul>
            <div id="boardName">궁금해요</div>
            <div id="d-category">
                <div class="d-category" id="dog">강아지</div>

                <div class="d-category" id="cat">고양이</div>
                
                <div class="d-category" id="etc">기타</div>
                
            </div>
        </ul>
    </div>

    <script>
        $(function(){
            $(".d-category").click(function(){
                $(this).siblings(".d-category").css({background: "", color:"black"});
                $(this).css({background: "rgb(247, 198, 4)", color:"white"});
            })
        })
    </script>
</body>
</html>