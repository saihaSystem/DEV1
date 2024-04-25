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
import java.util.ArrayList;
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


    @GetMapping("/management")
    public String management(HttpServletRequest req){



        List<Map<String,Object>> vl = mo.select_contents_data(req.getParameter("juminNo"));

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

    @GetMapping("/management_ex")
    public String management_ex(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_education_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex";
    }

    @ResponseBody
    @PostMapping("/managementEduAjax")
    public List<Map<String,Object>> managementEduAjax(@RequestBody Map<String,String> body,HttpServletRequest req){
        List<Map<String,Object>> list = mo.select_education_data(body.get("jumin"), body.get("seq"));
        if (list.size() > 0) {
            req.setAttribute("idu2", "U");
        }

        return list;
    }

    @GetMapping("/management_ex2")
    public String management_ex2(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_education_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex2";
    }

    @GetMapping("/management_ex3")
    public String management_ex3(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_education_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex3";
    }
    @GetMapping("/management_ex4")
    public String management_ex4(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_education_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex4";
    }


    @PutMapping("/d")
    public String managementUpdate(){
        return "management/management";
    }

    // AJAX
    @ResponseBody
    @PostMapping("/pagination")
    public List<BoardDTO> pagination(@RequestBody Map<String,Object> param, Model model) {
        pagingDTO = new PagingDTO((Integer) param.get("page"));

        Pagination pagination = new Pagination(boardService.boardCount(param), pagingDTO);

        List<BoardDTO> selectNoticeBoard = null;
        model.addAttribute("boardList", selectNoticeBoard);
        model.addAttribute("pagination", pagination);

        selectNoticeBoard = boardService.selectNoticeBoard(param);

        return boardService.selectNoticeBoard(param);
    }

    @RequestMapping("/insa") //인사관리 목록페이지
    public String insaPage(Model model , @RequestParam Map<String,Object> params) {

        if(params.get("page") != null) {
            pagingDTO = new PagingDTO(Integer.parseInt(params.get("page").toString()));
        } else {
            pagingDTO = new PagingDTO();
            params.put("page",1);
        }

        Pagination pagination2 = new Pagination(managementService.insaCount(params),pagingDTO);

        List<ManagementDTO> selectInsa = managementService.selectInsa(params);
        model.addAttribute("insaList",selectInsa);
        model.addAttribute("pagination",pagination2);

            return "management/insa";
    }



}
