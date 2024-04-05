package com.saiha.saihaWeb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Slf4j
@RequestMapping("/introduce")
public class IntroduceController {
    @RequestMapping("/ceo")
    public String ceoPage(Model model) {
        return "introduce/ceo";
    }

    @RequestMapping("/history")
    public String historyPage(Model model) {
        return "introduce/history";
    }

    @RequestMapping("/organization")
    public String organizationPage(Model model) {
        return "introduce/organization";
    }

    @RequestMapping("/partner")
    public String partnerPage(Model model) {
        return "introduce/partner";
    }

    @RequestMapping("/map")
    public String mapPage(Model model) {

        return "introduce/map";
    }

}
