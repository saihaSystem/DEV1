package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.mapper.CommonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonService {
    @Autowired
    CommonMapper commonMapper;
}
