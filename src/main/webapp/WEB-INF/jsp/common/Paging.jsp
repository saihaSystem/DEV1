<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String customScript = sps.utils.StringUtils.defaultString(""+ request.getAttribute("customScript"));

	int totalPageCount = (Integer.parseInt(tCount)-1) / 10 + 1;
	int currentPageNo = Integer.parseInt(cPage);
	int startGroupNo = ((currentPageNo - 1) / 10) * 10 + 1;
	int endGroupNo = startGroupNo + 9;

	if (endGroupNo > totalPageCount) {
		endGroupNo = totalPageCount;
	}

	if (currentPageNo > 1) {
		out.print("<a href=\"javascript:fGoLink('1')\" class='first'><img src='../images/image/paging_first.gif'/></a>");
	}

	if (currentPageNo > 10) {
		out.print("<a href=\"javascript:fGoLink('" +(startGroupNo-10)+ "')\"  class='prev'><img src='../images/image/paging_prev.gif'/></a>");
	}

    for (int i=startGroupNo; i<=endGroupNo ;i++) {
        if (i==currentPageNo) {
//20110514 LIJ PAGING SIZE CONTROL
        	out.print("<strong>&nbsp;"+i+"&nbsp;</strong>");
        } else {
			out.print("<a href=\"javascript:fGoLink('" +i+ "')\">&nbsp;"+i+"&nbsp;</a>");
        }
    }

    if (endGroupNo < totalPageCount) {
		out.print("<a href=\"javascript:fGoLink('" +(endGroupNo+1)+ "')\" class='next'><img src='../images/image/paging_next.gif' alt='이전' /></a>");
    }

	if (currentPageNo != totalPageCount) {
		out.print("<a href=\"javascript:fGoLink('"+totalPageCount+"')\" class='end'><img src='../images/image/paging_end.gif' alt='다음'/></a>");
	}
%>
<script type="text/javascript">
	var URL_BASE = '${pageContext.request.contextPath}' ;
    function fGoLink(page){
        <%=sps.utils.StringUtils.isEmpty(customScript)?"":customScript%> ;
        document.fm.action = URL_BASE +"<%=list%>";
        document.fm.cPage.value = page;
        document.fm.submit();
    }
</script>