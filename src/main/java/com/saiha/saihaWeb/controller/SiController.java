package com.saiha.saihaWeb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/si")
public class SiController {

    @RequestMapping("/si")
    public String si(Model model) {
        return "si/si.tiles";
    }

    @RequestMapping("/outsourcing")
    public String outsourcing(Model model) {
        return "si/outsourcing.tiles";
    }
}
