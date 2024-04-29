<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="Pragma" content="No-Cache">
<script type="text/javascript">
    function viewDetail(no){
        var url = "/asset/assetDetail";
        url = url + "?resourceId="+no;
        location.href=url;
    }

    function goWrite() {
      location.href="/asset/assetWrite";
    }

    function goView(page) {
        $('form input[name=page]').val(page)
        $('form').submit()
    }

  </script>
  <style>
  select{border: 1px solid #C4C4C4;
               border-radius: 10px;}
  .selbox{
      border: 1px solid #C4C4C4;
      box-sizing: border-box;
      border-radius: 10px !important;

      font-family: 'Roboto';
      font-style: normal;
      font-weight: 400;
      font-size: 14px;
      line-height: 16px;
  }
  .selbox:focus{
      border: 1px solid #145fcc;
      box-sizing: border-box;
      border-radius: 10px;
      outline: 3px solid #b5d3ff;
      border-radius: 10px;
  }
  </style>
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
        <li><a href="asset" class="active">자산관리</a></li>
      </ul>
    </div>
    <main>
      <section class="contentDefault">
        <h1 class="subContentTitle">자산관리</h1>
        <h3 class="subContentTitleDesc">
          새하정보시스템은 정보시스템 구축전문 기업입니다.
        </h3>
        <div class="subContent">
            <div style="float:left;">
             total : ${pagination.totalRecordCount}
             </div>
              <form action="asset" method="POST" >
              <input type="hidden" name="page" value="1">
              <div class="assetSearchGroup" style="float:right;">
              <select name="ndKind" class="selbox" title="자산종류" >
                 <option value="">자산종류</option>
                 <c:forEach var="code" items="${PC1code}" varStatus="status">
                    <option value="${code.code}" <c:if test="${param.ndKind eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                 </c:forEach>
              </select>
           <select name="gubun" class="selbox" title="내외구분">
               <option value="">내외구분</option>
               <c:forEach var="code" items="${PG1code}" varStatus="status">
              <option value="${code.code}" <c:if test="${param.gubun eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
              </c:forEach>
           </select>
            <select name="resUseType" class="selbox" title="용도">
               <option value="">용도</option>
               <c:forEach var="code" items="${RVTcode}" varStatus="status">
              <option value="${code.code}" <c:if test="${param.resUseType eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
              </c:forEach>
            </select>
            구입년월 :
            <input type="date" name="startDate" value="${param.startDate}" style=width:80px;>
            <%--<img src="/image/Calendar.gif" border="0" align="absbottom" style="cursor: pointer;"> --%>
            ~
            <input type="date" name="endDate" value="${param.endDate}" style=width:80px;>
            <%--<img src="/image/Calendar.gif" border="0" align="absbottom" o style="cursor: pointer;"> --%>

            <select name="dataFlag" class="selbox" title="신구구분">
               <option value="">신/구자료</option>
                 <c:forEach var="code" items="${PC3code}" varStatus="status">
                <option value="${code.code}"  <c:if test="${param.dataFlag eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                </c:forEach>
            </select>
            <select name="selType" id="selType" class="selbox" onchange="changeSel();">
              <option value="">전체</option>
              <option value="n" <c:if test="${param.selType eq 'n'}">selected="selected"</c:if>>이름</option>
              <option value="m" <c:if test="${param.selType eq 'm'}">selected="selected"</c:if>>모델명</option>
            </select>
            <input type="text" class="noticeSearchInput" style="width:200px;" name="selStr" id="selStr" value="${param.selStr}" >
            <button class="ver-t" type="submit">검색</button>
          </div>

          <table class="defaultTable">
            <colgroup>
              <col width="5%">
              <col width="7%">
              <col width="9%">
              <col width="7%">
              <col width="5%">
              <col width="5%">
              <col width="13%">
              <col width="7%">
              <col width="7%">
              <col width="9%">
              <col width="5%">
              <col width="5%">
              <col width="4%">
              <col width="5%">
            </colgroup>
            <thead>
            <tr>
              <th>번호</th>
              <th>담당자</th>
              <th>자산번호</th>
              <th>자산종류</th>
              <th>구분</th>
              <th>용도</th>
              <th>모델명</th>
              <th>구입년월</th>
              <th>사용기간</th>
              <th>Serial</th>
              <th>상세스펙</th>
              <th>소모품</th>
              <th>기타</th>
              <th>파일첨부</th>
            </tr>
            </thead>
            <tbody>
            <c:choose>
                <c:when test="${pagination.totalRecordCount > 0}">
                    <c:forEach var="item" items="${assetList}" varStatus="status">
                      <tr onclick="viewDetail('${item.resourceId}')" style="cursor:pointer;">
                        <td><c:out value="${item.n}" /></td>
                        <td><c:out value="${item.name}"/></td>
                        <td><c:out value="${item.assetNo}"/></td>
                        <td><c:out value="${item.ndKind}"/></td>
                        <td><c:out value="${item.gubun}"/></td>
                        <td><c:out value="${item.resUesType}"/></td>
                        <td><c:out value="${item.model}"/></td>
                        <td><c:out value="${item.buyDate}"/></td>
                        <td><c:out value="${item.useDateYear}년 ${item.useDateMonth}개월"/></td>
                        <td><c:out value="${item.serial}"/></td>
                        <td><c:out value="${item.spec}"/></td>
                        <td><c:out value="${item.consum}"/></td>
                        <td><c:out value="${item.etc}"/></td>
                        <td><c:out value="${item.hasFileYn}"/></td>
                      </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="14">조회된 데이터가 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
            </tbody>
          </table>
          <div class="paginationGroup">
            <div class="pagination">
              <ul>
                    <li><a href="javascript:goView(1)" class="firstBtn"></a></li>
                   <li><a href= <c:choose><c:when test="${param.page gt pagination.startPage}">"javascript:goView(${param.page-1})"</c:when>
                                            <c:otherwise>"javascript:void(0);"</c:otherwise></c:choose> class="prevBtn"></a></li>
                    <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                        <li><a href="javascript:goView(${i})" <c:if test ="${i eq param.page}">class="active"</c:if> >${i}</a></li>
                    </c:forEach>
                    <li><a href= <c:choose><c:when test="${param.page lt pagination.endPage}">"javascript:goView(${param.page+1})"</c:when>
                         <c:otherwise>"javascript:void(0);"</c:otherwise></c:choose> class="nextBtn"></a></li>
                    <li><a href="javascript:goView(${pagination.totalPageCount})" class="lastBtn"></a></li>
              </ul>
            </div>
           </div>
           </form>
           <div style="float:right;">
                <button class="writeBtn" onclick="goWrite();" >작성</button>
                <button class="printBtn" >출력</button>
            </div>
        </div>
      </section>
    </main>
  </div>
</div>
</body>
</html>