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
 

<form id="form1" name="f1" method="post"  action="yaopincx.jsp" >
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td colspan=8 height="33" align="left" bgcolor="#FFFFFF"><label></label>&nbsp;&nbsp;&nbsp;
<% 
String pyname = request.getParameter("yname")==null?"":request.getParameter("yname"); 
String startyname = request.getParameter("startyname")==null?"":request.getParameter("startyname"); 
String endyname = request.getParameter("endyname")==null?"":request.getParameter("endyname"); 
String psyz = request.getParameter("syz")==null?"":request.getParameter("syz"); 
String startsyz = request.getParameter("startsyz")==null?"":request.getParameter("startsyz"); 
String endsyz = request.getParameter("endsyz")==null?"":request.getParameter("endsyz"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;药品名称 &nbsp;:&nbsp; <input type=text class=''  size=20 name='yname' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;适应症 &nbsp;:&nbsp; <input type=text class=''  size=20 name='syz' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input type=button   class=''  value='添加信息' onclick="add();" /> &nbsp;&nbsp;</td>
    </tr>
</table>


<label></label>
<br />


<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">药品名称</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">制药厂</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">适应症</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">禁忌</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">用法及药效</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">单价</td>
<td height="27" align="center" background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
    </tr>
                         
                         
                        
                          <% 
new CommDAO().delete(request,"yaopin"); 
if(request.getParameter("ynameid1")!=null){ 
 new CommDAO().commOper("update yaopin set yname ='' where id="+request.getParameter("ynameid1"));  
} 
if(request.getParameter("ynameid2")!=null){ 
 new CommDAO().commOper("update yaopin set yname ='' where id="+request.getParameter("ynameid2"));  
} 
String sql = "select * from yaopin where 1=1 " ;
 if(!pyname.equals("")){ 
 sql+= " and yname like'%"+pyname+"%' " ;
 }  
 if(!startyname.equals("")){  
 mmm.put("startyname",startyname) ;
 sql+= " and yname >'"+startyname+"' " ;
 }  
 if(!endyname.equals("")){  
 mmm.put("endyname",endyname) ;
 sql+= " and yname <'"+Info.getDay(endyname,1)+"' " ;
 }  
 if(!psyz.equals("")){ 
 sql+= " and syz like'%"+psyz+"%' " ;
 }  
 if(!startsyz.equals("")){  
 mmm.put("startsyz",startsyz) ;
 sql+= " and syz >'"+startsyz+"' " ;
 }  
 if(!endsyz.equals("")){  
 mmm.put("endsyz",endsyz) ;
 sql+= " and syz <'"+Info.getDay(endsyz,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "yaopincx.jsp?1=1&yname="+pyname+"&syz="+psyz+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>

                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("yname")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("factory")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("syz")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("jj")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("bei")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("price")%></td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><a href="javascript:update('<%=map.get("id")%>')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="return confirm('确定要删除这条记录吗?')"  href="yaopincx.jsp?scid=<%=map.get("id")%>">删除</a></td>
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
mmm.put("yname",pyname); 
mmm.put("syz",psyz); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/rysqyl/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/rysqyl/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('yaopinxg.jsp?id='+no,'信息修改',550,280) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('yaopintj.jsp','信息添加',550,280) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
