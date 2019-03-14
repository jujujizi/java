//function test()
//{
//    alert	
//}

function stipendValidate(){
	if(stipendForm.name.value==""){
		alert("请添写员工姓名！");		
		stipendForm.name.focus();
		return false;
	}
	if(stipendForm.basic.value==""){
		alert("请添写基本薪金！");		
		stipendForm.basic.focus();
		return false;
	}
	if(isNaN(stipendForm.basic.value))
	{
	  alert("基本薪金只能填写数字！");
	  stipendForm.basic.focus();
	  return false;
	}
	if(stipendForm.granttime.value==""){
		alert("请添写发放时间！");		
		stipendForm.granttime.focus();
		return false;
	}
	if(!checkIsValidDate(stipendForm.granttime.value)){
		alert("输入的时间不合法！（年-月-日）");
		stipendForm.granttime.focus();
		return false;
	}

	return true;
}
function institutionValidate(){
	if(institutionForm.name.value==""){
		alert("请添写奖惩名称！");		
		institutionForm.name.focus();
		return false;
	}
	if(institutionForm.reason.value==""){
		alert("请添写奖惩原因！");		
		institutionForm.reason.focus();
		return false;
	}
	return true;
}
function userValidate(){
	if(userForm.username.value==""){
		alert("请添写人员姓名！");		
		userForm.username.focus();
		return false;
	}
  
//	if(!/^[\u4e00-\u9fa5]+$/gi.exec(userForm.username.value) || !/^\\w+$/gi.exec(userForm.username.value)){
//		alert("用户请输入中文！");		
//		userForm.username.focus();
//		return false;
//	}


	if(userForm.password.value==""){
		alert("请添写登陆密码！");		
		userForm.password.focus();
		return false;
	}
	if(escape(userForm.password.value).indexOf("%u")>=0 ){   
	   alert("密码不能包含中文！");
	   return false;
	}  

	if(userForm.birthday.value==""){
		alert("请添写出生日期！");		
		userForm.birthday.focus();
		return false;
	}
	if(CheckDate(userForm.birthday.value)){
		alert("输入的日期不合法！（年-月-日）");
		userForm.birthday.focus();
		return false;
	}
	return true;
}

function educateValidate(){
	if(educateForm.name.value==""){
		alert("请添写培训名称！");		
		educateForm.name.focus();
		return false;
	}
	if(educateForm.purpose.value==""){
		alert("请添写培训目的！");		
		educateForm.purpose.focus();
		return false;
	}
	if(educateForm.begintime.value==""){
		alert("请添写培训开始时间！");		
		educateForm.begintime.focus();
		return false;
	}
	if(!checkIsValidDate(educateForm.begintime.value)){
		alert("输入的时间不合法！（年-月-日）");
		educateForm.begintime.focus();
		return false;
	}

	if(educateForm.endtime.value==""){
		alert("请添写培训结束时间！");		
		educateForm.endtime.focus();
		return false;
	}
	if(!checkIsValidDate(educateForm.endtime.value)){
		alert("输入的时间不合法！（年-月-日）");
		educateForm.endtime.focus();
		return false;
	}
	if(!checkDateEarlier(educateForm.begintime.value,educateForm.endtime.value)){
		alert("起始日期不能晚于结束日期！");
		educateForm.begintime.focus();
		return false;
	}

	if(educateForm.teacher.value==""){
		alert("请添写培训讲师！");		
		educateForm.teacher.focus();
		return false;
	}
	if(educateForm.student.value==""){
		alert("请添写培训人员！");		
		educateForm.student.focus();
		return false;
	}
	return true;
}

function checkDateEarlier(strStart,strEnd)
{
    if(checkIsValidDate(strStart) == false || checkIsValidDate(strEnd) == false)
        return false;
    //如果有一个输入为空，则通过检验
    if (( strStart == "" ) || ( strEnd == "" ))
        return true;
    var arr1 = strStart.split("-");
    var arr2 = strEnd.split("-");
    var date1 = new Date(arr1[0],parseInt(arr1[1].replace(/^0/,""),10) - 1,arr1[2]);
    var date2 = new Date(arr2[0],parseInt(arr2[1].replace(/^0/,""),10) - 1,arr2[2]);
    if(arr1[1].length == 1)
        arr1[1] = "0" + arr1[1];
    if(arr1[2].length == 1)
        arr1[2] = "0" + arr1[2];
    if(arr2[1].length == 1)
        arr2[1] = "0" + arr2[1];
    if(arr2[2].length == 1)
        arr2[2]="0" + arr2[2];
    var d1 = arr1[0] + arr1[1] + arr1[2];
    var d2 = arr2[0] + arr2[1] + arr2[2];
    if(parseInt(d1,10) > parseInt(d2,10))
       return false;
    else
       return true;
}//~~~
function checkIsValidDate(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    var pattern = /^((\d{4})|(\d{2}))-(\d{1,2})-(\d{1,2})$/g;
    if(!pattern.test(str)){
        return false;
	}
    var arrDate = str.split("-");
    if(parseInt(arrDate[0],10) < 100)
        arrDate[0] = 2000 + parseInt(arrDate[0],10) + "";
    var date =  new Date(arrDate[0],(parseInt(arrDate[1],10) -1)+"",arrDate[2]);
    if(date.getYear() == arrDate[0]
       && date.getMonth() == (parseInt(arrDate[1],10) -1)+""
       && date.getDate() == arrDate[2]){
        return true;
	}else{
        return false;
	}
}//~~~

