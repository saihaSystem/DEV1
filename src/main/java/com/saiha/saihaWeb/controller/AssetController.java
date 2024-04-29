package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.dto.AssetDTO;
import com.saiha.saihaWeb.dto.PagingDTO;
import com.saiha.saihaWeb.service.AssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/asset")
public class AssetController {
    @Autowired
    AssetService assetService;
    PagingDTO pagingDTO;
    @RequestMapping("/insa")
    public String insaPage(Model model){
        return "manageInfo/insa.tiles";
    }

    @ResponseBody
    @RequestMapping("/pagination")
    public List<AssetDTO> pagination(@RequestBody Map<String,Object> map, Model model, HttpServletRequest request) {
        pagingDTO = new PagingDTO((Integer) map.get("page"));
//        map.put("ndKind", request.getParameter("ndkind"));
//        map.put("gubun", request.getParameter("gubun"));
//        map.put("resUseType", request.getParameter("resUseType"));
//        map.put("startDate", request.getParameter("startDate"));
//        map.put("endDate", request.getParameter("endDate"));
//        map.put("dataFlag", request.getParameter("dataFlag"));
//        map.put("selType", request.getParameter("selType"));
//        map.put("selStr", request.getParameter("selStr"));
//        System.out.println("paginatin map >>>>"+map);
        Pagination pagination = new Pagination(assetService.assetCount(map), pagingDTO);

        List<AssetDTO> selectAssetList = null;
        model.addAttribute("assetList", selectAssetList);
        model.addAttribute("pagination", pagination);

        selectAssetList = assetService.selectAssetList(map);

        return assetService.selectAssetList(map);
    }
    @RequestMapping("/asset")
    public String assetList(Model model, @RequestParam Map<String,Object> map, HttpServletRequest request, HttpServletResponse response){
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        if(map.get("page") != null) {
            pagingDTO = new PagingDTO(Integer.parseInt(map.get("page").toString()));
        } else {
            pagingDTO = new PagingDTO(1);
            map.put("page",1);
        }

//        map.put("ndKind", request.getParameter("ndKind"));
//        map.put("gubun", request.getParameter("gubun"));
//        map.put("resUseType", request.getParameter("resUseType"));
//        map.put("startDate", request.getParameter("startDate"));
//        map.put("endDate", request.getParameter("endDate"));
//        map.put("dataFlag", request.getParameter("dataFlag"));
//        map.put("selType", request.getParameter("selType"));
//        map.put("selStr", request.getParameter("selStr"));
//        System.out.println("map >>>>"+map);
        model.addAttribute("PC1code",assetService.PC1GubunCode());
        model.addAttribute("PG1code",assetService.PG1GubunCode());
        model.addAttribute("RVTcode",assetService.RVTGubunCode());
        model.addAttribute("PC3code",assetService.PC3GubunCode());
        System.out.println("count : "+assetService.assetCount(map));
        Pagination pagination2 = new Pagination(assetService.assetCount(map),pagingDTO);
        model.addAttribute("assetList", assetService.selectAssetList(map));
        //System.out.println("selectAssetList >> "+assetService.selectAssetList(map));
        model.addAttribute("pagination",pagination2);

        return "asset/asset_list.tiles";
    }

    @RequestMapping("/assetDetail")
    public String assetDetail(Model model, @RequestParam("resourceId") String resourceId) throws Exception{
        model.addAttribute("asset", assetService.selectAssetDetail(resourceId));
        model.addAttribute("history", assetService.selectAssetHistory(resourceId));
        model.addAttribute("code",assetService.HistoryGubunCode());
        model.addAttribute("historyId",assetService.SelectHistoryId(resourceId));
        return "asset/asset_detail.tiles";
    }
    @RequestMapping("/empList")
    public String SelectSabun(Model model, String searchNm) throws  Exception {
        if (searchNm == null) {
            model.addAttribute("emp", assetService.SelectSabun());
            return "asset/emp_list.tiles";
        } else {
            model.addAttribute("emp", assetService.SelectSearchSabun(searchNm));
            System.out.println("searchEmp>> "+assetService.SelectSearchSabun(searchNm));
            return "asset/emp_list.tiles";
        }
    }
    @RequestMapping("/uploadHistory")
    public  String insertHistory(AssetDTO assetDTO, HttpServletRequest request){

        assetService.insertHistory(assetDTO);
        request.setAttribute("msg","변동내역을 등록하였습니다.");
        request.setAttribute("url","/asset/assetDetail?resourceId="+assetDTO.getResourceId());
        //return  "redirect:/asset/assetDetail?resourceId="+assetDTO.getResourceId();
        return "common/alert.tiles";
    }
    @RequestMapping("/delHistory")
    public String delHistory(String resourceId, String historyId, HttpServletRequest request){
        assetService.delHistory(resourceId,historyId);
        request.setAttribute("msg","변동내역을 삭제하였습니다.");
        request.setAttribute("url","/asset/assetDetail?resourceId="+resourceId);
        //return "redirect:/asset/assetDetail?resourceId="+resourceId;
        return "common/alert.tiles";
    }

