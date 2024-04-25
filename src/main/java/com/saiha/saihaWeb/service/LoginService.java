package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.dto.LoginDTO;
import com.saiha.saihaWeb.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class LoginService {
    @Autowired
    LoginMapper loginMapper;

    public int memberLogin(LoginDTO loginDTO){
        return this.loginMapper.memberLogin(loginDTO);
    }
}
