package com.saiha.saihaWeb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/human")
public class HumanController {

    @RequestMapping("/human")
    public String human(Model model) {
        return "human/human.tiles";
    }

    @RequestMapping("/environment")
    public String environment(Model model) {
        return "human/environment.tiles";
    }

    @RequestMapping("/ethics")
    public String ethics(Model model) {
        return "human/ethics.tiles";
    }

    @RequestMapping("/esg")
    public String esg(Model model) {
        return "human/esg.tiles";
    }

}
