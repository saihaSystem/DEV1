<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.saiha.saihaWeb.dto.*" %>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

</script>
<html lang="ko">

  <style>
  .staff_tab{
     margin-top:50px;
     text-align: center;
     height: 100px;
     font-size: 30px;
     word-spacing:30px;
  }
  </style>

<body>
   <div class="tbl_form_wrap">
   	<div class="staff_tab">
   		<ul>
   			<li><a href="javascript:msg('management');">기본</a></li>
   			<li><a href="javascript:msg('education');">학력</a></li>
            <li><a href="javascript:void(0)" class="on">경력</a></li>
            <li><a href="javascript:msg('license');">자격증</a></li>
            <li><a href="javascript:msg('edu');">교육</a></li>
   		</ul>
   	</div>

   	<table class="tbl_form" border="1" cellspacing="0" summary="">
    		<colgroup>
    		<col width="15%" />
    		<col width="35%" />
    		<col width="15%" />
    		<col width="35%" />
    		</colgroup>
    		<tr>
                <th>사번</th>
                <td>${empty ml.get(0).ID ? '' : ml.get(0).ID}</td>
                <input type="hidden" name="jumin_no" class="jumin_no" value=${ml.get(0).ID}>
                <th>이름</th>
                <td>${empty ml.get(0).KOR_NAME ? '' : ml.get(0).KOR_NAME}</td>
    		</tr>
    	</table>
    	<table class="tbl_form" summary="경력사항">
    		<caption></caption>
    		<colgroup>
    		<col width="15%" />
    		<col width="35%" />
    		<col width="15%" />
    		<col width="35%" />
    		</colgroup>
    		<tr>
    			<th>회사명</th>
    			<td><label><input class="dept_nm" type="text" name="dept_nm" maxlength="15" size="20" value=""></label></td>
    			<th>기간</th>
    			<td><label>
    				<input class="date1" type="text" id="date1" name="date1" size="10" maxlength="10" onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)" value="">
    				<img src="/images/Calendar.gif" alt="시작일자" border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('date1'));" style="cursor: pointer;" /> ~
    				<input class="date2" type="text" id="date2" name="date2" size="10" maxlength="10" onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)" value="">
    				<img src="/images/Calendar.gif" alt="종료일자" border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('date2'));" style="cursor: pointer;" /></label>
    			</td>
    		</tr>
    		<tr>
    			<th>직위</th>
    			<td><label>
    				<input class="position" type="text" name="position" maxlength="10" size="20" value=""></label>
    			</td>
    			<th>직책</th>
    			<td><label>
    				<input class="one_duty" type="text" name="one_duty" maxlength="10" size="20" value="">
    				<input class="career_step" type="hidden" name="career_step" maxlength="10" size="20" value=""></label>
    			</td>
    		</tr>
    	</table>
    	<table class="tbl_form" summary="경력사항">
    		<caption></caption>
    		<colgroup>
    		<col width="15%" />
    		<col width="85%" />
    		</colgroup>
   	     	<c:choose>
   	     	<c:when test="${fn:length(vlist) != 0}">
    		<tr >
    			<th rowspan="2">파일첨부</br><img src="/images/btn_filedel.gif" bolder="0" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachDelForm.jsp?fn_nm=fm&fgubun=MOD', 'attachPopup', 400, 300, 'resizable=no');" /></th>
    			<td><label></label>

    			</td>
    	    </tr>

    		<tr>
    			<td><label></label>
    	                <img src="/images/btn_fileps.gif" alt="파일첨부" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachForm.jsp?fn_nm=fm&fgubun=ADD', 'attachPopup', 400, 300, 'resizable=no');" />
    			</td>
    	    </tr>
            </c:when>
       		<c:otherwise>
    		<th>파일첨부</th>
    			<td><label></label>
    	                <img src="/images/btn_fileps.gif" alt="파일첨부" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachForm.jsp?fn_nm=fm&fgubun=ADD', 'attachPopup', 400, 300, 'resizable=no');" />
    			</td>
    	    </tr>
   	    </c:otherwise>
   	    </c:choose>
    	</table>
    	<br><br>
    	<table class="board_list" summary="경력사항">
    		<caption></caption>
    		<colgroup>
    		<col width="5%" />
    		<col width="20%" />
    		<col width="35%" />
    		<col width="20%" />
    		<col width="20%" />
    		</colgroup>
    		<tr>
    			<th>번호</th>
    			<th>회사명</th>
    			<th>입사일~퇴사일</th>
    			<th>직위</th>
    			<th>직책</th>
    		</tr>
    		<c:choose>
               <c:when test="${fn:length(vlist) != 0 && vlist.get(0).CAREER_STEP ne '' && vlist.get(0).CAREER_STEP ne null}">
                  <c:forEach var="item" items="${vlist}" varStatus="status">
                     <tr align="center" onclick="viewDetail2(${empty ml.get(0).ID ? '' : ml.get(0).ID},${empty item.CAREER_STEP ? '' : item.CAREER_STEP});" style="cursor: pointer;">
                                    <td align="center">${empty item.CAREER_STEP ? '' : item.CAREER_STEP}</td>
                                    <td align="center">${empty item.DEPT_NM ? '' : item.DEPT_NM}</td>
                                    <td align="center">${empty item.JOIN_YMD ? '' : item.JOIN_YMD}~${empty item.LEAVE_YMD ? '' : item.LEAVE_YMD}</td>
                                    <td align="center">${empty item.POSITION ? '' : item.POSITION}</td>
                                    <td align="center">${empty item.ONE_DUTY ? '' : item.ONE_DUTY}</td>
                     </tr>
                  </c:forEach>
               </c:when>
               <c:otherwise>
                    <tr>
                        <td align="center" colspan="5">조회된 데이터가 없습니다.</td>
                    </tr>
               </c:otherwise>
            </c:choose>
    	</table>
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    		<tr>
    			<td align="right">
    				<tiles:insert page="/jsp/common/calendarframe.jsp" flush="true" />
    			</td>
    		</tr>
    	</table>
    </div>
   	<!-- button -->
   		<p class="tbl_button">
            <a href="javascript:fnew();" class="butt2" style="display:none;"><img src="/images/bt_new.gif" alt="저장"  /></a>
            <a href="javascript:Delete();" class="butt2" style="display:none;"><img src="/images/bt_del.gif" alt="삭제" /></a>
   			<a href="javascript:regist(2);"><img src="/images/bt_regist.gif" alt="등록" /></a>
   			<a href="javascript:moveList();"><img src="/images/bt_cancel.gif" alt="취소" /></a>
   		</p>
     <!-- //button -->








</body>

</html>