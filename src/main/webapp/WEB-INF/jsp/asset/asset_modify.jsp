<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<html lang="ko">
<head>
</head>
<!--<script src="/js/calendar/calendar.js"></script>-->
<!--<script src="/js/calendar/common.js"></script>-->
<script src="/js/jquery-3.5.1.min.js"></script>
<script src="/js/common.js"></script>

<style>
th{
background-color:#f5f8fa;
color: #164da0;
}
</style>
<script type="text/javascript">
    var openWin;

    function openPop() {
        window.name = "/asset/assetModify";
        openWin = window.open('/asset/empList','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');
    }

    function memberReload(name) {
        name = name
        document.getElementById("name").value = name
    }

    function doModify() {
        if($('#assetNo1').val()=="") {
            alert("1번째 자산번호 필수 입력항목입니다")
            return false;
        } else if($('#assetNo2').val()=="") {
            alert("2번째 자산번호 필수 입력항목입니다")
            return false;
        } else if($('#assetNo3').val()=="") {
            alert("3번째 자산번호 필수 입력항목입니다")
            return false;
        } else if($('#model').val()=="") {
            alert("모델명 필수 입력항목입니다")
            return false;
        } else if($('#buyDate').val()=="") {
            alert("구입년월 필수 입력항목입니다")
            return false;
        }
        $('#assetMod').submit()
    }

    function goList() {
        location.href = "/asset/asset";
    }
