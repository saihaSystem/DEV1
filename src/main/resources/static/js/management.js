$(document).ready(function () {
      console.log("function success");

                getSelect("PT1",$('.part').attr('id'));
                getSelect("TE1",$('.team').attr('id'));
                getSelect("LE1",$('.level').attr('id'));
                getSelect("GD1",$('.grade').attr('id'));
                getSelect("MI9",$('.recruit').attr('id'));
                getSelect("CT1",$('.contract').attr('id'));
                getSelect("GW1",$('.access').attr('id'));s
});

function msg(path){
  if(path == "management"){
     $('#page').load('/management/management?juminNo='+$('.jumin_no').val()+' #page');

  }else if(path == "education"){
     $('#page').load('/management/management_ex?juminNo='+$('.jumin_no').val());
  }else if(path == "career"){
     $('#page').load('/management/management_ex2?juminNo='+$('.jumin_no').val());
  }else if(path == "license"){
     $('#page').load('/management/management_ex3?juminNo='+$('.jumin_no').val());
  }else if(path == "edu"){
     $('#page').load('/management/management_ex4?juminNo='+$('.jumin_no').val());
  }
}

function getSelect(value,info){
   var data = {}
   data['cd_knd'] = value;
   data['AddQuery'] = "";
   
    $.ajax({
      url: '/management/managementSelectAjax',
      type: "POST",
      data: JSON.stringify(data),
      dataType: "JSON",
      contentType: "application/json",
      accept: "application/json",
      success: function(result) {
               console.log(result);
               result.forEach (function (el, index) {
                   var option =   '<option value="'+el.CD+'"'
                   if(el.CD == info){
                       option += 'selected'
                   }
                       option +=  '>'+el.CD_NM+'</option>'

                   switch(value){
                      case "PT1" :
                          $('.part').append(option);
                          break;
                      case "TE1" :
                          $('.team').append(option);
                          break;
                      case "LE1" :
                          $('.level').append(option);
                          break;
                      case "GD1" :
                          $('.grade').append(option);
                          break;
                      case "MI9" :
                          $('.recruit').append(option);
                          break;
                      case "CT1" :
                          $('.contract').append(option);
                          break;
                      case "GW1" :
                          $('.access').append(option);
                          break;
                      case "MI4" :
                          $('.grad_div').append(option);
                          break;
                      case "MI8" :
                          $('.locate').append(option);
                          break;
                      case "MI5" :
                          $('.degree').append(option);
                          break;

                   }

                   console.log(option);
               });
               console.log("list success");
      },
      error: function(result) {
            console.log("list fail");
      }
    });
}

function viewDetail(jumin, seq){
   var data = {}
   data['jumin'] = jumin;
   data['seq'] = seq;
   $.ajax({
         url: '/management/managementEducationAjax',
         type: "POST",
         data: JSON.stringify(data),
         dataType: "JSON",
         contentType: "application/json",
         accept: "application/json",
         success: function(result) {
                  console.log(result);
                  $('.scho_nm').val(result[0].SCHOOL);
                  $('.scho_code').val(result[0].SCHOOL_CODE);
                  $('.iyear').val(result[0].ENTER_Y);
                  $('.imonth').val(result[0].ENTER_M);
                  $('.oyear').val(result[0].GRADUATION_Y);
                  $('.omonth').val(result[0].GRADUATION_M);
                  $('.major').val(result[0].MAJOR);
                  $('.minor').val(result[0].MINOR);
                  $('.seq').val(result[0].SEQ);

                  $("#grad_div").val(result[0].GRADUATION_CODE).prop("selected", true);
                  $("#locate").val(result[0].LOCATION_CODE).prop("selected", true);
                  $("#degree").val(result[0].DEGREE_CODE).prop("selected", true);


                  $('.butt').show();


                  console.log("edu success");
         },
         error: function(result) {
               console.log("edu fail");
         }
       });
}

