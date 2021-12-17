<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pm.member.model.vo.Member"%>
<%
   String contextPaths = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Accordion Menu</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    /*사이드바 스타일*/
    .sidebar-area{
          float: left;
          width: 350px;
          height: 100%;
          position:relative;
          /*
          position:absolute;
          left:100px;
          */
          margin-left:-60px;
          position: fixed;
          /* margin-top: 70px; */
     }


    ul {
      list-style-type: none;
        font-weight: bolder;
        font-size: 18px;
    }
    /* 사이드바 큰 제목 스타일 */
    #sidebarTitle{
     color:black;
     font-weight: bolder;
        font-size: 25px;
        position: absolute;
        left:80px;
     border-bottom: 1px solid #ccc;
    }

	/* 사이드바 스타일*/
    .accordion {
      background: #fff;
      border-radius: 4px;
      float:left;
      margin-left:40px;
    }

    .accordion .menu {
      position: relative;
      padding: 15px 15px 15px 45px;

	  width:250px;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.4s ease;
    }

    .accordion li:last-child .menu {
      border-bottom: 0;
    }

    .accordion li i {
      position: absolute;
      top: 20px;
      right: 5%;

      transition: all 0.4s ease;
    }

    .accordion li i.fa-chevron-down {
      right: 1rem;
      left: auto;
    }

    .accordion li.show i.fa-chevron-down {
      transform: rotate(180deg);
    }

	/*클릭했을때 큰 제목 색*/
    .accordion li.show .menu {

    }
	/*클릭했을때 큰 제목 옆 화살표 색*/
    .accordion li.show i {
	  color: rgb(247, 198, 4);
    }

    /* Show submenu */
    .accordion li.show .submenu {
      /* height: auto;를 지정하면 transition이 동작하지 않는다 */
      max-height: 500px;
    }

    .submenu {
      /* height: auto;를 지정하면 transition이 동작하지 않는다 */
      max-height: 0;
      overflow: hidden;

      font-size: 16px;
      transition: max-height 0.4s ease;
    }


    .accordion li:last-child .submenu {
      border-radius: 0 0 4px 4px;
    }

    .accordion li:last-child .submenu li:last-child {
      border-bottom: 0;
    }

    .submenu a {
      color:black;
      display: block;
      text-decoration: none;
      padding: 12px;
      margin-left: 60px;
      transition: all 0.25s ease-in-out;
      width:180px;
    }

    .submenu a:hover {
      text-decoration:none;
      background: rgb(247, 198, 4);
      color: black;
    }
  </style>
</head>

<body>
 <div class="sidebar-area">
<div id="sidebarTitle" style="width:200px;">마이페이지</div>
<br>
<br>
  <ul id="accordion" class="accordion" >
    <!-- <li class="show"> -->
    <li>
      <div class="menu">회원정보수정<i class="fa fa-chevron-down"></i></div>
      <ul class="submenu">
        <li><a href="#">회원정보수정</a></li>
      </ul>
    </li>
    <li>
      <div class="menu">내가 쓴 게시글 조회<i class="fa fa-chevron-down"></i></div>
      <ul class="submenu">
        <li><a href="<%= contextPaths %>/myPost.mp">내가 쓴 게시글 조회</a></li>
      </ul>
    </li>
    <li>
     <li>
      <div class="menu">펫적사항<i class="fa fa-chevron-down"></i></div>
      <ul class="submenu">
        <li><a href="<%= contextPaths %>/myPetInfo.mp">펫적사항</a></li>
      </ul>
    </li>
    <li>
      <div class="menu">스토어<i class="fa fa-chevron-down"></i></div>
      <ul class="submenu">
        <li><a href="<%= contextPaths %>/cart.my">장바구니</a></li>
        <li><a href="<%= contextPaths %>/orderselect.my">주문배송조회</a></li>
        <li><a href="<%= contextPaths %>/like.my">찜</a></li>
        <li><a href="<%= contextPaths %>/point.my">포인트조회</a></li>
        <li><a href="<%= contextPaths %>/exchangeapp.my">교환/반품 신청</a></li>
        <li><a href="<%= contextPaths %>/cancelselect.my">취소/환불내역 조회</a></li>
      </ul>
    </li>
  </ul>
  </div>

<script>
  class Accordion {
    constructor(options) {
      // 기본 옵션과 사용자 지정 옵션을 병합
      this.config = Accordion.mergeConfig(options);
      this.accordion = document.querySelector(this.config.selector);
      // 이벤트 핸들러 내부의 this는 currentTartget
      this.accordion.addEventListener('click', this.toogle.bind(this));
    }

    static mergeConfig(options) {
      // 기본 옵션
      const config = {
        selector: '#accordion',
        multi: true
      };

      return { ...config, ...options };
    }

    toogle(event) {
      if (!event.target.classList.contains('menu')) return;
      // click 이벤트를 발생시킨 <div class="menu"> 요소의 부모 요소인 li 요소
      const targetLi = event.target.parentNode;

      // 멀티 오픈을 허용하지 않으면 타깃 이외의 모든 서브메뉴를 클로즈한다.
      if (!this.config.multi) {
        [].filter.call(
          this.accordion.childNodes,
          li => li.nodeType === Node.ELEMENT_NODE && li !== targetLi
        ).forEach(li => li.classList.remove('show'));
      }

      // li 요소의 class에 "show"가 있으면 제거하고 없으면 추가한다.
      targetLi.classList.toggle('show');
    }
  }

  window.onload = function () {
    const accordion = new Accordion({ multi: false });
    // const accordion = new Accordion();
  };
</script>

</body>
</html>