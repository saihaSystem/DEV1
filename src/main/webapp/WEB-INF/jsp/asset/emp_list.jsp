<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
    $('.searchStaff').on('click', function(){
        var data = {};
        data['memberName'] = $('#memberName').val();
        $.ajax({
            url: 'searchStaffAjax',
            type: "POST",
            data: JSON.stringify(data),
            dataType: "JSON",
            contentType: "application/json",
            success: function(result) {
                console.log(result);
                $('.box_list').empty();
                if(result.length != 0) {
                    result.forEach(function (staff) {
                        var row = '<tr name="rd" onclick="send(\'' + staff.ID + '\', \'' + staff.NAME + '\')" style="cursor:pointer;">' +
                                      '<td>' + staff.ID + '</td>' +
                                      '<td>' + staff.NAME + '</td>' +
                                  '</tr>';
                        $('.box_list').append(row);
                    });
                } else {

                }
            },
            error: function(error) {
                console.error("Error:", error);
            }
        });
    });
});

function send(empNo,empNm){
    opener.document.getElementById('contactEno').value=empNo;
    opener.document.getElementById('name').value=empNm;
    opener.document.getElementById('contactNm').value=empNm;
    this.close();
}
</script>
<html lang="ko">
<head>
<title>담당자 조회</title>
</head>
<body>

<caption style="text-align:center;"><h3 style="text-align:center;">담당자 조회</h3></caption>
<colgroup>
<form action="/asset/empList">
<div class="assetSearchGroup" style="text-align:center;">
  이름 :  <input type="text" name="memberName" id="memberName" style="width:30%" class="noticeSearchInput">
  <button class="searchStaff" type="button">검색</button>
</div>
</form>


<table class="defaultTable">
    <thead>
    <tr>
        <th>사번</th>
        <th>이름</th>
    </tr>
    </thead>
    <tbody class="box_list">
        <c:forEach var="item" items="${emp}" varStatus="status">
            <tr onclick="send('${item.id}','${item.name}')" style="cursor:pointer;">
                <td>${item.id}</td>
                <td>${item.name}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>