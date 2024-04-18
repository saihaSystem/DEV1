$(document).ready(function () {
      console.log("function success");
      getSelect("PT1",$('.part').attr('id'));
      getSelect("TE1",$('.team').attr('id'));
      getSelect("LE1",$('.level').attr('id'));
      getSelect("GD1",$('.grade').attr('id'));
      getSelect("MI9",$('.recruit').attr('id'));
      getSelect("CT1",$('.contract').attr('id'));
      getSelect("GW1",$('.access').attr('id'));


});

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