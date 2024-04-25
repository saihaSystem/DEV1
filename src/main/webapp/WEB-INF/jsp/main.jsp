<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta
      name="viewport"
      content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover"
    />

    <title>새하정보시스템</title>
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/common.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./js/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="./js/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
  </head>
  <body>
    <div id="wrapper">
      <div id="container">
        <header class="header">
          <div class="head" id="head">
            <div class="logo"><a href="/"><img src="./images/main_logo.png" /></a></div>
            <div class="nav">
              <ul>
                <li>
                  <a href="introduce/ceo">회사소개</a>
                  <ul class="subMenu subMenu1">
                    <li><a href="introduce/ceo">CEO인사말</a></li>
                    <li><a href="introduce/history">주요연혁</a></li>
                    <li><a href="introduce/organization">조직도</a></li>
                    <li><a href="introduce/partner">협력사</a></li>
                    <li><a href="introduce/map">오시는길</a></li>
                  </ul>
                </li>
                <li>
                  <a href="service/sysIntegration">서비스</a>
                  <ul class="subMenu subMenu2">
                    <li><a href="service/sysIntegration">System Integration</a></li>
                    <li><a href="service/sysManagement">System Management</a></li>
                    <li><a href="service/sysSolution">Internet Solution</a></li>
                    <li><a href="service/rnd">R&D</a></li>
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
                  <a href="recruit/recruit">채용안내</a>
                  <ul class="subMenu subMenu6">
                    <li><a href="recruit/recruit">채용정보안내</a></li>
                    <li><a href="recruit/application">온라인입사지원</a></li>
                  </ul>
                </li>
                <li>
                  <a href="staff">사원페이지</a>
                  <ul class="subMenu subMenu7">
                    <li><a href="management/insa">경영정보</a></li>
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
              <!-- <div class="fullMenuIcon">
                <a href="#">
                  <span></span>
                  <span></span>
                  <span></span>
                </a>
              </div> -->
              <a class="loginBtn" id="login" name="login" onClick="location.href='main/login'">로그인</a>
            </div>
          </div>
          <div class="mainVisual">
            <div class="owl-carousel owl-theme" id="owl-one">
              <div class="visual1 item1">
                <div class="desc">
                  <span>4차산업혁명시대</span>
                  <span>에너지ICT리더</span>
                  <span>새하정보시스템은 정보시스템 구축 및 운영 전문 기업입니다.</span>
                </div>
              </div>
              <div class="visual2 item2">
                <div class="desc">
                  <span>E-BUSINESS기업경쟁력</span>
                  <span>정보시스템 선도기업</span>
                  <span>새하정보시스템은 정보시스템 구축 및 운영 전문 기업입니다.</span>
                </div>
              </div>
              <div class="visual3 item3">
                <div class="desc">
                  <span>미래 인터넷 핵심기반 기술</span>
                  <span>미래연구기업</span>
                  <span>새하정보시스템은 미래가치를 위해 지금도 연구하며 앞으로 나아갑니다.</span>
                </div>
              </div>
            </div>
          </div>
        </header>
        <main>
          <section class="serviceSection">
            <h1 class="mainSectionTitle">Service</h1>
            <h4 class="sectionTitleDesc">새하정보시스템의 정보시스템 구축서비스</h4>
            <div class="serviceContentGroup">
              <div class="owl-carousel owl-theme" id="owl-two">
                <div class="serviceContent1 item">
                    <div class="sectionContentImg sectionContentImgBgText1"><img src="./images/main_service_img_01.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>System Intergation</h3>
                        <span>기업경쟁력 강화를 위한 각종 정보시스템 구축 사업으로 컨설팅에서 설계, 하드웨어 선택, 프로그램 개발 유지보수까지 고객의 환경에 맞는 시스템 통합 서비스를 제공해 드립니다.</span>
                        <a class="moreBtn" href="sysIntegration">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent2 item">
                    <div class="sectionContentImg sectionContentImgBgText2"><img src="./images/main_service_img_02.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>System Management</h3>
                        <span>중장기 정보화 전략 수립부터 시스템 기획, 개발운영에 이르기까지 정보시스템과 관련된 모든 일을 책임지고 수행해 드림으로서 기업의 대회 경쟁력을 강화할 수 있도록 도와드립니다.</span>
                        <a class="moreBtn" href="sysManagement">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent3 item">
                    <div class="sectionContentImg sectionContentImgBgText3"><img src="./images/main_service_img_03.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>Internet Solution</h3>
                        <span>여러해 동안의 B2B EC 구축 경험의 기반을 바탕으로, 앞서 나가고자 하는 기업을 위해 최신 인터넷 기술을 활용한 e-Business 컨설팅 및 솔루션을 제공합니다.</span>
                        <a class="moreBtn" href="sysSolution">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent4 item">
                    <div class="sectionContentImg sectionContentImgBgText4"><img src="./images/main_service_img_04.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>R&D</h3>
                        <span>미래의 인터넷 관련 핵심 기반 기술에 대한 연구와 선도적인 정보기술 응용을 위한 개발 업무를 수행합니다.</span>
                        <a class="moreBtn" href="rnd">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>

                <!-- <div class="serviceList">
                    <a href="#"><span class="material-icons-outlined prevBtn">arrow_back_ios</span></a>
                    <ul>
                        <li><a href="" class="active"></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                    </ul>
                    <a href="#"><span class="material-icons-outlined nextBtn">arrow_forward_ios</span></a>
                </div> -->
              </div>
            </div>
          </section>
          <section class="valueSection">
            <h1 class="mainSectionTitle">사회적 가치</h1>
            <h4 class="sectionTitleDesc">새하정보시스템의 정보시스템 구축서비스</h4>
            <div class="valueList">
                <ul>
                    <li>
                        <a href="human">
                            <span class="icon">
                                <span class=" icon1"></span>
                            </span>
                            <span class="text">인권경영헌장</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="environment">
                            <span class="icon">
                                <span class=" icon2"></span>
                            </span>
                            <span class="text">환경경영방침</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="ethics">
                            <span class="icon">
                                <span class=" icon3"></span>
                            </span>
                            <span class="text">윤리경영</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="esg">
                            <span class="icon">
                                <span class=" icon4"></span>
                            </span>
                            <span class="text">ESG강령</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                </ul>
            </div>
          </section>
          <section class="newsSection">
            <div class="newsSectionGroup">
              <div class="whatsNew">
                <h1 class="mainSectionTitle"><a href="notice">What's New</a></h1>
                <h4 class="sectionTitleDesc">새하정보시스템의 새로운 소식</h4>
                <ul class="newsGroup">
                  <li>
                    <a href="">
                      <span>지역 융합보안 대학원에 고려대/카이스트/전남대 선정</span>
                      <span>고려대/카이스트/전남대가 지역 융합보안 대학원으로 선정됐다. 과학기술정보통신부는 15일 융합보안 핵심인재 양성을 위해 국내 14개 대학 중 3곳을 최종 선정했다고 밝혔다.</span>
                      <span>2019-05-16</span>
                    </a>
                  </li>
                  <li>
                    <div class="hr"></div>
                    <a href="">
                      <span>(주)새하정보시스템 지역 우수기업 선정</span>
                      <span>전남테크노파크, 전남 기업 15곳‘지역 우수기업’선정 -성장잠재력이 높은 전남 우수기업 15개사 연구개발,정책자금,해외 진출 등 지원으로 일자리 창출 기대- 전라남도는
  중소벤처기업부와 전남테크노파크가 함께 지역혁신성장을 견인할 ‘지역우수기업’ 15개사를 선정하고 기술사업화 및 연구개발(R&D) 등을 지원한다고 밝혔다.</span>
                      <span>2018-06-20</span>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="photoNews">
                <h1 class="mainSectionTitle"><a href="photo">Photo News</a></h1>
                <h4 class="sectionTitleDesc">새하정보시스템의 새로운 소식</h4>
                <ul class="photoNewsGroup">
                  <li><a href="#">
                    <span>
                      <svg viewBox="170 30 400 400">
                        <mask id="mask1" x="0" y="0" width="420" height="310">
                          <rect x="0" y="0" width="420" height="310" fill="#000" />
                        </mask>
                        <image xmlns:xlink="" xlink:href="./images/photo_news_img_01.jpg" mask="url(#svgmask1)"></image>
                      </svg>
                    </span>
                    <span class="ellipsis">전남 스타기업 지정서 수여식</span>
                    <span class="ellipsis">김영록 전남도지사는 8월 1일 나주 빛가람호텔에서 전남 스타기업으로 선정된 15개사에 대해 ‘2018년 전남 스타기업’ 지정서를 수여한 후 기업의 애로사항을 듣고 격려하는 간담회를 가졌다.</span>
                  </a></li>
                  <li><a href="#">
                    <span>
                      <svg viewBox="170 30 400 400">
                        <mask id="mask1" x="0" y="0" width="420" height="310">
                          <rect x="0" y="0" width="420" height="310" fill="#000" />
                        </mask>
                        <image xmlns:xlink="" xlink:href="./images/photo_news_img_02.jpg" mask="url(#svgmask1)"></image>
                      </svg>
                    </span>
                    <span class="ellipsis">전남 스타기업 지정서 수여식</span>
                    <span class="ellipsis">김영록 전남도지사는 8월 1일 나주 빛가람호텔에서 전남 스타기업으로 선정된 15개사에 대해 ‘2018년 전남 스타기업’ 지정서를 수여한 후 기업의 애로사항을 듣고 격려하는 간담회를 가졌다.</span>
                  </a></li>
                  <li><a href="#">
                    <span>
                      <svg viewBox="100 0 300 300">
                        <mask id="mask1" x="0" y="0" width="420" height="310">
                          <rect x="0" y="0" width="420" height="310" fill="#000" />
                        </mask>
                        <image xmlns:xlink="" xlink:href="./images/photo_news_img_03.jpg" mask="url(#svgmask1)"></image>
                      </svg>
                    </span>
                    <span class="ellipsis">2017년도 우수협력사 인증 수여식 및 간담회</span>
                    <span class="ellipsis">한전KDN(사장 임수경)은 22일 나주 혁신도시 본사 대회의실에서 2017년도 우수협력사로 선정된 7개 중소기업들을 대상으로
