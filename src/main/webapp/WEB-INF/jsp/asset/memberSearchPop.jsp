<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="ko">
<head>
</head>
<script src="/js/jquery-3.5.1.min.js"></script>
<script src="/js/common.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    $('.searchStaff').on('click', function(){
        var data = {}
        data['memberName'] = $('#memberName').val()
        $.ajax({
            url: 'searchStaffAjax',
            type: "POST",
            data: JSON.stringify(data),
            dataType: "JSON",
            contentType: "application/json",
            accept: "application/json",
            success: function(result) {
                console.log(result)
                if(result.size != 0 ) {
                    result.forEach(function (el, index) {
                        var option = '<li style="list-style-type: none;"><div class="box_head">'
                        option += '<input type="radio" name="rd" id="rd'+index+'" data-code="'+el.ID+'" /><label for="rd'+index+'">'+el.NAME+'</label></div>'
                        option += '</li>'
                        $('.box_list').append(option)
                });
                } else {

                }
            },
            error: function(result) {
            }
        });
    });
});

function goSubmit() {
    var name = $('input[name=rd]:checked').next().text()

    if(name!="") {
        opener.location.href = "javascript:memberReload('"+name+"');"
        window.close()
    } else {
        alert("선택해주세요")
    }
}

</script>

<body>

<div class="wrapper">
    <div class="section">
        <label class="tf_t" for="memberName">이름</label>
        <input type="text" class="tf" id="memberName" placeholder="이름을 입력하세요">

        <button type="button" class="searchStaff">검색</button>
    </div>

    <ul class="box_list">

    </ul>

</div>

<div>
    <button onclick="goSubmit()">등록</button>
    <button onclick="window.close()">닫기</button>
</div>

</body>
</html>