<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
   <header class="header">
      <div class="head" id="head">
        <div class="logo"><a href="/"><img src="/images/main_logo.png" /></a></div>
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
              <a href="/human/human">사회적가치</a>
              <ul class="subMenu subMenu3">
                <li><a href="/human/human">인권경영헌장</a></li>
                <li><a href="/human/environment">환경경영방침</a></li>
                <li><a href="/human/ethics">윤리경영</a></li>
                <li><a href="/human/esg">ESG강령</a></li>
              </ul>
            </li>
            <li>
              <a href="/si/si">사업연혁</a>
              <ul class="subMenu subMenu4">
                <li><a href="/si/si">SI사업 Part</a></li>
                <li><a href="/si/outsourcing">Outsourcing Part</a></li>
              </ul>
            </li>
            <li>
              <a href="/notice/notice">고객지원</a>
              <ul class="subMenu subMenu5">
                <li><a href="/notice/notice">새하소식</a></li>
                <li><a href="/notice/qna">고객문의</a></li>
                <li><a href="/notice/contact">Contact Us</a></li>
                <li><a href="/notice/photo">Photo News</a></li>
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
              <a href="/service/sysIntegration">사원페이지</a>
              <ul class="subMenu subMenu7">
                <li><a href="/asset/insa">경영정보</a></li>
                <li><a href="/management/insa">경영정보</a></li>
                <li><a href="/service/approve">전자결재</a></li>
                <li><a href="/service/data">자료실</a></li>
                <li><a href="/service/saihanews">새하알리미</a></li>
                <li><a href="/service/board">게시판</a></li>
                <li><a href="/service/pnumber">전화번호</a></li>
                <li><a href="/service/app_management">결재관리</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="sideMenu">
          <a class="loginBtn" href="/login.html">로그인</a>
        </div>
      </div>
   </header>
</body>
</html>