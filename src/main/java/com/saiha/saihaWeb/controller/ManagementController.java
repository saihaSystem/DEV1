package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.dto.ManagementDTO;
import com.saiha.saihaWeb.service.CodeUtilService;
import com.saiha.saihaWeb.service.ManagementService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/management")
public class ManagementController {
    @Autowired
    ManagementService mo;
    @Autowired
    CodeUtilService codeUtilService;

    @GetMapping("")
    public String management(HttpServletRequest req){

        List<Map<String,Object>> vl = mo.select_contents_data("230230");

        req.setAttribute("ManagemantDTO", vl);

        System.out.println(vl.get(0).get("DEPT_CODE"));


        return "management/management";
    }

    @ResponseBody
    @PostMapping("/managementSelectAjax")
    public List<Map<Object,String>> managementSelectAjax(@RequestBody Map<String,String> body){
        List<Map<Object,String>> list = codeUtilService.getCodeList(body.get("cd_knd"), body.get("AddQuery"));
        return list;
    }

    @PutMapping("/d")
    public String managementUpdate(){
        return "management/management";
    }
}
