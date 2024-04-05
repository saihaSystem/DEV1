package com.saiha.saihaWeb.controller;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@Slf4j
@RequestMapping("/service")
public class ServiceController {
    @RequestMapping("/sysIntegration")
    public String sysIntegrationPage(Model model) {

        return "service/sysIntegration";
    }
    @RequestMapping("/sysManagement")
    public String sysManagementPage(Model model) {

        return "service/sysManagement";
    }
    @RequestMapping("/sysSolution")
    public String sysSolutionPage(Model model) {

        return "service/sysSolution";
    }
    @RequestMapping("/rnd")
    public String rndPage(Model model) {

        return "service/rnd";
    }
}
