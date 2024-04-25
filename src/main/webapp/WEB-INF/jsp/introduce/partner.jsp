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
    <title>새하정보시스템-협력사</title>
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
                    <li><a href="/service/sysManagement">System Management</a></li>
                    <li><a href="/service/sysSolution">Internet Solution</a></li>
                    <li><a href="/service/rnd">R&D</a></li>
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
          <div class="subVisual company partner"></div>
          <div class="subNav">
            <ul>
              <li><a href="ceo">CEO인사말</a></li>
              <li><a href="history">주요연혁</a></li>
              <li><a href="organization">조직도</a></li>
              <li><a href="partner" class="active">협력사</a></li>
              <li><a href="map">오시는길</a></li>
            </ul>
          </div>
        </header>
        <main>
          <section class="contentDefault">
            <h1 class="subContentTitle">협력사</h1>
            <h3 class="subContentTitleDesc">
              새하정보시스템이 함께하는 기업입니다.
            </h3>
            <div class="subContent">
                <ul class="partnerBanner">
                  <li><a href="https://home.kepco.co.kr/kepco/main.do" target="_blank"><img src="/images/partner_01.jpg"><br>한국전력공사(kepco.co.kr)</a></li>
                  <li><a href="https://www.kdn.com/" target="_blank"><img src="/images/partner_02.jpg"><br>한전KDN(kdn.com)</a></li>
                  <li><a href="https://www.khnp.co.kr/main.do#main" target="_blank"><img src="/images/partner_03.jpg"><br>한국수력원자력(khnp.co.kr)</a></li>
                  <li><a href="https://www.komipo.co.kr/kor/main/main.do;jsessionid=xanAtxXsI2jQbNxTauTIenfHakyo0uebCtUMwdR9nQkiTA8sprmWjuZbua5yyDny.DMZ_AP1_servlet_komipoweb1" target="_blank"><img src="/images/partner_04.jpg"><br>한국중부발전(komipo.co.kr)</a></li>
                </ul>
                <ul class="partnerBanner">
                  <li><a href="https://ewp.co.kr/kor/main/main.asp" target="_blank"><img src="/images/partner_05.jpg"><br>한국동서발전(ewp.co.kr)</a></li>
                  <li><a href="https://www.koenergy.kr/kosep/fr/main.do" target="_blank"><img src="/images/partner_06.jpg"><br>한국남동발전(kosep.co.kr)</a></li>
                  <li><a href="https://www.kospo.co.kr/sites/kospo/index.do" target="_blank"><img src="/images/partner_07.jpg"><br>한국남부발전(kospo.co.kr)</a></li>
                  <li><a href="https://www.iwest.co.kr/sites/iwest/index.do" target="_blank"><img src="/images/partner_08.jpg"><br>한국서부발전(iwest.co.kr)</a></li>
                </ul>
                <ul class="partnerBanner">
                  <li><a href="https://www.posco.co.kr/homepage/docs/kor6/jsp/s91a0000001i.jsp" target="_blank"><img src="/images/partner_09.jpg"><br>포스코(poscoict.co.kr)</a></li>
                  <li><a href="https://www.samsungsds.com/kr/index" target="_blank"><img src="/images/partner_10.jpg"><br>삼성SDS(samsungsds.com)</a></li>
                  <li><a href="https://www.lgcns.co.kr/" target="_blank"><img src="/images/partner_11.jpg"><br>LG CNS(lgcns.com)</a></li>
                  <li><a href="https://www.oracle.com/kr/index" target="_blank"><img src="/images/partner_12.jpg"><br>ORACLE(oracle.com)</a></li>
                </ul>
                <ul class="partnerBanner">
                  <li><a href="https://www.microsoft.com/ko-kr" target="_blank"><img src="/images/partner_13.jpg"><br>마이크로소프트(microsoft.com)</a></li>
                  <li><a href="https://www.dsu.ac.kr/kr/?pCode=main" target="_blank"><img src="/images/partner_14.jpg"><br>동신대학교(dsu.kr)</a></li>
                  <li><a href="https://www.gu.ac.kr/index.do" target="_blank"><img src="/images/partner_15.jpg"><br>경주대학교(gju.ac.kr)</a></li>
                  <li><a href="http://hm.seoil.ac.kr/" target="_blank"><img src="/images/partner_16.jpg"><br>서일대학교(seoil.ac.kr)</a></li>
                </ul>
            </div>
          </section>
        </main>
      </div>
    </div>
    <footer>
      <div class="address">
        <span>전라남도 나주시 도민길 46(빛가람동 892-12) 새하빌딩<br/></span>
        <span>Copyright(c) 2014 SAIHA Information System Co., LTD<br />All
          Rights Reserved</span>
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
          <span><a href="mailto:Webmaster@saiha.co.kr">Webmaster@saiha.co.kr</a></span>
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
