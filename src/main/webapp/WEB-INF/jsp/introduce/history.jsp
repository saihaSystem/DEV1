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
    <title>새하정보시스템-주요연혁</title>
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
                    <li><a href="/service/nd">R&D</a></li>
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
          <div class="subVisual company history"></div>
          <div class="subNav">
            <ul>
              <li><a href="ceo">CEO인사말</a></li>
              <li><a href="history" class="active">주요연혁</a></li>
              <li><a href="organization">조직도</a></li>
              <li><a href="partner">협력사</a></li>
              <li><a href="map">오시는길</a></li>
            </ul>
          </div>
        </header>
        <main>
          <section class="contentDefault">
            <h1 class="subContentTitle">주요연혁</h1>
            <h3 class="subContentTitleDesc">
              새하정보시스템이 걸어온 길입니다.
            </h3>
            <div class="subContent layoutFlex">
              <div><img src="/images/history_img.jpg" /></div>
              <div class="historyMessage">
                <span class="historyMessage01">
                  설립부터 현재까지
                </span>
                <div class="historyMessage02">
                  <ul>
                    <li>2021. 11</li>
                    <li>&middot;</li>
                    <li>에너지특화 기업 지정</li>
                  </ul>
                  <ul>
                    <li>2021. 01</li>
                    <li>&middot;</li>
                    <li>농업병행 태양광 발전 장치 특허 등록</li>
                  </ul>
                  <ul class="mt40">
                    <li>2020. 12</li>
                    <li>&middot;</li>
                    <li>마이크로 그리드 경량 에너지 관리 시스템 특허 출원</li>
                  </ul>
                  <ul class="mt40">
                    <li>2019. 12</li>
                    <li>&middot;</li>
                    <li>NICE평가정보(주) 기술평가 우수기업</li>
                  </ul>
                  <ul>
                    <li>2019. 01</li>
                    <li>&middot;</li>
                    <li>중소벤처기업부 우수 그린비즈 인증</li>
                  </ul>
                  <ul class="mt40">
                    <li>2018. 05</li>
                    <li>&middot;</li>
                    <li>중소벤처기업부 전라남도 스타기업 선정</li>
                  </ul>
                  <ul>
                    <li>2018. 04</li>
                    <li>&middot;</li>
                    <li>한전 에너지밸리 스타기업 선정</li>
                  </ul>
                  <ul class="mt40">
                    <li>2017. 12</li>
                    <li>&middot;</li>
                    <li>전라남도 고용우수기업 인증</li>
                  </ul>
                  <ul>
                    <li>2017. 12</li>
                    <li>&middot;</li>
                    <li>에너지밸리 IT교육센터 고용노동부 허가</li>
                  </ul>
                  <ul>
                    <li>2017. 06</li>
                    <li>&middot;</li>
                    <li>에너지밸리 신사옥 준공 및 입주</li>
                  </ul>
                  <ul>
                    <li>2017. 06</li>
                    <li>&middot;</li>
                    <li>한전KDN(주) 우수협력사 선정</li>
                  </ul>
                  <ul>
                    <li>2017. 04</li>
                    <li>&middot;</li>
                    <li>고용노동부 강소기업 인증</li>
                  </ul>
                  <ul class="mt40">
                    <li>2011. 05</li>
                    <li>&middot;</li>
                    <li>중소기업청 기술혁신형 중소기업(INNO-BIZ) 인증</li>
                  </ul>
                  <ul>
                    <li>2011. 04</li>
                    <li>&middot;</li>
                    <li>중소기업청 경영혁신형 중소기업(MAIN-BIZ) 인증</li>
                  </ul>
                  <ul>
                    <li>2011. 04</li>
                    <li>&middot;</li>
                    <li>한국생산성본부인증원 품질경영시스템(ISO 9001) 인증</li>
                  </ul>
                  <ul class="mt40">
                    <li>1999. 04</li>
                    <li>&middot;</li>
                    <li>기업부설연구소 설립</li>
                  </ul>
                  <ul class="mt40">
                    <li>1997. 05</li>
                    <li>&middot;</li>
                    <li>중소기업진흥공단 유만 중소기업 선정</li>
                  </ul>
                  <ul class="mt40">
                    <li>1995. 02</li>
                    <li>&middot;</li>
                    <li>(주)새하정보시스템 법인 설립</li>
                  </ul>
                </div>
              </div>
            </div>
          </section>
        </main>
      </div>
    </div>
    <footer>
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
