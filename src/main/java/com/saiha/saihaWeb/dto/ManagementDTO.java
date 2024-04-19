package com.saiha.saihaWeb.dto;


import lombok.Data;

@Data
public class ManagementDTO {
    public String juminNo;                  //인사관리번호
    public String juminNo2;                 //주민등록번호
    public String id;                       //사번
    public String name;                       //사번
    public String korName;                  //한글이름
    public String chiName;                  //한자이름
    public String engName;                  //영문이름
    public String joinYmd;                  //입사일
    public String leaveYmd;                 //퇴사일
    public String zipCode;                  //현주소 우편번호
    public String address;                  //현주소
    public String familyRegisterZipcode;    //본적 우편번호
    public String familyRegisterAddress;    //본적 주소
    public String juminZipcode;             //주민등록지 우편번호
    public String juminAddress;             //주민등록지 주소
    public String positionYmd;              //보직일
    public String deptCode;                 //부서코드
    public String teamCode;                 //팀코드
    public String positionCode;             //직급코드
    public String oneDutyCode;              //직위코드
    public String email;                    //이메일
    public String numTel;                   //전화번호
    public String hpTel;                    //핸드폰번호
    public String passportNo;               //여권번호
    public String contractWorkYn;           //계약직 여부
    public String employmentCode;           //채용구분 코드
    public String birthYmd;                 //생년월일
    public String solarcalendarYn;          //양음력 구분

    public String brdNo;                    //게시판 번호
    public String sosok;
    public String position;
    public String teamNm;




}
