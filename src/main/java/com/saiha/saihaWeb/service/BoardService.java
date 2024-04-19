package com.saiha.saihaWeb.service;


import com.saiha.saihaWeb.dto.BoardDTO;
import com.saiha.saihaWeb.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardService {

    @Autowired
    BoardMapper boardMapper;

    public List<BoardDTO> selectNoticeBoard(Map<String, Object> param) {

        return boardMapper.selectNoticeBoard(param);
    }



    public int boardCount(Map<String, Object> param){

        return boardMapper.boardCount(param);
    }
}
