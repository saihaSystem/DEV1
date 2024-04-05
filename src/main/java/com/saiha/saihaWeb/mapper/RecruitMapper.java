package com.saiha.saihaWeb.mapper;

import com.saiha.saihaWeb.dto.RecruitDTO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface RecruitMapper {

    int uploadApplication(RecruitDTO recruit);
}
