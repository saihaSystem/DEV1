<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <script type="text/javascript">
    function viewDetail(no){
        var url = "/asset/assetDetail";
        url = url + "?resourceId="+no;
        location.href=url;
    }
  </script>
  <html lang="ko">
    <head>
    </head>
    <body>
      <div id="wrapper">
        <div id="container">
          <div class="subVisual customer manageInfo"></div>
          <div class="subNav">
             <ul>
                 <li><a href="insa" >인사관리</a></li>
                 <li><a href="asset" class="active">자산관리</a></liF
               </ul>
          </div>
          <main>
            <section class="contentDefault">
              <h1 class="subContentTitle">자산관리</h1>
              <h3 class="subContentTitleDesc">
                새하정보시스템은 정보시스템 구축전문 기업입니다.
              </h3>
              <div class="subContent">
                <div class="assetSearchGroup">
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
                    <col width="20%">
                    <col width="10%">
                  </colgroup>
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>자산번호</th>
                      <th>작성자</th>
                      <th>구입날짜</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="item" items="${assetList}" varStatus="status">
                    <tr onclick="viewDetail('${item.resourceId}')" style="cursor:pointer;">
                        <td><c:out value="${item.n}" /></td>
                        <td><c:out value="${item.resourceId}"/></td>
                        <td><c:out value="${item.assetNo}"/></td>
                        <td><c:out value="${item.name}"/></td>
                        <td><c:out value="${item.buyDate}"/></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
                <div class="paginationGroup">
                  <div class="pagination">
                    <ul>

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
