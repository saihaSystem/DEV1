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
    <title>새하정보시스템-온라인입사지원</title>
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
    <script>
        functions submit() {


        }
    </script>
  </head>
  <body>

    <div id="wrapper">
      <div id="container">
        <header class="header subHeader">
          <div class="head subHead" id="head">
            <div class="logo">
              <a href="/"><img src="/images/main_logo.png" /></a>
            </div>
            <div class="nav">
              <ul>
                <li>
                  <a href="/introduce/ceo">회사소개  <%=request.getParameter("tel")%></a>
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
          <div class="subVisual recruit application"></div>
          <div class="subNav">
            <ul>
              <li><a href="recruit">채용정보안내</a></li>
              <li><a href="application" class="active">온라인입사지원</a></li>
            </ul>
          </div>
        </header>
        <main>
          <section class="contentDefault">
            <h1 class="subContentTitle">온라인입사지원</h1>
            <h3 class="subContentTitleDesc">
              새하정보시스템은 정보시스템 구축전문 기업입니다.
            </h3>
            <div class="subContent">
              <form name="test" id="test" enctype="multipart/form-data" action="upload" method="POST">
              <table class="defaultTable tdAllLeft">
                <tr>
                  <th>작성자</th>
                  <td>
                    <label>한글 </label><input type="text" name="userNm" class="ver-t">&nbsp;&nbsp;&nbsp;
                    <label>한자 </label><input type="text" name="chiNm" class="ver-t">&nbsp;&nbsp;&nbsp;
                    <label>영문 </label><input type="text" name="engNm" class="ver-t">
                  </td>
                </tr>
                <tr>
                  <th>주소</th>
                  <td>
                    <input type="text" name="zipcode">&nbsp;<button  class="postBtn">우편번호</button><br>
                    <input type="text" class="wp100 mt6">
                  </td>
                </tr>
                <tr>
                  <th>생년월일</th>
                  <td><input type="text" name="engNm"> <abbr>숫자만 입력 가능합니다. 예)1990년 1월 1일 - 900101</abbr></td>
                </tr>
                <tr>
                  <th>연락처(휴대폰)</th>
                  <td><input type="text" name="telNo1"> <abbr>'-'없이 숫자만 입력하세요</abbr></td>
                </tr>
                <tr>
                  <th>연락처(일반번호)</th>
                  <td><input type="text" name="telNo2"> <abbr>'-'없이 숫자만 입력하세요</abbr></td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td><input type="text" name="email"> <abbr>'@'제외한 특수문자 입력불가능</abbr></td>
                </tr>
                <tr>
                  <th>지원분야</th>
                  <td><select name="" id="" name="supprotCode">
                    <option value="">---지원분야를 선택하세요---</option>
                    <option value="">프로그래머</option>
                    <option value="">웹프로그래머</option>
                    <option value="">웹디자이너</option>
                    <option value="">프로젝트관리</option>
                    <option value="">컨설팅</option>
                    <option value="">시스템엔지니어</option>
                    <option value="">영업인력</option>
                  </select></td>
                </tr>
                <tr>
                  <th>학력</th>
                  <td>
                    <input type="text" class="ver-t" name="middleschool"><label> 중학교</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" class="ver-t" name="highschool"><label> 고등학교</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" class="ver-t" name="university"><label> 대학교</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" class="ver-t" name="gradschool"><label> 대학원</label>
                  </td>
                </tr>
                <tr>
                  <th>사진첨부</th>
                  <td>
                    <input type="file" name="photo">
                  </td>
                </tr>
                <tr>
                  <th>경력사항</th>
                  <td>
                    <textarea name="" id="" cols="130" rows="10" class="textareaResize textareaCss" name="careeritem"></textarea>
                  </td>
                </tr>
                <tr>
                  <th>자기소개서</th>
                  <td>
                    <textarea name="" id="" cols="130" rows="10" class="textareaResize textareaCss" name="introcuction"></textarea>
                  </td>
                </tr>
                <tr>
                  <th>파일첨부</th>
                  <td>
                    <input type="file" name="fileAdd"> <abbr>파일이 여러개인 경우 압축하여 올려주세요</abbr>
                  </td>
                </tr>
              </table>
              <div class="mt10 txt-r">
                <button type="submit">등록하기</button>
                <button type="button" onclick="location='http://localhost:8080/recruit/application'">취소하기</button>
              </div>
            </div>
            </form>
          </section>
        </main>
      </div>
    </div>
    <footer>
      <div class="address">
        <span>전라남도 나주시 도민길 46(빛가람동 892-12) 새하빌딩<br/></span>
        <span>Copyright(c) 2014 SAIHA Information System Co., LTD<br/>All Rights Reserved</span>
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
