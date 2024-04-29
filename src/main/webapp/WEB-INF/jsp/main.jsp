<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
  <head>
  </head>

  <body>
    <div id="wrapper">
      <div id="container">
        <main>
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
          <section class="serviceSection">
            <h1 class="mainSectionTitle">Service</h1>
            <h4 class="sectionTitleDesc">새하정보시스템의 정보시스템 구축서비스</h4>
            <div class="serviceContentGroup">
              <div class="owl-carousel owl-theme" id="owl-two">
                <div class="serviceContent1 item">
                    <div class="sectionContentImg sectionContentImgBgText1"><img src="/images/main_service_img_01.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>System Intergation</h3>
                        <span>기업경쟁력 강화를 위한 각종 정보시스템 구축 사업으로 컨설팅에서 설계, 하드웨어 선택, 프로그램 개발 유지보수까지 고객의 환경에 맞는 시스템 통합 서비스를 제공해 드립니다.</span>
                        <a class="moreBtn" href="sys_integration.html">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent2 item">
                    <div class="sectionContentImg sectionContentImgBgText2"><img src="/images/main_service_img_02.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>System Management</h3>
                        <span>중장기 정보화 전략 수립부터 시스템 기획, 개발운영에 이르기까지 정보시스템과 관련된 모든 일을 책임지고 수행해 드림으로서 기업의 대회 경쟁력을 강화할 수 있도록 도와드립니다.</span>
                        <a class="moreBtn" href="sys_management.html">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent3 item">
                    <div class="sectionContentImg sectionContentImgBgText3"><img src="/images/main_service_img_03.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>Internet Solution</h3>
                        <span>여러해 동안의 B2B EC 구축 경험의 기반을 바탕으로, 앞서 나가고자 하는 기업을 위해 최신 인터넷 기술을 활용한 e-Business 컨설팅 및 솔루션을 제공합니다.</span>
                        <a class="moreBtn" href="sys_solution.html">자세히 보기<span class="material-icons-outlined">east</span></a>
                    </div>
                </div>
                <div class="serviceContent4 item">
                    <div class="sectionContentImg sectionContentImgBgText4"><img src="/images/main_service_img_04.jpg"></div>
                    <div class="sectionContentDesc">
                        <h3>R&D</h3>
                        <span>미래의 인터넷 관련 핵심 기반 기술에 대한 연구와 선도적인 정보기술 응용을 위한 개발 업무를 수행합니다.</span>
                        <a class="moreBtn" href="rnd.html">자세히 보기<span class="material-icons-outlined">east</span></a>
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
                        <a href="human.html">
                            <span class="icon">
                                <span class=" icon1"></span>
                            </span>
                            <span class="text">인권경영헌장</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="environment.html">
                            <span class="icon">
                                <span class=" icon2"></span>
                            </span>
                            <span class="text">환경경영방침</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="ethics.html">
                            <span class="icon">
                                <span class=" icon3"></span>
                            </span>
                            <span class="text">윤리경영</span>
                            <span class="btn">자세히 보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="esg.html">
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
                <h1 class="mainSectionTitle"><a href="/notice/notice">What's New</a></h1>
                <h4 class="sectionTitleDesc">새하정보시스템의 새로운 소식</h4>
                <ul class="newsGroup">
                  <c:forEach var="board" items="${noticeList}" varStatus="status">
                      <li>
                        <a href="">
                          <span>${board.title}</span>
                          <span class="ellipsis" style="width:1400px">${board.contents}</span>
                          <span>${board.registYmd}</span>
                        </a>
                      </li>
                  </c:forEach>
                </ul>
              </div>

              <div class="photoNews">
                <h1 class="mainSectionTitle"><a href="/notice/photo">Photo News</a></h1>
                <h4 class="sectionTitleDesc">새하정보시스템의 새로운 소식</h4>
                <ul class="photoNewsGroup">
                  <c:forEach var="photo" items="${photoList}" varStatus="status">
                      <li>
                        <a href="#">
                            <span>
                              <svg viewBox="170 30 400 400">
                                <mask id="mask1" x="0" y="0" width="420" height="310">
                                  <rect x="0" y="0" width="420" height="310" fill="#000" />
                                </mask>
                                <image xmlns:xlink="" xlink:href="/fileImg/${photo.fileId}" mask="url(#svgmask1)"></image>
                              </svg>
                            </span>
                            <span class="ellipsis">${photo.title}</span>
                            <span class="ellipsis">${photo.contents}</span>
                        </a>
                      </li>
                  </c:forEach>
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
  </body>
</html>
