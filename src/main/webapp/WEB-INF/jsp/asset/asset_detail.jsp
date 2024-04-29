<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <script type="text/javascript">
    function delHistory(res, his){
        var url = "/asset/delHistory?resourceId="+res+"&historyId="+his;
        location.href=url;
    }
    function popup_emp(){
        var popOption = "width=650px, height=550px, top=300px,left=300px, scrollbars=yes";
        window.open('/asset/empList','pop',popOption);
    }
    function approval(){
        var popOption = "width=650px, height=550px, top=300px,left=300px, scrollbars=yes";
        window.open('/asset/approval','pop',popOption);
    }
    function save(){
        location.href='/asset/uploadHistory';
    }
    function modify(res){
        var url = "/asset/assetModify?resourceId="+res;
        location.href=url;
    }
    function goList(){
        window.history.back();
    }

    var selectChange = function(value){
    console.log("sortation : "+value);
    $("#sortation").val(value);
    }
    var changeName = function(value){
    console.log("contactNm : "+value);
    $("#contactNm").val(value);
    }
    const config = {
    		dateFormat: 'yyyy-mm-dd',
    		showOn : "both",
    		buttonText:"날짜 선택",
    		buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
    	    prevText: '이전 달',
    	    nextText: '다음 달',
    	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	    dayNames: ['일','월','화','수','목','금','토'],
    	    dayNamesShort: ['일','월','화','수','목','금','토'],
    	    dayNamesMin: ['일','월','화','수','목','금','토'],
    	    yearSuffix: '년',
            changeMonth: true,
            changeYear: true
    	}
    $(function() {
      $("#changeDate").datepicker(config);
    });
  </script>
  <style>
  th{
    background-color:#f5f8fa;
    color: #164da0;
  }
.img-del-btn {
		background: url('../images/image/bt_del.png') no-repeat;
		background-position: center center; margin-left: 8px; margin-top: 2px;
		padding: 2px 2px 2px 2px; border: none; width: 20px; height: 14px;cursor: pointer;
	}
