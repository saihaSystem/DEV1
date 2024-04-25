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
    <title>새하정보시스템-새하소식</title>
    <link rel="stylesheet" href="/css/font.css" />
    <link rel="stylesheet" href="/css/common.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="/js/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="/js/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css"/>

    <!-- JavaScript -->
    <script src="/js/jquery-3.5.1.min.js"></script>
<!--    <script src="/js/jquery-ui.js"></script>
    <script src="/js/ui_global.js"></script>
    <script src="/js/common.js"></script> -->

    <script type="text/javascript">
        $("document").ready(function () {

        });

        function goView(page) {
            $('#form2 input[name=page]').val(page);
            $('#form2').submit();
        }
    </script>
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
                  <a href="/introduce/ceo">회사소개</a>
                  <ul class="subMenu subMenu1">
                    <li><a href="/introduce/ceo">CEO인사말</a></li>
                    <li><a href="/introduce/history">주요연혁</a></li>
                    <li><a href="/introduce/organization">조직도</a></li>
                    <li><a href="/introduce/partner">협력사</a></li>
                    <li><a href="/introduce/map">오시는길</a></li>
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
                  <a href="recruit">채용안내</a>
                  <ul class="subMenu subMenu6">
                    <li><a href="recruit">채용정보안내</a></li>
                    <li><a href="application">온라인입사지원</a></li>
                  </ul>
                </li>
                <li>
                  <a href="staff">사원페이지</a>
                  <ul class="subMenu subMenu7">
                    <li><a href="insa">경영정보</a></li>
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
          <div class="subVisual customer notice"></div>
          <div class="subNav">
            <ul>
              <li><a href="/management/insa" class="active">인사관리</a></li>
              <li><a href="qna">급여관리</a></li>
              <li><a href="contact">자산관리</a></li>
              <li><a href="/recruit/recruit">외부인력관리</a></li>
              <li><a href="/staff/board?brdGubun=01">채용관리</a></li>
            </ul>
          </div>
        </header>
        <main>
          <form id="form2" action="insa">
          <input type="hidden" name="page" value="${param.page}">
          <section class="contentDefault">
            <h1 class="subContentTitle">인사관리</h1>
            <h3 class="subContentTitleDesc">
            </h3>
            <div class="subContent">
              <div class="noticeSearchGroup">
                    <select name="searchSelect0" id="searchSelect0" class="noticeSelect">
                      <option value=work <c:if test="${param.searchSelect0 eq 'work'}"> selected </c:if> >재직</option>
                      <option value=fire <c:if test="${param.searchSelect0 eq 'fire'}"> selected </c:if> >퇴사</option>
                    </select>

                    <select name="searchSelect1" id="searchSelect1" class="noticeSelect">
                      <option value=name  <c:if test="${param.searchSelect1 eq 'name'}"> selected </c:if> >사원이름</option>
                      <option value=sabun <c:if test="${param.searchSelect1 eq 'sabun'}"> selected </c:if> >사원번호</option>
                      <option value=jubun <c:if test="${param.searchSelect1 eq 'jubun'}"> selected </c:if> >주민번호</option>
                    </select>

                    <input class="noticeSearchInput" type="text" id="searchTxt1" name="searchTxt1" value="${param.searchTxt1}" />

                    <select name="searchSelect2" id="searchSelect2" class="noticeSelect">
                      <option value="part" <c:if test="${param.searchSelect2 eq 'part'}"> selected </c:if> >소속</option>
                      <option value="posi" <c:if test="${param.searchSelect2 eq 'posi'}"> selected </c:if> >직위</option>
                      <option value="team" <c:if test="${param.searchSelect2 eq 'team'}"> selected </c:if> >팀명</option>
                    </select>
                    <input class="noticeSearchInput" type="text" id="searchTxt2" name="searchTxt2" value="${param.searchTxt2}" />

                <button class="ver-t" type="button" onClick="goView(1)">검색</button>
              </div>
              <table class="defaultTable">
                <colgroup>
                  <col width="5%">
                  <col width="10%">
                  <col width="10%">
                  <col width="30%">
                  <col width="20%">
                  <col width="10%">
                  <col width="20%">
                </colgroup>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>사번</th>
                    <th>이름</th>
                    <th>주민등록번호</th>
                    <th>소속</th>
                    <th>직위</th>
                    <th>팀명</th>
                  </tr>
                </thead>
                <tbody>
                  <c:choose>
                    <c:when test="${fn:length(insaList) != 0 && insaList.get(0).brdNo ne '' && insaList.get(0).brdNo ne null}">
                        <c:forEach var="ManagementDTO" items="${insaList}" varStatus="status">
                          <tr>
                              <td>${ManagementDTO.brdNo}</td>
                              <td><a href="/management/management?juminNo=${ManagementDTO.juminNo}">${ManagementDTO.juminNo}</a></td>
                              <td>${ManagementDTO.name}</td>
                              <td>${ManagementDTO.juminNo2}</td>
                              <td>${ManagementDTO.sosok}</td>
                              <td>${ManagementDTO.position}</td>
                              <td>${ManagementDTO.teamNm}</td>
                          </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td align="center" colspan="9">조회된 데이터가 없습니다.</td>
                        </tr>
                    </c:otherwise>
                  </c:choose>
                </tbody>
              </table>
              <div class="paginationGroup">
                  <div class="pagination">
                      <ul>
                          <li><a href="javascript:goView(1)" class="firstBtn"></a></li>
                          <li><a href="${param.page > 1 ? 'javascript:goView('+=param.page-1+=');' : 'javascript:void(0);'} " class="prevBtn"></a></li>
                              <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                                  <li><a href="javascript:goView(${i})" <c:if test = "${i eq param.page}">  class="active"  </c:if>>${i}</a></li>
                              </c:forEach>
                          <li><a href="${param.page lt pagination.totalPageCount ? 'javascript:goView('+=param.page+1+=');' : 'javascript:void(0);' }" class="nextBtn"></a></li>
                          <li><a href="javascript:goView(${pagination.totalPageCount})" class="lastBtn"></a></li>
                      </ul>
                  </div>

                <button class="writeBtn" type="button" >출력</button>
                <button class="writeBtn" type="button" >작성</button>
              </div>
            </div>
          </section>
          </form>
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
