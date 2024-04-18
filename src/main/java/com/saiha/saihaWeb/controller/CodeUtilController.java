package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.service.CodeUtilService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/codeUtils")
public class CodeUtilController {
    @Autowired
    CodeUtilService codeUtilService;

    @PostMapping("")
    public String getCodeList(String cd_knd, String AddQuery, String selectedCdName, String initialString){

        List<Map<Object,String>> rs = null;
        String result = "";

        try {
            rs = codeUtilService.getCodeList(cd_knd,AddQuery);

            result = createOptionTag(rs, selectedCdName, initialString);
        } catch (Exception e) {
            log.error("getCodeList", e);
        }

        return result;
    }

    private String createOptionTag(List<Map<Object,String>> rs, String selectedCdName, String initialString)
            throws SQLException {
        StringBuilder result = new StringBuilder();

        if (StringUtils.isNotEmpty(initialString)) {
            result.append("<option value=''>").append(initialString).append("</option>\n");
        }

        if (rs != null) {

                result
                        .append("<option value=\"").append(rs.get(0).get("cd")).append("\"")
                        .append(rs.get(0).get("cd").equals(selectedCdName)?" selected":"")
                        .append(">")
                        .append(rs.get(0).get("cd_nm"))
                        .append("</option>\n");

        }

        return result.toString();
    }
}
