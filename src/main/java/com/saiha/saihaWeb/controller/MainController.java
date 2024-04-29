package com.saiha.saihaWeb.controller;


import com.saiha.saihaWeb.service.BoardService;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;


@Controller
@Slf4j
@RequestMapping("/")
public class MainController {

    @Autowired
    BoardService boardService;

    @RequestMapping("/")
    public String mainPage(Model model) {
        Map<String, Object> param = new HashMap<>();

        // 새하 알리미
        param.put("brdGubun", "00");
        model.addAttribute("noticeList", boardService.selectNoticeBoard(param));


        // 포토
        param.put("brdGubun", "77");
        model.addAttribute("photoList", boardService.selectGalleryBoard(param));


        System.out.println("test");

        return "main.tiles";
    }
}
