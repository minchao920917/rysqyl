<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	background-color: #2286C2;
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

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight; return;}}} 
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
<body>
<form id="f1" name="f1" method="post" action="/rysqyl/rysqyl?ac=uppass">
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td width="22%" height="26" align="center" bgcolor="#FFFFFF">请输入原密码</td>
                            <td width="78%" height="26" align="left" bgcolor="#FFFFFF"><label>
                              <input type="password" name="olduserpass" id="textfield" size="30"/>
                            </label></td>
                          </tr>
                          <tr>
                            <td height="26" align="center" bgcolor="#FFFFFF">请输入新密码</td>
                            <td height="26" align="left" bgcolor="#FFFFFF">
                            <input type="password" name="userpass" id="textfield2" size="30" />
                            </td>
                          </tr>
                           <tr>
                            <td height="26" align="center" bgcolor="#FFFFFF">请重复新密码</td>
                            <td height="26" align="left" bgcolor="#FFFFFF">
                              <label>
                              
                              <input type="password" name="copyuserpass" id="textfield3" size="30" />
                              </label></td>
                          </tr>
                           <tr>
                            <td height="26" colspan="2" align="center" bgcolor="#FFFFFF">
                              <label>
                                <input type="submit" onmousedown="checkk()" name="button" id="button" value="提交信息" />
                              </label>
                                           &nbsp;&nbsp;&nbsp;           <input type="reset" name="button2" id="button2" value="重新填写" /></td>
                          </tr>
</table>   
</form>                  
</body>
</html>
<script language="javascript">
<%
	String error = (String)request.getAttribute("error");
	if(error!=null)
	{
		%>
		alert("原密码错误");
		<%
	}
%>
</script>
<script language="javascript">
<%
	String suc = (String)request.getAttribute("suc");
	if(suc!=null)
	{
	%>
	alert("操作成功");
<%}%>
</script>
 <script type="text/javascript">
   function checkk()
   {
    if(f1.oldpass.value=="")
   {
   alert("请输入原密码");
   return;
   }
   if(f1.upass.value=="")
   {
   alert("请输入新密码");
   return;
   }
   if(f1.repass.value!=f1.upass.value)
   {
   alert("两次密码输入不一致");
   return;
   }
   }
   </script>