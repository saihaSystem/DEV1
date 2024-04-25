<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.saiha.saihaWeb.dto.*" %>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/js/management.js"></script>
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
   			<li><a href="javascript:"  class="on">학력</a></li>
            <li><a href="javascript:msg();">경력</a></li>
            <li><a href="javascript:msg();">자격증</a></li>
            <li><a href="javascript:msg();">교육</a></li>
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
   	<table class="tbl_form" summary="공지사항">
   		<caption></caption>
   		<colgroup>
   		<col width="15%" />
   		<col width="35%" />
   		<col width="15%" />
   		<col width="35%" />
   		</colgroup>
   		<tr>
   			<th>학교명</th>
   			<td><label>
   				<input class="scho_nm" type="text" name="scho_nm" maxlength="30" size="20" value="" />
   				<a href="javascript:search();"><img src="/images/bt_search.gif" alt="학교검색" style="cursor:hand"/></a>
   				<input type="hidden" class="scho_code" name="scho_code" value=""></label>
   			</td>
   			<th>졸업구분</th>
   			<td><label>
   				<select name='grad_div' class="grad_div" id="grad_div" style="height:22px" >
   					<option>-선택-</option>
   				</select></label>
   			</td>
   		</tr>
   		<tr>
   			<th>기간</th>
   			<td><label>
   				<input class="iyear" type="text" name="iyear" maxlength="4" size="4" value="" >년
   				<input class="imonth" type="text" name="imonth" maxlength="2" size="2" value="" >월 ~ <br>
   				<input class="oyear" type="text" name="oyear" maxlength="4" size="4" value="" >년
   				<input class="omonth" type="text" name="omonth" maxlength="2" size="2" value="" >월
   				<input type="hidden" name="enter_ymd">
   				<input type="hidden" name="graduation_ymd"></label>
   			</td>
   			<th>소재지</th>
   			<td><label>
   				<select name='locate' class="locate" id="locate" style="height:22px" >
   					<option>-선택-</option>
   				</select></label>
   			</td>
   		</tr>
   		<tr>
   			<th>전공</th>
   			<td><label>
   				<input class="major" type="text" name="major" maxlength="20" size="22" value="" ></label>
   			</td>
   			<th>부전공</th>
   			<td><label>
   				<input class="minor" type="text" name="minor" maxlength="20" size="22" value="" ></label>
   			</td>
   		</tr>
   		<tr>
   			<th>학위</th>
   			<td colspan="3"><label>
   				<select name='degree' class="degree" id="degree" style="height:22px" >
   					<option>-선택-</option>
   				</select></label>
   			</td>
   		</tr>
   	</table>
   	<table class="tbl_form" summary="공지사항">
   		<caption></caption>
   		<colgroup>
   		<col width="15%" />
   		<col width="85%" />
   		</colgroup>
   		<c:choose>
   		<c:when test="${fn:length(vlist) != 0}">
   		<tr >
   			<th rowspan="2">파일첨부</br><img src="/images/btn_filedel.gif" alt="파일첨부" bolder="0" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachDelForm.jsp?fn_nm=fm&fgubun=MOD', 'attachPopup', 400, 300, 'resizable=no');" /></th>
   			<td>


   			</td>
   	    </tr>

   		<tr>
   			<td>
   	                <img src="/images/btn_fileps.gif" alt="파일첨부" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachForm.jsp?fn_nm=fm&fgubun=ADD', 'attachPopup', 400, 300, 'resizable=no');" />
   			</td>
   	    </tr>
   	    </c:when>
   		<c:otherwise>
   		<tr>
   			<td>

   	                <img src="/images/btn_fileps.gif" alt="파일첨부" align="absmiddle" style="cursor:hand" onclick="javascript:fOpen('${pageContext.request.contextPath}/jsp/common/AttachForm.jsp?fn_nm=fm&fgubun=ADD', 'attachPopup', 400, 300, 'resizable=no');" />
   			</td>
   	    </tr>
   	    </c:otherwise>
   	    </c:choose>
   	</table>
   	<br><br>
   	<table class="board_list" summary="공지사항">
   		<caption></caption>
   		<colgroup>
   		<col width="5%" />
   		<col width="15%" />
   		<col width="10%" />
   		<col width="25%" />
   		<col width="15%" />
   		<col width="10%" />
   		<col width="10%" />
   		<col width="10%" />
   		</colgroup>
   		<tr>
   			<th>번호</th>
   			<th>학교명</th>
   			<th>소재지</th>
   			<th>입학일자~졸업일자</th>
   			<th>전공</th>
   			<th>부전공</th>
   			<th>학위</th>
   			<th>졸업구분</th>
   		</tr>
   		<c:choose>
   		   <c:when test="${fn:length(vlist) != 0 && vlist.get(0).SEQ ne '' && vlist.get(0).SEQ ne null}">
   		      <c:forEach var="item" items="${vlist}" varStatus="status">
   		         <tr align="center" onclick="viewDetail(${empty ml.get(0).ID ? '' : ml.get(0).ID},${empty item.SEQ ? '' : item.SEQ});" style="cursor: pointer;">
                    			<td align="center">${empty item.SEQ ? '' : item.SEQ}</td>
                    			<td align="center">${empty item.SCHOOL ? '' : item.SCHOOL}</td>
                    			<td align="center">${empty item.LOCATION ? '' : item.LOCATION}</td>
                    			<td align="center">${empty item.ENTER_Y ? '' : item.ENTER_Y}~${empty item.GRADUATION_Y ? '' : item.GRADUATION_Y}</td>
                    			<td align="center">${empty item.MAJOR ? '' : item.MAJOR}</td>
                    			<td align="center">${empty item.MINOR ? '' : item.MINOR}</td>
                    			<td align="center">${empty item.DEGREE ? '' : item.DEGREE}</td>
                    			<td align="center">${empty item.GRADUATION ? '' : item.GRADUATION}</td>
                 </tr>
              </c:forEach>
   		   </c:when>
   		   <c:otherwise>
                <tr>
                    <td align="center" colspan="8">조회된 데이터가 없습니다.</td>
                </tr>
   		   </c:otherwise>
   		</c:choose>
   	</table>
   	</div>
   	<!-- button -->
   		<p class="tbl_button">
            <a href="javascript:fnew();" class="butt" style="display:none;"><img src="/images/bt_new.gif" alt="저장"  /></a>
            <a href="javascript:Delete();" class="butt" style="display:none;"><img src="/images/bt_del.gif" alt="삭제" /></a>
   			<a href="javascript:regist();"><img src="/images/bt_regist.gif" alt="등록" /></a>
   			<a href="javascript:moveList();"><img src="/images/bt_cancel.gif" alt="취소" /></a>
   		</p>
     <!-- //button -->








</body>

</html>