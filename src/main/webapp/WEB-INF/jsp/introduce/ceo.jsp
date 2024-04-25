<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>새하정보시스템-CEO인사말</title>
    <link rel="stylesheet" href="/css/font.css" />
    <link rel="stylesheet" href="/css/common.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="/js/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css"
    />
    <link
      rel="stylesheet"
      href="/js/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css"
    />
  </head>
  <body>
    <div id="wrapper">
      <div id="container">
        <header class="header subHeader">
          <div class="head subHead" id="head">
            <div class="logo">
              <a href="/main"><img src="/images/main_logo.png" /></a>
            </div>
            <div class="nav">
              <ul>
                <li>
                  <a href="ceo">회사소개</a>
                  <ul class="subMenu subMenu1">
                    <li><a href="ceo">CEO인사말</a></li>
                    <li><a href="ceo">CEO인사말</a></li>
                    <li><a href="history">주요연혁</a></li>
                    <li><a href="organization">조직도</a></li>
                    <li><a href="partner">협력사</a></li>
                    <li><a href="map">오시는길</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/service/sysIntegration">서비스</a>
                  <ul class="subMenu subMenu2">
                    <li><a href="/service/sysIntegration">System Integration</a></li>
                    <li><a href="/sysManagement">System Management</a></li>
                    <li><a href="/sysSolution">Internet Solution</a></li>
                    <li><a href="/rnd">R&D</a></li>
                  </ul>
                </li>
                <li>
                  <a href="human">사회적가치</a>
                  <ul class="subMenu subMenu3">
                    <li><a href="human">인권경영헌장</a></li>
                    <li><a href="environment">환경경영방침</a></li>
                    <li><a href="ethics">윤리경영</a></li>
                    <li><a href="esg">ESG강령</a></li>
                  </ul>
                </li>
                <li>
                  <a href="si">사업연혁</a>
                  <ul class="subMenu subMenu4">
                    <li><a href="si">SI사업 Part</a></li>
                    <li><a href="outsourcing">Outsourcing Part</a></li>
                  </ul>
                </li>
                <li>
                  <a href="notice">고객지원</a>
                  <ul class="subMenu subMenu5">
                    <li><a href="notice">새하소식</a></li>
                    <li><a href="qna">고객문의</a></li>
                    <li><a href="contact">Contact Us</a></li>
                    <li><a href="photo">Photo News</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/recruit/recruit">채용안내</a>
                  <ul class="subMenu subMenu6">
                    <li><a href="/recruit/recruit">채용정보안내</a></li>
                    <li><a href="/recruit/application">온라인입사지원</a></li>
                  </ul>
                </li>
                <li>
                  <a href="staff">사원페이지</a>
                  <ul class="subMenu subMenu7">
                    <li><a href="management">경영정보</a></li>
                    <li><a href="approve">전자결재</a></li>
                    <li><a href="data">자료실</a></li>
                    <li><a href="saihanews">새하알리미</a></li>
                    <li><a href="board">게시판</a></li>
                    <li><a href="pnumber">전화번호</a></li>
                    <li><a href="app_management">결재관리</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="sideMenu">
              <a class="loginBtn" href="login">로그인</a>
            </div>
          </div>
          <div class="subVisual company ceo"></div>
          <div class="subNav">
            <ul>
              <li><a href="ceo" class="active">CEO인사말</a></li>
              <li><a href="history">주요연혁</a></li>
              <li><a href="organization">조직도</a></li>
              <li><a href="partner">협력사</a></li>
              <li><a href="map">오시는길</a></li>
            </ul>
          </div>
        </header>
        <main>
          <section class="contentDefault">
            <h1 class="subContentTitle">CEO인사말</h1>
            <h3 class="subContentTitleDesc">
              안녕하세요 새하정보시스템입니다.
            </h3>
            <div class="subContent">
              <div class="ceoImg"></div>
              <div class="ceoMessage">
                <span class="ceoMessage01">안녕하십니까? 대표이사 이재현입니다.<br />
                  (주)새하정보시스템 홈페이지를 방문해 주셔서 감사합니다.
                </span>
                <span class="ceoMessage02">
                  (주)새하정보시스템은 고객만족을 최우선으로 생각하는 시스템
                  통합 및 e-Business 전문회사로 각 분야의 전문화된 인력구성원과
                  견실한 재무력, 앞선 기술력 및 풍부한 사업경험을 가진 미래
                  지향적인 준비된 벤처 기업입니다.<br><br> 1995년 사업을 개시한 이후
                  기업 경쟁력 강화를 위한 각종 정보시스템 구축사업 뿐만 아니라
                  공공기관 등 국가 정보화 사업에 활발히 참여하여 고객으로부터
                  많은 신뢰를 받고 있는 기업입니다.<br><br> 축적된 경험과 기술력을
                  바탕으로 21세기의 정보통신 산업발전에 일익을 담당하는 기업으로
                  성장함과 동시에 고객과 주주 및 사원 모두가 신뢰를 바탕으로 한
                  긴밀한 협력 관계를 유지하여 서로에게 만족을 주는 기업으로
                  나아갈 것을 약속드리겠습니다.<br><br> 감사합니다.
                  <br><br><br>
                  대표이사/이학박사 <b>이재현</b>
                </span>
              </div>
            </div>
          </section>
        </main>
      </div>
    </div>
    <footer class="ceoFooter">
      <div class="address">
        <span
          >전라남도 나주시 도민길 46(빛가람동 892-12) 새하빌딩<br
        /></span>
        <span
          >Copyright(c) 2014 SAIHA Information System Co., LTD<br />All
          Rights Reserved</span
        >
      </div>
      <div class="phoneGroup">
        <div class="phone">
          <span>대표전화<br /></span>
          <span>061. 930. 0050</span>
        </div>
        <div class="fax">
          <span>팩스<br /></span>
          <span>061. 930. 0060</span>
        </div>
        <div class="email">
          <span>이메일<br /></span>
          <span
            ><a href="mailto:Webmaster@saiha.co.kr"
              >Webmaster@saiha.co.kr</a
            ></span
          >
        </div>
      </div>
      <div class="linkGroup">
        <span>관련링크<br /></span>
        <select name="" id="">
          <option value="">====관련링크====</option>
          <option value="">기술보증기금</option>
          <option value="">벤처기업협회</option>
          <option value="">소프트웨어공제조합</option>
          <option value="">이노비즈협회</option>
          <option value="">한국경영혁신중소기업협회</option>
          <option value="">한국산업기술진흥협회</option>
          <option value="">한국소프트웨어산업협회</option>
          <option value="">한국전산업협동조합</option>
        </select>
      </div>
    </footer>
    <script src="/js/jquery-3.5.1.min.js"></script>
    <script src="/js/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    <script src="/js/mainSlide.js"></script>
    <script src="/js/mainMenu.js"></script>
  </body>
</html>
