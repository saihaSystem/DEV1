document.write('<style type="text/css">'); 
document.write('a.calA:link { text-decoration: none;}                                                ');
document.write('a.calA:visited { text-decoration: none;}                                             ');
document.write('a.Today:link { text-decoration: none;}                                                ');
document.write('a.Today:visited { text-decoration: none;}                                             ');
document.write('.CalHead { font:bold 8pt Arial; color: black;padding:2px 2px 2px 2px;}                                  ');
document.write('.CalCell { font:8pt Arial; cursor: hand;padding:2px 2px 2px 2px;}                                       ');
document.write('.HeadBtn { vertical-align:middle; height:22; width:18; font:10pt Fixedsys; border:2px}     ');
document.write('.HeadBox { vertical-align:middle; font:10pt;}                                   ');
document.write('.Today { font:bold 10pt Arial; color: white;}                                   ');
document.write('</style>');		

////Begin  //IE 4.0 버전 이하의 브라우저는 이 태그를 BODY 태그에 넣으세요
//****************************************************************************
// PopCalendar 4.1, Emailware(please mail&commend me if u like it)
// Originally coded by Liming(Victor) Weng, email: victorwon@netease.com
// Release date: 2000.5.9
// Anyone may modify it to satify his needs, but please leave this comment ahead.
//****************************************************************************

var gdCtrl = new Object();
var gcGray = "#808080";
var gcToggle = "white";
var gcBG = "#dddddd";
var gcOtherDay = "gray";
var gcTodayBG = "white";
var gcFrame = "#EFEFEF";
var gcHead = "white";
var gcWeekend = "#C60000";
var gcWorkday = "black";
var gcCalBG = "#31659C";
var giCellWidth = 16;
var gcTemp = gcBG;

var gdCurDate = new Date();
var giYear = gdCurDate.getFullYear();
var giMonth = gdCurDate.getMonth()+1;
var giDay = gdCurDate.getDate();
var VicPopCal = new Object();

function fPopCalendar(ctrl,xplus,yplus){
	if(xplus==undefined||xplus==null)xplus=0;
	if(yplus==undefined||yplus==null)yplus=0;
	if(ctrl.codeBase!=undefined && ctrl.codeBase.indexOf("IBSheet3.CAB") >= 0){
		sheetPopCalendar(ctrl,xplus,yplus);
	}else{
		PopCalendar(ctrl,xplus,yplus);
	}
}

//****************************************************************************
// Param: popCtrl is the widget beyond which you want this calendar to appear;
//        dateCtrl is the widget into which you want to put the selected date;
//        popCal is the widget to display the calendar;  
// i.e.: <input type="text" name="dc" style="text-align:center" readonly><INPUT type="button" value="V" onclick="fPopCalendar(dc,dc,popCal);return false">
//****************************************************************************
function PopCalendar(dateCtrl,xplus,yplus){
	popCtrl = dateCtrl;
	
	var popCal = showCal();
	
  event.cancelBubble=true;
  VicPopCal = popCal;
  gdCtrl = dateCtrl;
  
  
  fSetYearMon(giYear, giMonth);
  
  var point = fGetXY(popCtrl);
  with (VicPopCal.style) {
  	left = point.x + xplus;
  	top  = point.y+popCtrl.offsetHeight+1 + yplus;
  	visibility = 'visible';
  }
  VicPopCal.focus();
  // in order to make compatible with IE4.x , here I cut two line below off.
  // VicPopCal.all("popFrame").width=document.all("popTable").offsetWidth;
  // VicPopCal.all("popFrame").height=document.all("popTable").offsetHeight;
  // if u only target on IE5.x, uncommented them and delete the width&height prop in <IFrame> tag
  // thus you will find the 3rd para in fDrawCal() now works perfectly.
}



//khlee 제작
function sheetPopCalendar(dateSheet,xplus,yplus){
	
	var pleft = dateSheet.ColLeft(dateSheet.SelectCol);
	var ptop =  dateSheet.RowTop(dateSheet.SelectRow) + dateSheet.RowHeight(dateSheet.SelectRow) ;
	if (dateSheet.CountPosition == 1 || dateSheet.CountPosition == 2) ptop +=  13;
	var popCal = showCal();
	
  //parent.event.cancelBubble=true;
  VicPopCal = popCal;
  
  gdCtrl = dateSheet;
  fSetYearMon(giYear, giMonth);
  var point = fGetXY(dateSheet);
  
  with (VicPopCal.style) {
  	left = point.x + pleft+xplus;
  	top  = point.y + ptop+yplus;
  	visibility = 'visible';
  }
  VicPopCal.focus();
}

