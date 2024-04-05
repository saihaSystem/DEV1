package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.dto.RecruitDTO;
import com.saiha.saihaWeb.mapper.RecruitMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecruitService {
    @Autowired
    RecruitMapper recruitMapper;


    public int uploadApplication(RecruitDTO recruit) {
        return recruitMapper.uploadApplication(recruit);
    }
}