</script>
<body>
<div id="wrapper">
    <div id="container">
        <div class="subVisual customer notice"></div>
        <div class="subNav">
            <ul>
                <li><a href="">인사관리</a></li>
                <li><a href="/asset/assetList" class="active">자산관리</a></li>
            </ul>
        </div>
        <main>
            <section class="contentDefault">
                <h1 class="subContentTitle">자산관리</h1>
                <h3 class="subContentTitleDesc">
                    새하정보시스템은 정보시스템 구축전문 기업입니다.
                </h3>

        <div class="subContent">
            <form name="assetMod" id="assetMod" method="post" action="assetMod.do">
                <table class="defaultTable">
                    <colgroup>
                        <col width="12%">
                        <col width="24%">
                        <col width="12%">
                        <col width="20%">
                        <col width="12%">
                        <col width="20%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th>자산번호</th>
                        <td>
                            <input type="hidden" id="resourceId" name="resourceId" value="${asset.resourceId}">
                            <input type="hidden" id="assetNo" name="assetNo" value="${asset.assetNo}">
                            <input type="text" title="자산번호1" id="assetNo1" name="assetNo1" value="${fn:split(asset.assetNo,'-')[0]}" style="width: 50px;">-
                            <input type="number" title="자산번호2" id="assetNo2" name="assetNo2" value="${fn:split(asset.assetNo,'-')[1]}" min="2000" max="2050" maxlength="4" style="width: 50px;" onblur="inputNumberPad(this, 4);" required="required">-
                            <input type="text" title="자산번호3" id="assetNo3" name="assetNo3" value="${fn:split(asset.assetNo,'-')[2]}"maxlength="3" min="001" max="999" style="width: 50px;" onblur="inputNumberPad(this, 3);">
                        </td>
                        <th>담당자</th>
                        <td>
                            <input type="hidden" id="contactNm" name="contactNm">
                            <input type="hidden" id="contactEno" name="contactEno" value="<c:out value='${asset.eno}'/>">
                            <input class="input01" id="name" title="담당자" type="text" name="name" maxlength="8" size="" style="width: 70px;"
                             value="<c:out value='${asset.name}'/>" readonly>
                            <button type="button" onclick="openPop();">검색</button>
                        </td>
                        <th>구입년월</th>
                        <td>
                            <input title="구입년월" type="date" id="buyDate" name="buyDate" style="width:30%" value="<c:out value='${asset.buyDate}'/>" required>
                        </td>
                    </tr>
                    <tr>
                        <th>자산종류</th>
                        <td>
                            <input type="hidden" id="ndKind" name="ndKind" value="${asset.ndKind}" >
                            <select name="nd_kind" class="input01" title="자산종류" style="height:22px">
                               <option>-선택-</option>
                               <c:forEach var="code" items="${PC1code}" varStatus="status">
                               <option value="${code.code}" <c:if test="${asset.ndKind eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                               </c:forEach>
                            </select>
                        </td>
                        <th>내외구분</th>
                        <td colspan="3">
                            <select name="gubun" class="input01" title="내외구분" style="height:22px;">
                                <option value="">-선택-</option>
                                <c:forEach var="code" items="${PG1code}" varStatus="status">
                               <option value="${code.code}" <c:if test="${asset.gubun eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                               </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>모델명</th>
                            <td>
                                <input class="input01" type="text" name="model" title="모델명" id="model" size="30" value="<c:out value='${asset.model}'/>" >
                            </td>
                        <th>Serial</th>
                            <td colspan="3">
                                <input class="input01" type="text" title="s/n" name="serial" maxlength="100" size="40" value="<c:out value='${asset.serial}'/>">
                            </td>
                    </tr>
                    <tr>
                        <th>용도</th>
                        <td>
                            <select name="resUseType" class="input01" title="용도" style="height:22px">
                               <option value="">-선택-</option>
                               <c:forEach var="code" items="${RVTcode}" varStatus="status">
                              <option value="${code.code}" <c:if test="${asset.resUesType eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                              </c:forEach>
                            </select>
                        </td>
                        <th>신구자료구분</th>
                        <td colspan="3">
                            <select name="dataFlag" class="input01" title="신구구분" style="height:22px; width: 90%;">
                               <option value="">-선택-</option>
                                 <c:forEach var="code" items="${PC3code}" varStatus="status">
                                <option value="${code.code}" <c:if test="${asset.dataFlag eq code.code}">selected="selected"</c:if>>${code.codeNm}</option>
                                </c:forEach>
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <th>상세 Spec</th>
                        <td colspan="5"><textarea title="상세내용" rows="5" cols="70" name="spec" style="width:98%; height:50px;" class="input01"><c:out value="${asset.spec}"/></textarea></td>
                    </tr>
                    <tr>
                        <th>소모품</th>
                        <td colspan="5"><textarea title="소모품" rows="5" cols="70" name="consum"  style="width:98%; height:50px;" class="input01"><c:out value="${asset.consum}"/></textarea></td>
                    </tr>
                    <tr>
                        <th>기타</th>
                        <td colspan="5"><textarea title="기타" rows="5" cols="70" name="etc" style="width:98%; height:50px;" class="input01"><c:out value="${asset.etc}"/></textarea></td>
                    </tr>
                    <tr>
                        <th>파일첨부</th>
                        <td colspan="5">

                            <!-- <textarea name="txt_file_nm" rows='' readonly style="WIDTH: 528 ; border:0 solid #fffff; "></textarea> -->
                            <input type="text" class="input01" name="txt_file_nmADD" readonly="" value="" size="68" title="파일첨부">
                            <input type="hidden" name="save_file_nmADD" value=""><!-- DB 등록 대상 저장파일명  -->
                            <input type="hidden" name="file_nmADD" value=""><!-- DB 등록 대상 파일명  -->
                            <input type="hidden" name="file_pathADD" value=""><!-- DB 등록 대상 파일경로  -->
                            <input type="hidden" name="file_sizeADD" value=""><!-- DB 등록 대상 파일크기  -->
                            <input type="hidden" name="ifile_idADD" value="HU_SYST"> <!-- 첨부 서브시스템 ID -->
                            <input type="hidden" name="ifile_tnmADD" value="HU_SYST02"><!-- 첨부 테이블 명 -->
                            <input type="hidden" name="fgubun" value="ADD">
                            <button>파일첨부</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>

            <div style="text-align:right;">
                <button class="writeBtn" onclick="doModify();">등록</button>
                <button class="writeBtn" onclick="goList();">취소</button>
            </div>
            </section>
        </main>
        </div>
    </div>
</div>


</body>
</html>