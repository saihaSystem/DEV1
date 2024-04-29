package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.service.AssetService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/manageInfo")
public class ManageController {
    @Autowired
    AssetService assetService;
    @RequestMapping("/insa")
    public String insaPage(Model model){
        return "manageInfo/insa.tiles";
    }
    @RequestMapping("/asset")
    public String asset(Model model, @RequestParam Map<String,Object> map){
       // System.out.println("map >>"+map);
        model.addAttribute("assetList", assetService.selectAssetList(map));
        return "asset/asset_list.tiles";
    }
}

