package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.mapper.CodeUtilMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CodeUtilService {
    @Autowired
    CodeUtilMapper codeUtilMapper;

    public List<Map<Object,String>> getCodeList(String cd_knd, String AddQuery){
        return codeUtilMapper.getCodeList(cd_knd,  AddQuery);
    }
}
