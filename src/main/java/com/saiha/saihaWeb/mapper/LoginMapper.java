package com.saiha.saihaWeb.mapper;

import com.saiha.saihaWeb.dto.LoginDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.Map;

@Mapper
public interface LoginMapper {
    int memberLogin(LoginDTO loginDTO);

}