우수협력사 인증 수여식 및 간담회를 개최했다.</span>
                  </a></li>
                </ul>
              </div>
            </div>
            <div class="noticeBtnGroup">
              <a href="#" id="noticePrevBtn"><span class="material-icons-outlined">arrow_back_ios</span></a>
              <a href="#" id="noticeNextBtn"><span class="material-icons-outlined">arrow_forward_ios</span></a>
            </div>
          </section>
        </main>
      </div>
    </div>
    <footer>
      <div class="address">
        <span>전라남도 나주시 도민길 46(빛가람동 892-12) 새하빌딩<br></span>
        <span>Copyright(c) 2014 SAIHA Information System Co., LTD<br>All Rights Reserved</span>
      </div>
      <div class="phoneGroup">
        <div class="phone">
          <span>대표전화<br></span>
          <span>061. 930. 0050</span>
        </div>
        <div class="fax">
          <span>팩스<br></span>
          <span>061. 930. 0060</span>
        </div>
        <div class="email">
          <span>이메일<br></span>
          <span><a href="mailto:Webmaster@saiha.co.kr">Webmaster@saiha.co.kr</a></span>
        </div>
      </div>
      <div class="linkGroup">
        <span>관련링크<br></span>
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
    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    <script src="./js/mainSlide.js"></script>
    <script src="./js/mainMenu.js"></script>
    <script></script>
  </body>
</html>
