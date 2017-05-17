<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
<%
    HashMap user = Info.getUser(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>
<!-- 调用CSS，JS -->
<link href="/rysqyl/admin/images/style.css" rel="stylesheet"
	type="text/css" />
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
	background-color:;
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
			String tglparentid = request.getParameter("tglparentid") == null
					? ""
					: request.getParameter("tglparentid");
			ext.put("tglparentid", tglparentid);
			ext.put("infotype", "药品");
			ext.put("uname", Info.getUser(request).get("uname"));
			new CommDAO().insert(request, response, "soufei", ext, true, true);
%>
<body>


	<form id="form1" name="f1" method="post"
		action="ysoufeitj.jsp?f=f&tglparentid=<%=tglparentid%>"
		onsubmit="return checkform()">

		<table width="99%" border="0" align="center" cellpadding="0"
			cellspacing="0">

			<tr>
				<td height="2" colspan="2" align="center"></td>
			</tr>
		</table>

		<table width="99%" border="0" align="center" cellpadding="0"
			cellspacing="1" bgcolor="#BBD3EB">



			<tr>
				<td width="24%" height="26" align="center" bgcolor="#FFFFFF">病历编号</td>
				<td width="76%" height="26" align="left" bgcolor="#FFFFFF"><label>
						&nbsp;<%=Info.getselect("blno", "bl", "blno~无名", " 1=1 ")%> <label
						id='clabelblno' /> &nbsp;
				</label></td>
			</tr>
			<tr>
				<td width="24%" height="26" align="center" bgcolor="#FFFFFF">药品名称</td>
				<td width="76%" height="26" align="left" bgcolor="#FFFFFF"><label>
						&nbsp;<%=Info.getselect("yaopin", "yongyao", "yaoping~无名;num~数量",
					" 1=1 ")%> <script language=javascript> 
function blnochange(){ 
	document.getElementById("blno").onchange=blnochange; 
	var blnovalue = document.getElementById("blno").value; 
	var yaopinobj = document.getElementById("yaopin"); 
	yaopinobj.options.length=0; 
	var boption = new Option("不限",""); 
	yaopinobj.add(boption); 
	var ajax = new AJAX(); 
		ajax.post("/rysqyl/factory/getsonops.jsp?glb=yongyao&glzd=yaoping~无名;num~数量&jlzd=blno&jlzdb=blno&value="+blnovalue+"&ctype=select&ttime=<%=Info.getDateStr()%>
							");
								var msg = ajax.getValue();
								var msgs = msg.split("@@@");
								for (var i = 1; i < msgs.length; i++) {
									if (msgs[i] != "") {
										var option = new Option(msgs[i],
												msgs[i]);
										yaopinobj.add(option);
									}
								}
							}
						</script> <label id='clabelyaopin' /> &nbsp;
				</label></td>
			</tr>
			<tr>
				<td width="24%" height="26" align="center" bgcolor="#FFFFFF">实收费用</td>
				<td width="76%" height="26" align="left" bgcolor="#FFFFFF"><label>
						&nbsp;<input type=text size='8' class='' id='ss' name='ss'
						onkeyup='clearNoNum(this);' onblur='clearNoNum(this);'
						onmouseup='clearNoNum(this);' /><label id='clabelss' />&nbsp;
				</label></td>
			</tr>
			<tr>
				<td width="24%" height="26" align="center" bgcolor="#FFFFFF">备注</td>
				<td width="76%" height="26" align="left" bgcolor="#FFFFFF"><label>
						&nbsp;<input type=text class='' id='bei' name='bei' size=35 /><label
						id='clabelbei' />&nbsp;
				</label></td>
			</tr>



			<tr>
				<td height="30" colspan="2" align="center" bgcolor="#FFFFFF"><label>
						<input type="submit" name="button2" id="button2" value="提交信息" />
						&nbsp;&nbsp;&nbsp; <input type=button value='返回上页'
						onclick='popclose();' />
				</label></td>
			</tr>
		</table>



	</form>
</body>
</html>
<script language=javascript
	src='/rysqyl/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/rysqyl/js/popup.js'></script>
<script language=javascript src='/rysqyl/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<script language=javascript>
	blnochange();

	function checkform() {
		var blnoobj = document.getElementById("blno");
		if (blnoobj.value == "") {
			document.getElementById("clabelblno").innerHTML = "&nbsp;&nbsp;<font color=red>请输入病历编号</font>";
			return false;
		} else {
			document.getElementById("clabelblno").innerHTML = "  ";
		}

		var yaopinobj = document.getElementById("yaopin");
		if (yaopinobj.value == "") {
			document.getElementById("clabelyaopin").innerHTML = "&nbsp;&nbsp;<font color=red>请输入药品名称</font>";
			return false;
		} else {
			document.getElementById("clabelyaopin").innerHTML = "  ";
		}

		var ssobj = document.getElementById("ss");
		if (ssobj.value == "") {
			document.getElementById("clabelss").innerHTML = "&nbsp;&nbsp;<font color=red>请输入实收费用</font>";
			return false;
		} else {
			document.getElementById("clabelss").innerHTML = "  ";
		}

		return true;
	}
</script>