function viewDetail2(jumin, seq){
   var data = {}
   data['jumin'] = jumin;
   data['seq'] = seq;
   $.ajax({
         url: '/management/managementCareerAjax',
         type: "POST",
         data: JSON.stringify(data),
         dataType: "JSON",
         contentType: "application/json",
         accept: "application/json",
         success: function(result) {
                  console.log(result);
                  $('.dept_nm').val(result[0].DEPT_NM);
                  $('.date1').val(result[0].JOIN_YMD);
                  $('.date2').val(result[0].LEAVE_YMD);
                  $('.position').val(result[0].POSITION);
                  $('.one_duty').val(result[0].ONE_DUTY);
                  $('.career_step').val(result[0].CAREER_STEP);


                  $('.butt2').show();


                  console.log("career success");
         },
         error: function(result) {
               console.log("career fail");
         }
       });
}

function viewDetail3(jumin, seq){
   var data = {}
   data['jumin'] = jumin;
   data['seq'] = seq;
   $.ajax({
         url: '/management/managementLicenseAjax',
         type: "POST",
         data: JSON.stringify(data),
         dataType: "JSON",
         contentType: "application/json",
         accept: "application/json",
         success: function(result) {
                  console.log(result);
                  $('.cert_name').val(result[0].LICENSE_NM);
                  $('.date1').val(result[0].GAIN_YMD);
                  $('.cert_level').val(result[0].LICENSE_GRADE);
                  $('.cert_num').val(result[0].LICENSE_NO);
                  $('.publish').val(result[0].SEND_DEPT_NM);
                  $('.SEQ').val(result[0].LICENSE_SEQ);




                  $('.butt3').show();


                  console.log("license success");
         },
         error: function(result) {
               console.log("edu fail");
         }
       });
}

function viewDetail4(jumin, seq){
   var data = {}
   data['jumin'] = jumin;
   data['seq'] = seq;
   $.ajax({
         url: '/management/managementEduAjax',
         type: "POST",
         data: JSON.stringify(data),
         dataType: "JSON",
         contentType: "application/json",
         accept: "application/json",
         success: function(result) {
                  console.log(result);
                  $('.edu_name').val(result[0].EDU_NAME);
                  $('.date1').val(result[0].START_YMD);
                  $('.date2').val(result[0].END_YMD);
                  $('.edu_num').val(result[0].EDU_NUM);
                  $('.date3').val(result[0].GAIN_YMD);
                  $('.edu_seq').val(result[0].EDU_SEQ);
                  $('.edu_agcy').val(result[0].EDU_AGCY);



                  $('.butt4').show();


                  console.log("edu success");
         },
         error: function(result) {
               console.log("edu fail");
         }
       });
}

function moveList(){
     location.href="/management/insa?pagenum=5&pagemax=10";
}

function regist(num){



    if(num == "1"){
        document.fm.num_tel.value = $("input[name=phone_no1]").val()+"-"+$("input[name=phone_no2]").val()+"-"+$("input[name=phone_no3]").val()
        document.fm.hp_tel.value = $("input[name=cellphone_no1]").val()+"-"+$("input[name=cellphone_no2]").val()+"-"+$("input[name=cellphone_no3]").val()
        var queryString = $("form[name=fm]").serialize() ;
        document.fm.action = "/management/managementUpdate";
        document.fm.method = "post";
        document.fm.submit();
    }else if(num == "2"){
        document.fm.enter_ymd.value= document.fm.iyear.value+"-"+document.fm.imonth.value+"01";
        document.fm.graduation_ymd.value= document.fm.oyear.value+"-"+document.fm.omonth.value+"01";
        var queryString = $("form[name=fm]").serialize() ;
        console.log(queryString);
        document.fm.action = "/management/managementEducationUpdate";
        document.fm.method = "post";
        document.fm.submit();
    }else if(num == "3"){
        document.fm.action = "/management/managementCareerUpdate";
        document.fm.method = "post";
        document.fm.submit();
    }else if(num == "4"){
        document.fm.action = "/management/managementLicenseUpdate";
        document.fm.method = "post";
        document.fm.submit();
    }else if(num == "5"){
        document.fm.action = "/management/managementEduUpdate";
        document.fm.method = "post";
        document.fm.submit();
    }

}


function newCarlanderArrayById(obj) {

	new CalendarFrame.Calendar(obj);
}

