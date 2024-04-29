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
        <div class="subVisual customer notice"></div>
        <div class="subNav">
            <ul>
              <li><a href="notice" class="active">새하소식</a></li>
              <li><a href="qna">고객문의</a></li>
              <li><a href="contact">Contact Us</a></li>
              <li><a href="photo">Photo News</a></li>
            </ul>
        </div>
        <main>
          <section class="contentDefault">
            <h1 class="subContentTitle">새하소식</h1>
            <h3 class="subContentTitleDesc">
              새하정보시스템은 정보시스템 구축전문 기업입니다.
            </h3>
            <div class="subContent">
              <div class="noticeSearchGroup">
                <select name="" id="" class="noticeSelect">
                  <option value="">제목</option>
                  <option value="">내용</option>
                  <option value="">제목+내용</option>
                </select>
                <input type="text" class="noticeSearchInput">
                <button class="ver-t">검색</button>
              </div>
              <table class="defaultTable">
                <colgroup>
                  <col width="5%">
                  <col width="50%">
                  <col width="10%">
                  <col width="10%">
                  <col width="10%">
                  <col width="10%">
                </colgroup>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>파일</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="item" items="${boardList}" varStatus="status">
                      <tr>
                        <td>${boardListCnt - (param.page*5) - status.index}</td>
                        <td class="txt-l"><a href="#">${item.title}</a></td>
                        <td></td>
                        <td>${item.name}</td>
                        <td>${item.registYmd}</td>
                        <td>${item.viewCnt} <%=request.getParameter("page")%></td>
                      </tr>
                  </c:forEach>
                </tbody>
              </table>
              <div class="paginationGroup">
                <div class="pagination">
                  <ul>
                    <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" >
                    <li><a href="#" class="firstBtn"></a></li>
                    <li><a href="#" class="prevBtn"></a></li>
                    <li><a href="notice?page=0&brdGubun=00" class="active">1</a></li>
                    <li><a href="notice?page=1&brdGubun=00">2</a></li>
                    <li><a href="notice?page=2&brdGubun=00">3</a></li>
                    <li><a href="notice?page=3&brdGubun=00">4</a></li>
                    <li><a href="notice?page=4&brdGubun=00">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">...</a></li>
                    <li><a href="#" class="nextBtn"></a></li>
                    <li><a href="#" class="lastBtn"></a></li>
                    </c:forEach>
                  </ul>
                </div>
                <button class="writeBtn">작성</button>
              </div>
            </div>
          </section>
        </main>
      </div>
    </div>
  </body>
</html>
