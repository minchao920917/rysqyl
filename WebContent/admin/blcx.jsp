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
<body>
 

<form id="form1" name="f1" method="post"  action="blcx.jsp" >
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td colspan=8 height="33" align="left" bgcolor="#FFFFFF"><label></label>&nbsp;
<% 
String pblno = request.getParameter("blno")==null?"":request.getParameter("blno"); 
String startblno = request.getParameter("startblno")==null?"":request.getParameter("startblno"); 
String endblno = request.getParameter("endblno")==null?"":request.getParameter("endblno"); 
String pbingr = request.getParameter("bingr")==null?"":request.getParameter("bingr"); 
String startbingr = request.getParameter("startbingr")==null?"":request.getParameter("startbingr"); 
String endbingr = request.getParameter("endbingr")==null?"":request.getParameter("endbingr"); 
String psfid = request.getParameter("sfid")==null?"":request.getParameter("sfid"); 
String startsfid = request.getParameter("startsfid")==null?"":request.getParameter("startsfid"); 
String endsfid = request.getParameter("endsfid")==null?"":request.getParameter("endsfid"); 
   %>

<%
 HashMap mmm = new HashMap();%>  
&nbsp;&nbsp;病历编号 : <input type=text class=''  size=20 name='blno' />&nbsp;&nbsp;&nbsp;&nbsp; 病人 : <input type=text class=''  size=20 name='bingr' />&nbsp;&nbsp;&nbsp;&nbsp; 身份证号码 : <input type=text class=''  size=20 name='sfid' />&nbsp;&nbsp; 
&nbsp; &nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input style="display:none;" type=button   class='' value='添加信息' onclick="window.location.replace('bltj.jsp')" /> &nbsp;&nbsp;</td>
    </tr>
</table>


<label></label>
<br />


<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">病历编号</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">病人</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证号码</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">出生年月</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">诊断结果</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
    </tr>
                         
                         
                        
                          <% 
new CommDAO().delete(request,"bl"); 
if(request.getParameter("blnoid1")!=null){ 
 new CommDAO().commOper("update bl set blno ='' where id="+request.getParameter("blnoid1"));  
} 
if(request.getParameter("blnoid2")!=null){ 
 new CommDAO().commOper("update bl set blno ='' where id="+request.getParameter("blnoid2"));  
} 
String sql = "select * from bl where 1=1 " ;
 if(!pblno.equals("")){ 
 sql+= " and blno like'%"+pblno+"%' " ;
 }  
 if(!startblno.equals("")){  
 mmm.put("startblno",startblno) ;
 sql+= " and blno >'"+startblno+"' " ;
 }  
 if(!endblno.equals("")){  
 mmm.put("endblno",endblno) ;
 sql+= " and blno <'"+Info.getDay(endblno,1)+"' " ;
 }  
 if(!pbingr.equals("")){ 
 sql+= " and bingr like'%"+pbingr+"%' " ;
 }  
 if(!startbingr.equals("")){  
 mmm.put("startbingr",startbingr) ;
 sql+= " and bingr >'"+startbingr+"' " ;
 }  
 if(!endbingr.equals("")){  
 mmm.put("endbingr",endbingr) ;
 sql+= " and bingr <'"+Info.getDay(endbingr,1)+"' " ;
 }  
 if(!psfid.equals("")){ 
 sql+= " and sfid like'%"+psfid+"%' " ;
 }  
 if(!startsfid.equals("")){  
 mmm.put("startsfid",startsfid) ;
 sql+= " and sfid >'"+startsfid+"' " ;
 }  
 if(!endsfid.equals("")){  
 mmm.put("endsfid",endsfid) ;
 sql+= " and sfid <'"+Info.getDay(endsfid,1)+"' " ;
 }  
  sql +="  and (1!=1" ; 
  //sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +="  or  uname like'%sf%') " ;
  sql +=" order by id desc ";
String url = "blcx.jsp?1=1&blno="+pblno+"&bingr="+pbingr+"&sfid="+psfid+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>

                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("blno")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("bingr")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("sfid")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("sex")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("birth")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("zdjg")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><a href="blxg.jsp?id=<%=map.get("id")%>">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="display:none;" onclick="return confirm('确定要删除这条记录吗?')" href="blcx.jsp?scid=<%=map.get("id")%>">删除</a></td>
</tr>
<%}%>
                         
                          <tr>
                            <td colspan=8 height="29" align="center" bgcolor="#FFFFFF">${ page.info}</td>
                            
    </tr>
</table>      
</form>                 
</body>
</html>
 <script language=javascript src='/rysqyl/js/ajax.js'></script>
<% 
mmm.put("blno",pblno); 
mmm.put("bingr",pbingr); 
mmm.put("sfid",psfid); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/rysqyl/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/rysqyl/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('blxg.jsp?id='+no,'信息修改',550,280) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('bltj.jsp','信息添加',550,280) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
