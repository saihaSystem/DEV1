package com.saiha.saihaWeb.mapper;

import com.saiha.saihaWeb.dto.ManagementDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;


@Mapper
public interface ManagementMapper {
     List<Map<String,Object>> select_contents_data(String UserID);

     List<Map<String,Object>> select_education_data(String jumin,String seq);

     List<Map<String,Object>> select_education_list(String jumin);

     List<ManagementDTO> selectInsa(Map<String, Object> param);
     int insaCount(Map<String, Object> param);
}
