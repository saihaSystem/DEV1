package com.saiha.saihaWeb.controller;


import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@Slf4j
@RequestMapping("/")
public class MainController {

    @RequestMapping("/")
    public String mainPage(Model model) {
        return "main";
    }
}
