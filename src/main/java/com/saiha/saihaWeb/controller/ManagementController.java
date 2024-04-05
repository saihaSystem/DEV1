package com.saiha.saihaWeb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/management")
public class ManagementController {



    @RequestMapping("/")
    public String management(){
        return "management/management";
    }
}
