<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
function search(){
    var url = "/asset/empList";
    location.href=url;
}
function send(empNo,empNm){
    opener.document.getElementById('contactEno').value=empNo;
    opener.document.getElementById('contactName').value=empNm;
    opener.document.getElementById('contactNm').value=empNm;
    this.close();
}
</script>
<html lang="ko">
<head>
<title>결재</title>
</head>
<body>

<caption style="text-align:center;"><h3 style="text-align:center;">결재선 관리</h3></caption>
<colgroup>
<form action="/asset/approval">
<div class="assetSearchGroup" style="text-align:center;">
  이름 :  <input type="text" name="searchNm" id="searchNm" style="width:30%" class="noticeSearchInput">
  <button class="ver-t" type="submit">검색</button>
</div>
</form>
<table class="defaultTable">
      <colgroup>
        <col width="50%">
        <col width="50%">
      </colgroup>
      <thead>
        <tr>
          <th>사번</th>
          <th>이름</th>
        </tr>
      </thead>
      <tbody>

      </tbody>
</table>
</body>
</html>