function fSetDate(iYear, iMonth, iDay){
  if(iMonth<10) {iMonth="0"+iMonth;}
  if(iDay<10){iDay="0"+iDay;}

  //gdCtrl.value = iYear+"-"+iMonth+"-"+iDay; //Here, you could modify the locale as you need !!!!
  if (gdCtrl.codeBase!=undefined &&  gdCtrl.codeBase.indexOf("IBSheet3.CAB") >= 0)
    gdCtrl.CellValue(gdCtrl.SelectRow, gdCtrl.SelectCol) = iYear+""+iMonth+""+iDay;
  else{
    gdCtrl.value = iYear+"-"+iMonth+"-"+iDay; //Here, you could modify the locale as you need !!!!
    gdCtrl.click();
  }
  
  
  //여기가 값을 설정하는것임, khlee
  VicPopCal.style.visibility = "hidden";
  
}

function fSetSelected(aCell){
  var iOffset = 0;
  var iYear = parseInt(tbSelYear.value);
  var iMonth = parseInt(tbSelMonth.value);
  aCell.bgColor = gcBG;
  with (aCell.children["cellText"]){
  	var iDay = parseInt(innerText);
  	if (style.color==gcOtherDay)
		iOffset = (Victor<10)?-1:1;
	iMonth += iOffset;
	if (iMonth<1) {
		iYear--;
		iMonth = 12;
	}else if (iMonth>12){
		iYear++;
		iMonth = 1;
	}
  }
  fSetDate(iYear, iMonth, iDay);
  //alert(iYear);
}

function Point(iX, iY){
	this.x = iX;
	this.y = iY;
}

function fBuildCal(iYear, iMonth) {
  var aMonth=new Array();
  for(i=1;i<7;i++)
  	aMonth[i]=new Array(i);

  var dCalDate=new Date(iYear, iMonth-1, 1);
  var iDayOfFirst=dCalDate.getDay();
  var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
  var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
  var iDate = 1;
  var iNext = 1;

  for (d = 0; d < 7; d++)
	aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
  for (w = 2; w < 7; w++)
  	for (d = 0; d < 7; d++)
		aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
  return aMonth;
}

function fDrawCal(iYear, iMonth, iCellWidth, iDateTextSize) {
  var WeekDay = new Array("일","월","화","수","목","금","토");
  var styleTD = " width='"+iCellWidth+"' ";
	var tempStr = "";
	tempStr += "<tr>";
	for(i=0; i<7; i++)
		tempStr += "<td  name='_temp_td' class='CalHead' "+styleTD+">" + WeekDay[i] + "</td>";
	tempStr += "</tr>";
  	for (w = 1; w < 7; w++) {
		tempStr += "<tr>";
		for (d = 0; d < 7; d++) {
			tempStr += "<td name='_temp_td' class='CalCell' "+styleTD+" onMouseOver='gcTemp=this.bgColor;this.bgColor=gcToggle;this.bgColor=gcToggle' onMouseOut='this.bgColor=gcTemp;this.bgColor=gcTemp' onclick='fSetSelected(this)'>";
			tempStr += "<A href='#null' class='calA' id=cellText Victor='Liming Weng' onfocus='this.blur();'>00</A></td>";
		}
		tempStr += "</tr>";
	}
  return tempStr;
}

function fUpdateCal(iYear, iMonth) {
	
	myMonth = fBuildCal(iYear, iMonth);
  var i = 0;
  for (w = 0; w < 6; w++){
	for (d = 0; d < 7; d++)
		with (cellText[(7*w)+d]) {
			Victor = i++;
			if (myMonth[w+1][d]<0) {
				style.color = gcOtherDay;
				innerText = -myMonth[w+1][d];
			}else{
				style.color = ((d==0)||(d==6))?gcWeekend:gcWorkday;
				innerText = myMonth[w+1][d];
			}
		}
  }
  
}

function fSetYearMon(iYear, iMon){
  tbSelMonth.options[iMon-1].selected = true;
  for (i = 0; i < tbSelYear.length; i++)
	if (tbSelYear.options[i].value == iYear)
		tbSelYear.options[i].selected = true;
  
  //setTimeout(   "fUpdateCal("+iYear+","+iMon+")"     , 1000    );
  fUpdateCal(iYear,iMon);
}

function fPrevMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (--iMon<1) {
	  iMon = 12;
	  iYear--;
  }

  fSetYearMon(iYear, iMon);
}

function fNextMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (++iMon>12) {
	  iMon = 1;
	  iYear++;
  }

  fSetYearMon(iYear, iMon);
}

