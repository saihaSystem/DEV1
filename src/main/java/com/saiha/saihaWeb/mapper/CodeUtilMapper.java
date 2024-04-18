package com.saiha.saihaWeb.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CodeUtilMapper {
    List<Map<Object,String>> getCodeList(String cd_knd, String AddQuery);
}
