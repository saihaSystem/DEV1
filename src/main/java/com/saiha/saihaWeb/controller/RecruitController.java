package com.saiha.saihaWeb.controller;

import com.saiha.saihaWeb.dto.JoinFileDTO;
import com.saiha.saihaWeb.dto.RecruitDTO;
import com.saiha.saihaWeb.mapper.RecruitMapper;
import com.saiha.saihaWeb.service.RecruitService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;


@Controller
@Slf4j
@RequestMapping("/recruit")
public class RecruitController {
    @Autowired
    RecruitService recruitService;
    @RequestMapping("/recruit")
    public String recruitPage(Model model) {

        return "recruit/recruit";
    }

    @RequestMapping("/application")
    public String applicationPage(Model model) {

        return "recruit/application";
    }

    @PostMapping("/upload")
    //public String uploadApplication(RecruitDTO recruit, @RequestParam(value ="file", required=false) MultipartFile file) throws IOException {
    public String uploadApplication(RecruitDTO recruit,@RequestParam(value ="photo", required=false) MultipartFile photo,@RequestParam(value ="fileAdd", required=false) MultipartFile fileAdd) throws IOException {

        System.out.println("test >>> " + recruit.toString());

        // 지원자별 폴더 분리 ex) D:\\APPLY\\2024\\02\\지원번호\\사진 , 첨부한파일

        if(!photo.isEmpty()) {
            String filePath = "D:\\02" + photo.getName() + ".png";
            File file = new File("D:\\02" + photo.getName() + ".png");
            photo.transferTo(file);
            photo.getSize();




            // 파일 존재여부 체크 로직 추가


            // DB 파일 저장

            JoinFileDTO joinFileDTO =  new JoinFileDTO();
            joinFileDTO.fileId = ""; // 아이디 생성 로직 레거시 참조
            joinFileDTO.fileName = file.getName();
            //joinFileDTO.fileSize = photo.getSize();
            joinFileDTO.filePath = file.getPath();

            //int cnt = recruitService.fileUpload(joinFileDTO);

            //
            //if(cnt == 1) {
                recruit.photoFile = "SHU_SYSTHU_SYST020000001604573565649.jpg"; // joinFileDTO.fileId
            //}
        }

        if(!fileAdd.isEmpty()) {
            String filePath = "D:\\02" + fileAdd.getName() + ".png";
            fileAdd.transferTo(new File(filePath));
            fileAdd.getSize();

        }




        recruitService.uploadApplication(recruit);
        return "forward:application";
    }
}