package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.service.BoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    BoardService boardService;

    @RequestMapping("/notice")
    public String notice(Model model, @RequestParam Map<String, Object> map) {

        map.put("brdGubun", "00");

        System.out.println(map);

        model.addAttribute("boardList", boardService.selectNoticeBoard(map));
        model.addAttribute("boardListCnt", boardService.selectNoticeBoardCnt(map));

        return "notice/notice.tiles";
    }


    @RequestMapping("/qna")
    public String qna(Model model) {

        return "notice/qna.tiles";
    }

    @RequestMapping("/contact")
    public String contact(Model model) {

        return "notice/contact.tiles";
    }

    @RequestMapping("/photo")
    public String photo(Model model) {

        return "notice/photo.tiles";
    }


}
