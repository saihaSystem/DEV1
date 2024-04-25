package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.dto.BoardDTO;
import com.saiha.saihaWeb.dto.ManagementDTO;
import com.saiha.saihaWeb.dto.PagingDTO;
import com.saiha.saihaWeb.service.BoardService;
import com.saiha.saihaWeb.service.CodeUtilService;
import com.saiha.saihaWeb.service.ManagementService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
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
    @Autowired
    BoardService boardService;

    PagingDTO pagingDTO;
    @Autowired
    ManagementService managementService;

    Map<String,Object> params = new HashMap<>();


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

    // AJAX
    @ResponseBody
    @PostMapping("/pagination")
    public List<ManagementDTO> pagination(@RequestBody Map<String,Object> param, Model model) {
        pagingDTO = new PagingDTO((Integer) param.get("page"));

        Pagination pagination = new Pagination(managementService.insaCount(params),pagingDTO);


        List<ManagementDTO> selectInsa = null;
        model.addAttribute("insaList", selectInsa);
        model.addAttribute("pagination", pagination);
        selectInsa = managementService.selectInsa(param);

        return managementService.selectInsa(param);
    }

    @RequestMapping("/insa") //인사관리 목록페이지
    public String insaPage(Model model , @RequestParam Map<String,Object> params) {


        if(params.get("page") != null) {
            pagingDTO = new PagingDTO(Integer.parseInt(params.get("page").toString()));
        } else {
            pagingDTO = new PagingDTO();
            params.put("page",1);
        }

        params.put("pagemax",pagingDTO.getRecordSize());

        Pagination pagination = new Pagination(managementService.insaCount(params),pagingDTO);

        List<ManagementDTO> selectInsa = managementService.selectInsa(params);
        model.addAttribute("insaList",selectInsa);
        model.addAttribute("pagination",pagination);

        return "management/insa";
    }

    /* 인사관리 목록 페이지 검색필터*/
    @GetMapping("/searchFilter.do")
    public String searchFilter(@RequestParam Map<String,Object> params,Model model) {

        return "inoutRequest/modify/searchFilter";
    }




}