    @RequestMapping("/assetWrite")
    public String assetWrite(Model model) {
        return "asset/assetWrite.tiles";
    }
    @RequestMapping("/memberSearchPop")
    public String memberSearchPop() {
        return "asset/memberSearchPop";
    }
    @ResponseBody
    @PostMapping("/searchStaffAjax")
    public List<Map<String, Object>> searchStaff(@RequestBody Map<String, Object> body) {
        System.out.println("body>> " + body);
        return assetService.selectSearchStaff(body);
    }
    @PostMapping("/insertPc.do")
    public String registerPc(HttpServletRequest request) {

        HashMap<String, Object> map = new HashMap<>();
        map.put("assetNo", request.getParameter("assetNo1") + "-" + request.getParameter("assetNo2") + "-" + request.getParameter("assetNo3"));     //자산번호
        map.put("buyDate", request.getParameter("buyDate").toString().replaceAll("-","")+" 00:00:00");    //구입년월
        map.put("model", request.getParameter("model"));                //모델명
        map.put("serial", request.getParameter("serial"));              //시리얼넘버
        map.put("name", request.getParameter("name"));                  //담당자명
        map.put("ndKind", request.getParameter("ndKind"));             // 자산종류
        map.put("resUseType", request.getParameter("resUseType"));    //용도
        map.put("resourceType", "01");     ///??
        map.put("dataFlag", request.getParameter("dataFlag"));          //신자료구자료 구분
        map.put("flag", "T");                                                   // 삭제여부
        map.put("gubun", request.getParameter("gubun"));                // 구분
        map.put("spec", request.getParameter("spec"));
        map.put("consum", request.getParameter("consum"));              //소모품
        map.put("etc", request.getParameter("etc"));
        map.put("hasFileYn", request.getParameter("hasFileYn"));        //첨부여부
        map.put("contactNm", request.getParameter("contactNm"));
        map.put("contactEno", request.getParameter("contactEno"));
        System.out.println(request.getParameter("assetNo1"));
        System.out.println(request.getParameter("assetNo2"));
        System.out.println(request.getParameter("assetNo3"));

        System.out.println(map);
        assetService.registerPc(map);
        request.setAttribute("msg","저장하였습니다.");
        request.setAttribute("url","redirect:/asset/asset");
        //return "redirect:/asset/asset";
        return "common/alert.tiles";
    }
    @RequestMapping("/assetModify")
    public String assetModify(Model model, @RequestParam("resourceId") String resourceId) throws Exception{
        model.addAttribute("asset", assetService.selectAssetDetail(resourceId));
        model.addAttribute("PC1code",assetService.PC1GubunCode());
        model.addAttribute("PG1code",assetService.PG1GubunCode());
        model.addAttribute("RVTcode",assetService.RVTGubunCode());
        model.addAttribute("PC3code",assetService.PC3GubunCode());
        return "asset/asset_modify.tiles";
    }
    @PostMapping("/assetMod.do")
    public String doModify(HttpServletRequest request) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("assetNo", request.getParameter("assetNo1") + "-" + request.getParameter("assetNo2") + "-" + request.getParameter("assetNo3"));     //자산번호
        map.put("buyDate", request.getParameter("buyDate").toString().replaceAll("-","")+" 00:00:00");    //구입년월
        map.put("model", request.getParameter("model"));                //모델명
        map.put("serial", request.getParameter("serial"));              //시리얼넘버
        map.put("name", request.getParameter("name"));                  //담당자명
        map.put("ndKind", request.getParameter("ndKind"));             // 자산종류
        map.put("resUseType", request.getParameter("resUseType"));    //용도
        map.put("resourceType", "01");     ///??
        map.put("dataFlag", request.getParameter("dataFlag"));          //신자료구자료 구분
        map.put("flag", "T");                                                   // 삭제여부
        map.put("gubun", request.getParameter("gubun"));                                                   // 구분
        map.put("spec", request.getParameter("spec"));
        map.put("consum", request.getParameter("consum"));              //소모품
        map.put("etc", request.getParameter("etc"));
        map.put("hasFileYn", request.getParameter("hasFileYn"));        //첨부여부
        map.put("resourceId", request.getParameter("resourceId"));
        map.put("contactNm", request.getParameter("contactNm"));
        map.put("contactEno", request.getParameter("contactEno"));
        System.out.println(request.getParameter("gubun"));

        System.out.println(map);
        assetService.doModify(map);
        request.setAttribute("msg","수정하였습니다.");
        request.setAttribute("url","/asset/asset");

        return "common/alert.tiles";
        //return "asset/asset_list.tiles";
    }

    @RequestMapping("/approval")
    public String approval(Model model, String searchNm) throws  Exception {
        return "asset/approval.tiles";
    }
}
