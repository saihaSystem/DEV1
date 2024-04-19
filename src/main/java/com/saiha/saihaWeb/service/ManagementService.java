package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.dto.ManagementDTO;
import com.saiha.saihaWeb.mapper.ManagementMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;


@Service
public class ManagementService {
    @Autowired
    ManagementMapper managementMapper;

    public List<Map<String,Object>> select_contents_data(String UserID){
        return this.managementMapper.select_contents_data(UserID);
    }

    public List<ManagementDTO> selectInsa(Map<String, Object> param) {

        return managementMapper.selectInsa(param);
    }

    public int insaCount(Map<String, Object> param){

        return managementMapper.insaCount(param);
    }


}