.img-emp-btn{
    background: url('../images/image/btn_emp.png') no-repeat;
    		background-position: center center; margin-left: 8px; margin-top: 2px;
    		padding: 2px 2px 2px 2px; border: none; width: 20px; height: 14px;cursor: pointer;
}
input[type="date"]{
position: relative;
width: 120px;
height:30px;
padding-right:10px;
background:url('../images/image/Calendar.gif'} no-repeat right 5px center;
border:1px solid blue;
border-radius: 12px;
input[type="date"]::-webkit-clear-button,
input[type="date"]::-webkit-inner-spin-button{display:none;}
input[type="date"]::-webkit-calendar-picker-indicator{
    position:absolute;
    left:0;
    top:0;
    background:transparent;
    color:transparent;
    cursor:pointer;
    width:100%""
}
input[type="date"]::before{

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
                <table class="defaultTable">
                  <colgroup>
                    <col width="10%">
                    <col width="25%">
                    <col width="10%">
                    <col width="15%">
                    <col width="10%">
                    <col width="20%">
                    <col width="10%">
                  </colgroup>
                  <tbody>
                    <tr>
                      <th>자산번호</th>
                      <td><c:out value="${asset.assetNo}"/></td>
                      <th>담당자</th>
                      <td><c:out value="${asset.name}"/></td>
                      <th>구입날짜</th>
                      <td><c:out value="${asset.buyDate}"/></td>
                    </tr>
                    <tr>
                      <th>자산종류</th>
                      <td><c:out value="${asset.ndKindNm}"/></td>
                      <th>내외구분</th>
                      <td colspan="3"><c:out value="${asset.gubunNm}"/></td>
                    </tr>
                    <tr>
                        <th>모델명</th>
                        <td><c:out value="${asset.model}"/></td>
                        <th>Serial No</th>
                        <td colspan="3"><c:out value="${asset.serial}"/></td>
                    </tr>
                    <tr>
                        <th>용도</th>
                        <td><c:out value="${asset.resUesTypeNm}"/></td>
                        <th>사용기간</th>
                        <td colspan="4"><c:out value="${asset.useDateYear}"/> 년 <c:out value="${asset.useDateMonth}"/> 개월</td>
                    </tr>
                    <tr>
                        <th>상세 spec</th>
                        <td colspan="6"><c:out value="${asset.spec}"/></td>
                    </tr>
                    <tr>
                        <th>소모품</th>
                        <td colspan="6"><c:out value="${asset.consum}"/></td>
                    </tr>
                    <tr>
                        <th>기타</th>
                        <td colspan="6"><c:out value="${asset.etc}"/></td>
                    </tr>
                    <tr>
                        <th>첨부파일</th>
                        <td colspan="6"><c:out value=""/></td>
                    </tr>
                    <tr>
                        <td colspan="7"></td>
                    </tr>
                  </tbody>
                </table>
                <h3 class="subContentTitleDesc">

                              </h3>
                <table class="defaultTable">
                                  <colgroup>
                                    <col width="10%">
                                    <col width="10%">
                                    <col width="60%">
                                    <col width="20%">
                                  </colgroup>
                                  <tbody>
                                    <tr>
                                      <th>구분</th>
                                      <th>담당자</th>
                                      <th>변동내역</th>
                                      <th>변동날짜</th>
                                    </tr>
                                    <c:forEach var="item" items="${history}" varStatus="status">
                                    <tr>
                                    <input type="hidden" name="resId" id="resId" value="<c:out value='${item.resourceId}'/>">
                                    <input type="hidden" name="histId" id="histId" value="<c:out value='${item.historyId}'/>">
                                        <td><c:out value="${item.sortationNm}"/></td>
                                        <td><c:out value="${item.contactName}"/></td>
                                        <td><c:out value="${item.changeHistory}"/></td>
                                        <td><c:out value="${item.changeDate}"/> <button class="img-del-btn" onclick="delHistory(${item.resourceId},${item.historyId});"></button>
                                        <c:if test="${item.sortationNm eq '수리필요'}"><button style="padding:5px; margin-left:15px;" onclick="approval();">결재</button></c:if>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                  </tbody>
                                </table>
                                <form action="/asset/uploadHistory" method="post">
                                <table class="defaultTable">
                                <input type="hidden" name="resourceId" id="resourceId"value="<c:out value='${asset.resourceId}'/>" >
                                <input type="hidden" name="historyId" id="historyId" value="<c:out value='${historyId.historyId}'/>">
                                <colgroup>
                                    <col width="10%" />
                                    <col width="10%" />
                                    <col width="60%" />
                                    <col width="20%" />
                                </colgroup>
                                <tr>
                                    <td>
                                    <input type="hidden" id="sortation" name="sortation" />
                                    <select id="gubun" name="gubun" onchange="selectChange(this.value);" style="width:80px;">
                                    <option>선택</option>
                                    <c:forEach var="code" items="${code}" varStatus="status">
                                    <option value="${code.code}">${code.codeNm}</option>
                                    </c:forEach>
                                    </select>
                                    </td>
                                    <input type="hidden" id="name" name="name" >
                                    <input type="hidden" name="contactEno" id="contactEno" >
                                    <td><input type="text" name="contactNm" id="contactNm" style="width:70%; text-align:center;" onchange="changeName(this.value);" readonly/><a href="javascript:popup_emp();"><img src="../images/image/btn-emp.png"/></a></td>
                                    <td><input type="text" name="changeHistory" id="changeHistory" style="width:80%;"/></td>
                                    <td><input type="date" name="changeDate" id="changeDate" style="width:110px;"/>
                                    <button class="writeBtn" style="padding:5px; margin-left:15px;" type="submit">입력</button></td>

                                </tr>
                                </table>
                                </form>
                  <div style="text-align:right;">
                  <button class="writeBtn" style="" onclick="modify(${asset.resourceId});">수정</button>
                  <button class="writeBtn" style="" onclick="goList();">목록</button>
                  </div>
                </div>
              </div>
            </section>
          </main>
        </div>
      </div>
    </body>
  </html>
