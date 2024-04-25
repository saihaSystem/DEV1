package com.saiha.saihaWeb.dto;

import lombok.Data;
@Data
public class LoginDTO {
    /*USE*/
    public String id;                       //사번
    public String name;                     //성명
    public String pwd;                      //비밀번호
    public String birthYmd;                 //생년월일
    public String joinYmd;                  //입사일
    public String positinYmd;               //보직일
    public String email;                    //전자메일주소
    public String deptCode;                 //부서코드
    public String teamCode;                 //팀코드
    public String positionCode;             //직급코드
    public String oneDutyCode;              //직위코드
    public String numTel;                   //전화번호
    public String hpTel;                    //핸드폰번호
    public String address;                  //주소
    public String gradeCode;                //권한등급코드
    public String controlYn;                //관리여부
    public String prjManageYn;              //프로젝트 관리자
    public String pwdFlag;                  //암호화여부

    /*LOGIN_CHECK*/
    public String loginCount;               //로그인 실패 횟수
    public String loginLock;                //계정점김여부
    public String ip;                       //ip주소
    public String changedate;               //변동일자
    public String regdate;                  //입력일자
}
