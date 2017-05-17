<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
<%HashMap user = Info.getUser(request);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>
<!-- 调用CSS，JS -->
<link href="/rysqyl/admin/images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: ;
}
.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script language="javascript">
window.onload = function() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+320; return;}}} 
} 
</script>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
function change(no)
{
var c = document.getElementById("c");
c.innerHTML=no;
}
</script>

</head>
<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"yaopin",ext,true,true); 
%>
<body>

 
<form id="form1" name="f1" method="post"  action="yaopintj.jsp?f=f&tglparentid=<%=tglparentid%>"   onsubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0"  >

<tr>
                            <td height="2" colspan="2" align="center"  >
                             </td>
    </tr></table>

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">

  

<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">药品名称</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<input type=text  class='' id='yname' name='yname' size=35 /><label id='clabelyname' />&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">制药厂</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<input type=text  class='' id='factory' name='factory' size=35 /><label id='clabelfactory' />&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">适应症</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<input type=text  class='' id='syz' name='syz' size=35 /><label id='clabelsyz' />&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">禁忌</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<input type=text  class='' id='jj' name='jj' size=35 /><label id='clabeljj' />&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">用法及药效</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<textarea  cols='35' class=''  name='bei'  ></textarea>&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">单价</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<input type=text size='8' class=''  id='price'  name='price'  onkeyup='clearNoNum(this);' onblur='clearNoNum(this);' onmouseup='clearNoNum(this);'    /><label id='clabelprice' />&nbsp;                        </label></td>
    </tr>
<tr>
                            <td width="24%" height="26" align="center" bgcolor="#FFFFFF">相关图片</td>
                            <td width="76%" height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                            &nbsp;<%=Info.getImgUpInfo(65)%>&nbsp;                        </label></td>
    </tr>

                          
                          
                          <tr>
                            <td height="30" colspan="2" align="center" bgcolor="#FFFFFF"><label>
                              <input type="submit"    name="button2" id="button2" value="提交信息" />
                              &nbsp;&nbsp;&nbsp;
                              <input type=button value='返回上页' onclick='popclose();' />
                            </label></td>
    </tr>
</table>
 

   
</form>                 
</body>
</html>
 <script language=javascript src='/rysqyl/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/rysqyl/js/popup.js'></script>
<script language=javascript src='/rysqyl/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var ynameobj = document.getElementById("yname");  
if(ynameobj.value==""){  
document.getElementById("clabelyname").innerHTML="&nbsp;&nbsp;<font color=red>请输入药品名称</font>";  
return false;  
}else{
document.getElementById("clabelyname").innerHTML="  ";  
}  
  
var factoryobj = document.getElementById("factory");  
if(factoryobj.value==""){  
document.getElementById("clabelfactory").innerHTML="&nbsp;&nbsp;<font color=red>请输入制药厂</font>";  
return false;  
}else{
document.getElementById("clabelfactory").innerHTML="  ";  
}  
  
var syzobj = document.getElementById("syz");  
if(syzobj.value==""){  
document.getElementById("clabelsyz").innerHTML="&nbsp;&nbsp;<font color=red>请输入适应症</font>";  
return false;  
}else{
document.getElementById("clabelsyz").innerHTML="  ";  
}  
  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入单价</font>";  
return false;  
}else{
document.getElementById("clabelprice").innerHTML="  ";  
}  
  
var priceobj = document.getElementById("price");  
if(priceobj.value!=""){  
if(isNaN(priceobj.value)){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>单价只能是数字</font>";  
return false;
}else{  
document.getElementById("clabelprice").innerHTML="";  
}  
}  
var zhwystr = '';  
var zhwystrvalue = '';  
zhwystr+="yname"+",";  
if(document.getElementsByName("yname").length==1){  
zhwystrvalue += document.getElementById("yname").value+",";  
}else{  
for(var i=0;i<document.getElementsByName("yname").length;i++){  
if(document.getElementsByName("yname")[i].checked ){  
zhwystrvalue += document.getElementsByName("yname")[i].value+",";  
}  
}  
}  
zhwystr+="factory"+",";  
if(document.getElementsByName("factory").length==1){  
zhwystrvalue += document.getElementById("factory").value+",";  
}else{  
for(var i=0;i<document.getElementsByName("factory").length;i++){  
if(document.getElementsByName("factory")[i].checked ){  
zhwystrvalue += document.getElementsByName("factory")[i].value+",";  
}  
}  
}  
var ajax = new AJAX();
ajax.post("/rysqyl/factory/checkno.jsp?table=yaopin&col="+zhwystr+"&value="+zhwystrvalue+"&checktype=zhinsert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyname").innerHTML="&nbsp;&nbsp;<font color=red>药品名称已存在</font>";  
return false;
}else{
document.getElementById("clabelyname").innerHTML="  ";  
}  
return true;   
}   
</script>  
