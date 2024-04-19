<%
/**********************************************************************
 * SITE          :  새하정보시스템
 * PROJECT       :  홈페이지
 * PROGRAM ID    :  calendarframe.jsp
 * DESCRIPTION   :
 * PROGRAMMER    : 이름변경@saiha.co.kr (2018. 9. 18.)
 * --------------------------------------------------------------------
 * J2EE Env    	  : JavaSE 5(1.6.0_45), JavaEE 5(����2.5 , JSP2.1)
 * Tool Env       : Eclipse 4.3(Kepler), Tomcat 7.0.88, VisualSVN 3.7.1
 * Encoding/space : EUC-KR (MS949) , ts=4
 **********************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>

<!-- CalendarFrame body -->
<script type="text/javascript" src="/js/Calendar/common.js"></script>
<div id="CalendarLayer" style="display:none; width:172px; height:180px;">
<iframe name="CalendarFrame" src="/js/Calendar/calendar.jsp" width="172" height="180" border="0" frameborder="0" scrolling="no" title="캘린더"></iframe>
</div>
<!-- CalendarFrame end -->
