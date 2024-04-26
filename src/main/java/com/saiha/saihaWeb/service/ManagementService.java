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

    public List<Map<String,Object>> select_education_data(String jumin,String seq){
        return this.managementMapper.select_education_data(jumin,seq);
    }
    public List<Map<String,Object>> select_education_list(String jumin){
        return this.managementMapper.select_education_list(jumin);
    }


    public List<Map<String,Object>> select_career_data(String jumin,String seq){
        return this.managementMapper.select_career_data(jumin,seq);
    }

    public List<Map<String,Object>> select_career_list(String jumin){
        return this.managementMapper.select_career_list(jumin);
    }

    public List<Map<String,Object>> select_license_data(String jumin,String seq){
        return this.managementMapper.select_license_data(jumin,seq);
    }

    public List<Map<String,Object>> select_license_list(String jumin){
        return this.managementMapper.select_license_list(jumin);
    }

    public List<Map<String,Object>> select_edu_data(String jumin,String seq){
        return this.managementMapper.select_edu_data(jumin,seq);
    }

    public List<Map<String,Object>> select_edu_list(String jumin){
        return this.managementMapper.select_edu_list(jumin);
    }

    public void managementUpdate(Map<String,Object> map){
         this.managementMapper.managementUpdate(map);
    }

    public void managementEducationUpdate(Map<String,Object> map){
        this.managementMapper.managementEducationUpdate(map);
    }
    public void managementCareerUpdate(Map<String,Object> map){
        this.managementMapper.managementCareerUpdate(map);
    }
    public void managementLicenseUpdate(Map<String,Object> map){
        this.managementMapper.managementLicenseUpdate(map);
    }
    public void managementEduUpdate(Map<String,Object> map){
        this.managementMapper.managementEduUpdate(map);
    }



    public List<ManagementDTO> selectInsa(Map<String, Object> param) {

        return managementMapper.selectInsa(param);
    }

    public int insaCount(Map<String, Object> param){

        return managementMapper.insaCount(param);
    }


}
