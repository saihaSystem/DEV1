package com.saiha.saihaWeb.dto;


import com.saiha.saihaWeb.controller.Pagination;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class PagingDTO {
    private int page;             // 현재 페이지 번호
    private int recordSize;       // 페이지당 출력할 데이터 개수
    private int pageSize;         // 화면 하단에 출력할 페이지 사이즈
    private String keyword;       // 검색 키워드
    private String searchType;    // 검색 유형
    private Pagination pagination; //페이지네이션 정보
    private int pagenum;
    private boolean next; // 다음 버튼 활성화
    private boolean prev; // 이전 버튼 활성화

    public PagingDTO() {
        this.page = 1;
        this.recordSize = 5;
        this.pageSize = 10;
    }

    public PagingDTO(int page) {
        this.page = page;
        this.recordSize = 5;
        this.pageSize = 10;
    }
}
