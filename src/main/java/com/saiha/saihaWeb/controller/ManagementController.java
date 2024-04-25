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
    @PostMapping("/managementEducationAjax")
    public List<Map<String,Object>> managementEducationAjax(@RequestBody Map<String,String> body,HttpServletRequest req){
        List<Map<String,Object>> list = mo.select_education_data(body.get("jumin"), body.get("seq"));
        return list;
    }

    @GetMapping("/management_ex2")
    public String management_ex2(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_career_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex2";
    }

    @ResponseBody
    @PostMapping("/managementCareerAjax")
    public List<Map<String,Object>> managementCareerAjax(@RequestBody Map<String,String> body,HttpServletRequest req){
        List<Map<String,Object>> list = mo.select_career_data(body.get("jumin"), body.get("seq"));
        return list;
    }

    @GetMapping("/management_ex3")
    public String management_ex3(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_license_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex3";
    }

    @ResponseBody
    @PostMapping("/managementLicenseAjax")
    public List<Map<String,Object>> managementLicenseAjax(@RequestBody Map<String,String> body,HttpServletRequest req){
        List<Map<String,Object>> list = mo.select_license_data(body.get("jumin"), body.get("seq"));
        return list;
    }


    @GetMapping("/management_ex4")
    public String management_ex4(HttpServletRequest req){

        String jumin = req.getParameter("juminNo");

        List<Map<String,Object>> vlist;
        vlist = mo.select_edu_list(jumin);
        List<Map<String,Object>> ml = mo.select_contents_data(req.getParameter("juminNo"));


        req.setAttribute("vlist", vlist);
        req.setAttribute("ml",ml);
        if (vlist.size() == 0){
            vlist.add(0,null);
        }

        return "management/management_ex4";
    }


    @ResponseBody
    @PostMapping("/managementEduAjax")
    public List<Map<String,Object>> managementEduAjax(@RequestBody Map<String,String> body,HttpServletRequest req){
        List<Map<String,Object>> list = mo.select_edu_data(body.get("jumin"), body.get("seq"));
        return list;
    }


    @PutMapping("/managementUpdate")
    public String managementUpdate(HttpServletRequest request){

        Map<String,String> map = new HashMap<>();

        map.put("","");

        mo.managementUpdate(map);

        return "management/management";
    }

    @PostMapping("/managementEducationUpdate")
    public String managementEducationUpdate(HttpServletRequest request){
        Map<String,String> map = new HashMap<>();
        System.out.println("ssss:   "+request.getParameter("enter_ymd"));

        map.put("ENTER_YMD",request.getParameter("enter_ymd"));
        map.put("GRADUATION_YMD",request.getParameter("graduation_ymd"));
        map.put("SCHOOL_CODE",request.getParameter("scho_code"));
        map.put("MAJOR",request.getParameter("major"));
        map.put("GRADUATION_CODE",request.getParameter("grad_div"));
        map.put("DEGREE_CODE",request.getParameter("degree"));
        map.put("LOCATION",request.getParameter("locate"));
        map.put("MINOR",request.getParameter("minor"));
        map.put("SCHOOL_NM",request.getParameter("scho_nm"));
        map.put("jumin",request.getParameter("jumin_no"));
        map.put("SEQ",request.getParameter("seq"));

        System.out.println(map);
        mo.managementEducationUpdate(map);


        return "management/management";
    }

    @PutMapping("/managementCareerUpdate")
    public String managementCareerUpdate(HttpServletRequest request){
        Map<String,String> map = new HashMap<>();

        map.put("ENTER_YMD",request.getParameter(""));
        map.put("GRADUATION_YMD",request.getParameter(""));
        map.put("SCHOOL_CODE",request.getParameter(""));
        map.put("MAJOR",request.getParameter(""));
        map.put("GRADUATION_CODE",request.getParameter(""));
        map.put("DEGREE_CODE",request.getParameter(""));
        map.put("LOCATION",request.getParameter(""));
        map.put("MINOR",request.getParameter(""));
        map.put("SCHOOL_NM",request.getParameter(""));
        map.put("jumin",request.getParameter(""));
        map.put("SEQ",request.getParameter(""));

        mo.managementCareerUpdate(map);


        return "management/management";
    }

    @PutMapping("/managementLicenseUpdate")
    public String managementLicenseUpdate(HttpServletRequest request){
        Map<String,String> map = new HashMap<>();

        map.put("","");

        mo.managementLicenseUpdate(map);


        return "management/management";
    }

    @PutMapping("/managementEduUpdate")
    public String managementEduUpdate(HttpServletRequest request){

        Map<String,String> map = new HashMap<>();

        map.put("","");

        mo.managementEduUpdate(map);

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