function fGetXY(aTag){
  var oTmp = aTag;
  var pt = new Point(0,0);
  do {
  	pt.x += oTmp.offsetLeft;
  	pt.y += oTmp.offsetTop;
  	oTmp = oTmp.offsetParent;
  } while(oTmp.tagName!="BODY");
  return pt;
}


function showCal(){
	//객체를 한번만 생성하자.
	if(document.getElementById("cal_div")!=undefined&&document.getElementById("cal_div")!=null)
		return document.getElementById("cal_div");
	
  var addObj = document.createElement("DIV"); //var 를선언하면 지역변수 생략하면 전역변수입니다.
  addObj.name = "cal_div";                                    //addObj 를전연벽수로 생성하면 이제
	addObj.id = "cal_div";
	addObj.style.position = "absolute";
	addObj.style.left = "0px";
	addObj.style.top = "0px";
	addObj.style.visibility = "hidden";
	//addObj.className = "myCalendar";
	addObj.style.width = "10px";
	addObj.style.height = "10px";
	//addObj.style.border = "2px";
	addObj.style.borderLeft = "0px";
	addObj.style.borderTop = "0px";
	//addObj.style.backgroundColor="#EF00EF";

	
	addObj.style.zIndex  = "0";
	document.body.appendChild(addObj);        //addObj 객체로 다름 함수에서도 핸들링이 가능해집니다...^^
	var gMonths = new Array("1","2","3","4","5","6","7","8","9","10","11","12");
	var cal_table = "";
	cal_table += "<iframe style='Z-INDEX:-1; FILTER:alpha(opacity=0); LEFT:0px; TOP:0px; scrolling:no; POSITION:absolute; width:170px; height:200px;' border=0 frameborder=2 framespacing=0'></iframe>";
	cal_table += "<table style='width:170px' border='0' bgcolor='"+gcCalBG+"' cellspacing='0' cellpadding='3' border='0'>";
	cal_table += "<TR>";
	cal_table += "<td name='_temp_td' valign='middle' align='center' style='padding:2px 2px 2px 2px;'><input type='button' name='PrevMonth' value='<' class='HeadBtn' onClick='fPrevMonth()'>";
	cal_table += "&nbsp;<SELECT name='tbSelYear' class='HeadBox' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>";
	for(i=1980;i<2020;i++)
		cal_table += "<OPTION value='"+i+"'>"+i+"</OPTION>";
	cal_table += "</SELECT>";
	cal_table += "&nbsp;<select name='tbSelMonth' class='HeadBox' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>";
	for (i=0; i<12; i++)
		cal_table += "<option value='"+(i+1)+"'>"+gMonths[i]+"</option>";
	cal_table += "</SELECT>";
	cal_table += "&nbsp;<input type='button' name='PrevMonth' value='>' class='HeadBtn' onclick='fNextMonth()'>";
	cal_table += "</td>";
	cal_table += "</TR><TR>";
	cal_table += "<td name='_temp_td' align='center'>";
	cal_table += "<DIV style='background-color:"+gcFrame+";width:"+((giCellWidth+6)*7+2)+"px;'><table border='0' cellpadding='2'>";
	cal_table += fDrawCal(giYear, giMonth, 19, 12);
	cal_table += "</table></DIV>";
	cal_table += "</td>";
	cal_table += "</TR><TR><td name='_temp_td' align='center' style='padding:2px 2px 2px 2px;'>";
	cal_table += "<A href='#null' class='Today'  onclick='fSetDate(giYear,giMonth,giDay)' onMouseOver='this.style.color=gcToggle' onMouseOut='this.style.color=0'>오늘:&nbsp;&nbsp;"+giYear+"-"+gMonths[giMonth-1]+"-"+giDay+"</A>";
	cal_table += "</TD></TR>";
	cal_table += "</TD></TR>";
	cal_table += "</TABLE>";
	
	document.getElementById("cal_div").innerHTML = cal_table;
	return document.getElementById("cal_div");
}

document.onclick=function(){
	var obj = document.getElementById("cal_div");
	if(obj!=undefined&&obj!=null && obj.style.visibility == "visible"){
/*		
		var lleft = obj.style.left;
		lleft = parseInt(lleft.substring(0,lleft.length-2));
		var ttop = obj.style.top;
		ttop = parseInt(ttop.substring(0,ttop.length-2));
		if(event.clientX >lleft && event.clientX < lleft+170 && event.clientY > ttop && event.clientY < ttop+220)  return;
		*/
		if(event.srcElement.name=="_temp_td") return;
		if(event.srcElement.name=="tbSelMonth" || event.srcElement.name=="tbSelYear") return;
		if(event.srcElement.name=="PrevMonth" ||  event.srcElement.name=="PrevMonth") return;
		obj.style.visibility = "hidden";
	}
}


	

// End   -->
