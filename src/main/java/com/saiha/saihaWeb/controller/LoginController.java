package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.service.LoginService;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@Controller
@Slf4j
@RequestMapping("/main")
public class LoginController {
    @RequestMapping("/login")
    public String mainPage(Model model) {
        return "login";
    }

//    @RequestMapping("login.do")
//    public String memberLogin(){
//
//    }
}
