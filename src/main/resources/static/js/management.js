$(document).ready(function () {
      console.log("function success");
      getSelect("PT1",$('.part').attr('id'));
      getSelect("TE1",$('.team').attr('id'));
      getSelect("LE1",$('.level').attr('id'));
      getSelect("GD1",$('.grade').attr('id'));
      getSelect("MI9",$('.recruit').attr('id'));
      getSelect("CT1",$('.contract').attr('id'));
      getSelect("GW1",$('.access').attr('id'));

      getSelect("MI4",$('.grad_div').attr('id'));
      getSelect("MI8",$('.locate').attr('id'));
      getSelect("MI5",$('.degree').attr('id'));

});

function msg(path){
  if(path == "management"){
     $('#page').load('/management/management?juminNo='+$('.jumin_no').val()+' #page');

  }else if(path == "management_ex"){
     $('#page').load('/management/management_ex?juminNo='+$('.jumin_no').val());
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
         url: '/management/managementEduAjax',
         type: "POST",
         data: JSON.stringify(data),
         dataType: "JSON",
         contentType: "application/json",
         accept: "application/json",
         success: function(result) {
                  console.log(result);
                  $('.scho_nm').val(result[0].SCHOOL);
                  $('.scho_code').val(result[0].SCHO_CODE);
                  $('.iyear').val(result[0].ENTER_Y);
                  $('.imonth').val(result[0].ENTER_M);
                  $('.oyear').val(result[0].GRADUATION_Y);
                  $('.omonth').val(result[0].GRADUATION_M);
                  $('.major').val(result[0].MAJOR);
                  $('.minor').val(result[0].MINOR);

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


function newCarlanderArrayById(obj) {

	new CalendarFrame.Calendar(obj);
}

