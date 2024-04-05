package com.saiha.saihaWeb.mapper;

import com.saiha.saihaWeb.dto.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {
    List<BoardDTO> selectNoticeBoard(Map<String, Object> param);
}
