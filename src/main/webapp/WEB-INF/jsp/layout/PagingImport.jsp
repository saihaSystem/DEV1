<div class="paginationGroup">
    <div class="pagination">
      <ul>
            <li><a href="asset?page=1" class="firstBtn"></a></li>
            <li><a href="${param.page lt pagination.startPage ? 'asset?page=' += (param.page-1) : 'javascript:void(0);' }" class="prevBtn"></a></li>
            <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                <li><a href="javascript:goView(${i})" <c:if test ="${i eq param.page}">class="active"</c:if> >${i}</a></li>
            </c:forEach>
            <li><a href="${param.page lt pagination.endPage ? 'asset?page=' += (param.page+1) : 'javascript:void(0);' }" class="nextBtn"></a></li>
            <li><a href="asset?page=${pagination.totalPageCount}" class="lastBtn"></a></li>
      </ul>
    </div>
</div>