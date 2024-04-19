<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.saiha.saihaWeb.dto.*" %>
<%

	//String ifile_id 	= Config.getProperty("SPS_SYS_ID_HU_SYST");
	//String ifile_tnm 	= Config.getProperty("SPS_IFILE_HU_SYST02");
	//String ani 	  		= StringUtils.defaultString(request.getParameter("ani"),"");	// 타이틀이미지
	//String imgNo		= StringUtils.defaultString(request.getParameter("imgNo"),""); // 이미지 번호
	//int cPage 	  		= Integer.parseInt(StringUtils.defaultString(request.getParameter("cPage"),"1"));	// 페이지번호

	// 변수 선언
	String mode = "U";  // I : 입력, U : 수정

	List<Map<String,Object>> vl = (List<Map<String,Object>>)request.getAttribute("ManagemantDTO");
%>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/js/management.js"></script>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta
      name="viewport"
      content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover"
    />

    <title>새하정보시스템</title>
    <link rel="stylesheet" href="/css/font.css" />
    <link rel="stylesheet" href="/css/common.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/js/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="/js/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
  </head>
  <body>

  <style>
  .div1 {
     margin-top:50px;
     margin-bottom:50px;
     width: 100%;
  }
  .tbl_button{
     margin-bottom:250px;
     text-align: right;
  }
  .staff_tab{
     text-align: center;
     height: 100px;
     font-size: 30px;
     word-spacing:30px;
  }
   form {
     margin:0; padding:0;
   }
   li {
       display: inline-block;
   }
  </style>

  <header class="header">
            <div class="head" id="head">
              <div class="logo"><a href="/"><img src="/images/main_logo.png" /></a></div>
              <div class="nav">
                <ul>
                  <li>
                    <a href="introduce/ceo">회사소개</a>
                    <ul class="subMenu subMenu1">
                      <li><a href="introduce/ceo">CEO인사말</a></li>
                      <li><a href="introduce/history">주요연혁</a></li>
                      <li><a href="introduce/organization">조직도</a></li>
                      <li><a href="introduce/partner">협력사</a></li>
                      <li><a href="introduce/map">오시는길</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="service/sysIntegration">서비스</a>
                    <ul class="subMenu subMenu2">
                      <li><a href="service/sysIntegration">System Integration</a></li>
                      <li><a href="service/sysManagement">System Management</a></li>
                      <li><a href="service/sysSolution">Internet Solution</a></li>
                      <li><a href="service/rnd">R&D</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="human">사회적가치</a>
                    <ul class="subMenu subMenu3">
                      <li><a href="human">인권경영헌장</a></li>
                      <li><a href="environment">환경경영방침</a></li>
                      <li><a href="ethics">윤리경영</a></li>
                      <li><a href="esg">ESG강령</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="si">사업연혁</a>
                    <ul class="subMenu subMenu4">
                      <li><a href="si">SI사업 Part</a></li>
                      <li><a href="outsourcing">Outsourcing Part</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="notice">고객지원</a>
                    <ul class="subMenu subMenu5">
                      <li><a href="notice">새하소식</a></li>
                      <li><a href="qna">고객문의</a></li>
                      <li><a href="contact">Contact Us</a></li>
                      <li><a href="photo">Photo News</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="recruit/recruit">채용안내</a>
                    <ul class="subMenu subMenu6">
                      <li><a href="recruit/recruit">채용정보안내</a></li>
                      <li><a href="recruit/application">온라인입사지원</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="staff">사원페이지</a>
                    <ul class="subMenu subMenu7">
                      <li><a href="management">경영정보</a></li>
                      <li><a href="approve">전자결재</a></li>
                      <li><a href="data">자료실</a></li>
                      <li><a href="saihanews">새하알리미</a></li>
                      <li><a href="board">게시판</a></li>
                      <li><a href="pnumber">전화번호</a></li>
                      <li><a href="app_management">결재관리</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="sideMenu">
                <!-- <div class="fullMenuIcon">
                  <a href="#">
                    <span></span>
                    <span></span>
                    <span></span>
                  </a>
                </div> -->
                <a class="loginBtn" href="login">로그인</a>
              </div>
            </div>
            <div class="subVisual service rnd"></div>
              <div class="subNav">
                <ul>
                  <li><a href="" class="active">경영정보</a></li>
                  <li><a href="">전자결재</a></li>
                  <li><a href="">자료실</a></li>
                  <li><a href="" >새하알리미</a></li>
                  <li><a href="" >게시판</a></li>
                  <li><a href="" >전화번보</a></li>
                  <li><a href="" >결재관리</a></li>
                </ul>
              </div>
            </div>
          </header>
         <main>
    <form name="fm" id="fm" method="post">
    <input type="hidden" name="SID">
    <input type="hidden" name="tmp" value="FIRST">

    	<div  class="div1" style="display: block;">
    		<table class="tbl_form" border="1" cellspacing="0" summary="고객문의">
    	<div class="staff_tab" >
    		<ul>
    			<li><a href="#"" class="on">기본</a></li>
    			<li><a href="javascript:msg();">학력</a></li>
    			<li><a href="javascript:msg();">경력</a></li>
    			<li><a href="javascript:msg();">자격증</a></li>
    			<li><a href="javascript:msg();">교육</a></li>
    		</ul>
    	</div>
    		<colgroup>
    		<col width="15%" />
    		<col width="30%" />
    		<col width="15%" />
    		<col width="30%" />
    		</colgroup>
    		<tr>
    			<th>사번</th>
    			<td><label><input class="input01" type="text" name="sabun" maxlength="8" size="10" value="<%=vl.get(0).get("ID")%>"></label></td>
    			<th>보직일자</th>
    			<td><label><input class="input01" type="text" id="bogic_date" name="bogic_date" maxlength="10" size="10" value="<%=vl.get(0).get("POSITION_YMD")%>" onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)">
    				<img src="/images/Calendar.gif" alt="보직일자" border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('bogic_date'));" style="cursor: pointer;" /></label>
    			</td>
    		</tr>
    		<tr>
    			<th>이름</th>
    			<td colspan=3><label><input class="input01" type="text" name="kor_nm" maxlength="8" size="10" value="<%=vl.get(0).get("KOR_NAME")%>" >
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				<span class="info_msg">( 영문 :<input class="input01" type="text" name="eng_nm" maxlength="20" size="20" value="<%=vl.get(0).get("ENG_NAME")%>" >&nbsp;&nbsp;한자 : <input class="input01" type="text" name="chi_nm" maxlength="8" size="10" value="<%=vl.get(0).get("CHI_NAME")%>" >)</span></label>
    			</td>
    		</tr>
    		<tr>
    			<th>비밀번호</th>
    			<td><label><input class="input01" type="password" name="password" maxlength="12" size="12" value=""></label></td>
    			<th>비밀번호확인</th>
    			<td><label><input class="input01" type="password" name="password2" maxlength="12" size="12" value=""></label></td>
    		</tr>
    		<tr>
    			<th>주민등록번호</th>
    			<td><label><input class="input01" type="hidden" name="SID1" maxlength="6" size="6" value=""  onKeyUp="checkNum(this)" > -
    				<input class="input01" type="hidden" name="SID2" maxlength="7" size="7" value=""  onKeyUp="checkNum(this)" onBlur="checkSID()"></label></td>
    			<th>생년월일</th>
    			<td><label><input class="input01" type="text" id="birth_date" name="birth_date" maxlength="10" size="10" value="<%=vl.get(0).get("BIRTH_YMD")%>" onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)">
    				<img src="/images/Calendar.gif" alt="생년월일" border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('birth_date'));" style="cursor: pointer;" />
    				(<input type="radio" name="lunar" value="Y" style="position:relative;top:2px;" checked> <span class="info_msg">양</span>
    				<input type="radio" name="lunar" value="N" style="position:relative;top:2px;" > <span class="info_msg">음</span>)
    				<input type="hidden" name="jumin_no" value=""></label>
    			</td>
    		</tr>
    		<tr><!-- 사진첨부 증명사진 -->
    			<th rowspan="2">사진첨부
    			</th>
    			<td colspan="3">
    			   <input type="text" class="input01" name="txt_file_nmADD" readonly value size="68" title="파일첨부">
    			</td>
    		</tr>
            <tr>
                <td colspan="3">
                    <label>
                        <span class="info_msg">크기 90 x h: 120 픽셀/.GIF.JPEG.JPG만</span>
                        <img src="/images/btn_fileps.gif" alt="사진첨부"  align="absmiddle" style="cursor:hand"
                             onclick="" /></label>
                </td>
            </tr>
    		<tr>
    			<th>입사일자</th>
    			<td><label><input class="input01" type="text" id="in_date" name="in_date"  maxlength="10" size="10" value="<%=vl.get(0).get("JOIN_YMD")%>" onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)">
    				<img src="/images/Calendar.gif" alt="입사일자"  border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('in_date'));" style="cursor: pointer;" /></label>
                </td>
    			<th>퇴사일자</th>
    			<td><label><input class="input01" type="text" id="out_date" name="out_date"  maxlength="10" size="10"
    			     value="${empty ManagemantDTO.get(0).LEAVE_YMD ? '' : ManagemantDTO.get(0).LEAVE_YMD}"
    			     readonly
    			     onBlur="javascript:js_dateCheck(this);" onFocus="js_removeChar2(this)">
    				<img src="/images/Calendar.gif" alt="퇴사일자" border="0" align="absbottom" onclick="newCarlanderArrayById(document.getElementById('out_date'));" style="cursor: pointer;" /></label>
    			</td>
    		</tr>
    		<!--    			     <% if(vl.get(0).get("LEAVE_YMD") != null ) {%>
                			        value="<%=vl.get(0).get("LEAVE_YMD")%>"
                			     <% } else { %>
                			        value=""
                			     <% } %> -->
    		<tr>
    			<th>부서명</th>
    			<td>
    				<label><select name='part' class="part" id= "<%=vl.get(0).get("DEPT_CODE")%>" style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
                </td>
    			<th>팀명</th>
    			<td>
    				<label><select name='team' class="team" id= "<%=vl.get(0).get("TEAM_CODE")%>"  style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
                </td>
    		</tr>
    		<tr>
    			<th>직급</th>
    			<td>
    				<label><select name='level' class="level" id= "<%=vl.get(0).get("POSITION_CODE")%>" style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
                </td>
    			<th>직위</th>
    			<td>
    				<label><select name='grade' class="grade" id= "<%=vl.get(0).get("ONE_DUTY_CODE")%>" style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
                </td>
    		</tr>
    		<tr>
    			<th>채용구분</th>
    			<td>
    				<label><select name='recruit' class="recruit" id= "<%=vl.get(0).get("EMPLOYMENT_CODE")%>" style="height:22px" >
                                <option>-선택-</option>
    			</select></label>
                </td>
    			<th>계약구분</th>
    			<td>
    				<label><select name="contract" class="contract" id= "<%=vl.get(0).get("CONTRACT_WORK_YN")%>" style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
    			</td>
    		</tr>
    		<tr>
    			<th>전화번호</th>
    			<c:set var="NUM_TEL" value="${fn:split(ManagemantDTO.get(0).NUM_TEL,'-')}" />
    			<td><label><input class="input01" type="text" name="phone_no1" maxlength="3" size="3" value="${NUM_TEL[0]}" style="width: 50px;"> - <input class="input01" type="text" name="phone_no2" maxlength="4" size="4" value="${NUM_TEL[1]}" > - <input class="input01" type="text" name="phone_no3" maxlength="4" size="4" value="${NUM_TEL[2]}" >
    				<input type="hidden" name="num_tel"></label>
    			</td>
    			<th>핸드폰번호</th>
    			<c:set var="HP_TEL" value="${fn:split(ManagemantDTO.get(0).HP_TEL,'-')}" />
    			<td><label><input class="input01" type="text" name="cellphone_no1" maxlength="3" size="3" value="${HP_TEL[0]}" style="width: 50px;" > - <input class="input01" type="text" name="cellphone_no2" maxlength="4" size="4" value="${HP_TEL[1]}" > - <input class="input01" type="text" name="cellphone_no3" maxlength="4" size="4" value="${HP_TEL[2]}" >
    				<input type="hidden" name="hp_tel"></label>
    			</td>
    		</tr>
    		<tr>
    			<th>여권번호</th>
    			<td><label><input class="input01" type="text" name="passport_no" maxlength="20" size="22" value="${empty ManagemantDTO.get(0).PASSPORT_NO ? '' : ManagemantDTO.get(0).PASSPORT_NO}" ></label></td>
    			<th>이메일</th>
    			<td><label><input class="input01" type="text" name="email" maxlength="30" size="31" value="${empty ManagemantDTO.get(0).EMAIL ? '' : ManagemantDTO.get(0).EMAIL}" ></label></td>
    		</tr>
    		<tr>
    			<th>현 주소</th>
    			<td colspan="3" style="line-height:25px;">
    				<label><input class="input01" type="text" class="input01" id="" size="7" name="c_ZipCode" value="<%=vl.get(0).get("ZIPCODE")%>" readonly />
    				<img src="/images/bt_adress.gif" alt="현주소" width="60" height="18" name="ZipCodeOpen" onClick="ZipWindow('0')" style="cursor:hand" /><br />
    				<input value="<%=vl.get(0).get("ADDRESS")%>" class="input01"  maxlength="45" size="70" name="c_Address" style="width: 500px;" onKeyUp="input_cal_byte(this, 70)" ></label>

    			</td>
    		</tr>
    		<tr>
    			<th>본적</th>
    			<td colspan="3" style="line-height:25px;">
    				<label><input class="input01" type="text" id="" size="7" name="family_register_ZipCode" value="<%=vl.get(0).get("FAMILY_REGISTER_ZIPCODE")%>" readonly />
    				<img src="/images/bt_adress.gif" width="60" alt="본적" height="18" name="ZipCodeOpen" onClick="ZipWindow('1')" style="cursor:hand" /><br />
    				<input value="<%=vl.get(0).get("FAMILY_REGISTER_ADDRESS")%>" class="input01"  maxlength="45" size="70" name="family_register_Address" style="width: 500px;" onKeyUp="input_cal_byte(this, 70)" ></label>

    			</td>
    		</tr>
    		<tr>
    			<th>주민주소</th>
    			<td colspan="3" style="line-height:25px;">
    				<label><input class="input01" type="text" id="" size="7" name="jumin_ZipCode" value="<%=vl.get(0).get("JUMIN_ZIPCODE")%>" readonly />
    				<img src="/images/bt_adress.gif" alt="주민주소" width="60" height="18" name="ZipCodeOpen" onClick="ZipWindow('2')" style="cursor:hand" /><br />
    				<input value="<%=vl.get(0).get("JUMIN_ADDRESS")%>" class="input01"  maxlength="45" size="70" name="jumin_Address" style="width: 500px;" onKeyUp="input_cal_byte(this, 70)" ></label>

    			</td>
    		</tr>
    		<tr>
    			<th>권한등급</th>
    			<td>
    				<label><select name='access' class="access" id= "${empty ManagemantDTO.get(0).GRADE_CODE ? '' : ManagemantDTO.get(0).GRADE_CODE}" style="height:22px" >
                                <option>-선택-</option>
    				</select></label>
    			</td>
    			<th>관리여부</th>
    			<td>
    				<label><input type="radio" name="useYN" value="Y"  checked="checked" /> 예</label>
    	            <label><input type="radio" name="useYN" value="N"  /> 아니오</label>
    			</td>
    		</tr>
    	</table>
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    		<tr>
    			<td align="right">
    				<tiles:insert page="/jsp/common/calendarframe.jsp" flush="true" />
    			</td>
    		</tr>
    	</table>
    	</div>
    <!-- button -->
    		<p class="tbl_button">
    			<a href="javascript:regist();"><img src="/images/bt_regist.gif" alt="등록" /></a>
    			<a href="javascript:history.back(-1)"><img src="/images/bt_cancel.gif" alt="취소" /></a>
    		</p>
      <!-- //button -->
    </form>
    </main>
    <footer >
      <div class="address">
        <span>전라남도 나주시 도민길 46(빛가람동 892-12) 새하빌딩<br></span>
        <span>Copyright(c) 2014 SAIHA Information System Co., LTD<br>All Rights Reserved</span>
      </div>
      <div class="phoneGroup">
        <div class="phone">
          <span>대표전화<br></span>
          <span>061. 930. 0050</span>
        </div>
        <div class="fax">
          <span>팩스<br></span>
          <span>061. 930. 0060</span>
        </div>
        <div class="email">
          <span>이메일<br></span>
          <span><a href="mailto:Webmaster@saiha.co.kr">Webmaster@saiha.co.kr</a></span>
        </div>
      </div>
      <div class="linkGroup">
        <span>관련링크<br></span>
        <select name="" id="">
          <option value="">====관련링크====</option>
          <option value="">기술보증기금</option>
          <option value="">벤처기업협회</option>
          <option value="">소프트웨어공제조합</option>
          <option value="">이노비즈협회</option>
          <option value="">한국경영혁신중소기업협회</option>
          <option value="">한국산업기술진흥협회</option>
          <option value="">한국소프트웨어산업협회</option>
          <option value="">한국전산업협동조합</option>
        </select>
      </div>
    </footer>
    <script src="/js/jquery-3.5.1.min.js"></script>
    <script src="/js/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    <script src="/js/mainSlide.js"></script>
    <script src="/js/mainMenu.js"></script>
  </body>
</html>