function CheckDate(INDate)
{ if (INDate=="")
    {return true;}
	subYY=INDate.substr(0,4)
	if(isNaN(subYY) || subYY<=0){
		return true;
	}
	//转换月份
	if(INDate.indexOf('-',0)!=-1){	separate="-"}
	else{
		if(INDate.indexOf('/',0)!=-1){separate="/"}
		else {return true;}
		}
		area=INDate.indexOf(separate,0)
		subMM=INDate.substr(area+1,INDate.indexOf(separate,area+1)-(area+1))
		if(isNaN(subMM) || subMM<=0){
		return true;
	}
		if(subMM.length<2){subMM="0"+subMM}
	//转换日
	area=INDate.lastIndexOf(separate)
	subDD=INDate.substr(area+1,INDate.length-area-1)
	if(isNaN(subDD) || subDD<=0){
		return true;
	}
	if(eval(subDD)<10){subDD="0"+eval(subDD)}
	NewDate=subYY+"-"+subMM+"-"+subDD
	if(NewDate.length!=10){return true;}
    if(NewDate.substr(4,1)!="-"){return true;}
    if(NewDate.substr(7,1)!="-"){return true;}
	var MM=NewDate.substr(5,2);
	var DD=NewDate.substr(8,2);
	if((subYY%4==0 && subYY%100!=0)||subYY%400==0){ //判断是否为闰年
		if(parseInt(MM)==2){
			if(DD>29){return true;}
		}
	}else{
		if(parseInt(MM)==2){
			if(DD>28){return true;}
		}	
	}
	var mm=new Array(1,3,5,7,8,10,12); //判断每月中的最大天数
	for(i=0;i< mm.length;i++){
		if (parseInt(MM) == mm[i]){
			if(parseInt(DD)>31){return true;}
		}else{
			if(parseInt(DD)>30){return true;}
		}
	}
	if(parseInt(MM)>12){return true;}
   return false;
  }

function jobValidate(){
	//alert(jobForm.job.value);
	//return false;
	if(jobForm.name.value==""){
		alert("请添写姓名！");		
		jobForm.name.focus();
		return false;
	}
	if(jobForm.job.value==""){
		alert("请添写职位！");		
		jobForm.job.focus();
		return false;
	}
	if(jobForm.specialty.value==""){
		alert("请添写所学专业！");		
		jobForm.specialty.focus();
		return false;
	}
	if(jobForm.experience.value==""){
		alert("请添写工作经验！");		
		jobForm.experience.focus();
		return false;
	}
	if(jobForm.studyeffort.value==""){
		alert("请添写学历！");		
		jobForm.studyeffort.focus();
		return false;
	}
	if(jobForm.school.value==""){
		alert("请添写毕业学校！");		
		jobForm.school.focus();
		return false;
	}
	if(jobForm.tel.value==""){
		alert("请添写电话！");		
		jobForm.tel.focus();
		return false;
	}
	if(isNaN(jobForm.tel.value))
	{
	  alert("电话只能填写数字！");
	  jobForm.tel.focus();
	  return false;
	}
	if(jobForm.email.value==""){
		alert("请添写Email！");		
		jobForm.email.focus();
		return false;
	}
	var email = jobForm.email.value;
	  if (email != "") {
        var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	     isok= reg.test(email );
	       if (!isok) {
	            alert("邮箱格式不正确，请重新输入！");
	            return false;
	        }
	    };

	return true;
}
function adminChecked(){
	if(userForm.isadminhelp.checked){
		document.userForm.isadmin.value="1";
	}else{
		document.userForm.isadmin.value="0";
	}
}
function performanceValidate(){
	if(performanceForm.score.value==""){
		alert("请添写绩效分数！");		
		performanceForm.score.focus();
		return false;
	}
	if(isNaN(performanceForm.score.value))
		{
		  alert("绩效分数只能填写数字！");
		  performanceForm.score.focus();
		  return false;
		}
	if(performanceForm.addmoney.value==""){
		alert("请添写增加工资金额！");		
		performanceForm.addmoney.focus();
		return false;
	}
	if(isNaN(performanceForm.addmoney.value))
	{
	  alert("增加工资金额只能填写数字！");
	  performanceForm.addmoney.focus();
	  return false;
	}
	if(performanceForm.content.value==""){
		alert("请添写绩效说明！");		
		performanceForm.content.focus();
		return false;
	}
	if(CheckDate(performanceForm.createtime.value)){
		alert("输入的日期不合法！（年-月-日）");
		performanceForm.createtime.focus();
		return false;
	}
	return true;
}

