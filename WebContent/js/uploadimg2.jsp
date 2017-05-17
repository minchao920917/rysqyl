<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0040)http://2school.wygk.cn/admin/syscome.asp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>欢迎进入系统后台</TITLE>
<LINK 
href="/rysqyl/admin/images/syscome.files/Admin.css" rel=stylesheet>
<SCRIPT language=javascript src="/rysqyl/admin/images/syscome.files/Admin.js"></SCRIPT>
<script type="text/javascript" src="/rysqyl/js/popup.js"></script>
<META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY>
<%
String filename = request.getParameter("filename");
if(filename!=null)
{
 %>
 <script type="text/javascript">
 var txt = parent.document.getElementById("txt2");
 var filename2 = parent.document.getElementById("filename2");
 filename2.value="<%=filename%>";
 txt.src="/rysqyl/upfile/<%=filename%>";
 popclose();
 </script>
 <%} %>
<form action="/rysqyl/rysqyl?ac=uploadimg2" enctype="multipart/form-data" name="f1" method="post">
<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center 
border=0>
 
   <TR>
    <TD align="center" class=forumrow><label>
    
    <input name="txt" type="file"  size="27">
      </label></TD>
    </TR>
  
  <TR>
    <TD height=31 align="center" class=forumrow>
      <input type="submit" name="Submit"  value="提交信息">&nbsp;&nbsp;&nbsp;<input type="reset" name="Submit" value="重新填写">    </TD>
    </TR>
  </TABLE>
</form>
</BODY></HTML>
<script type="text/javascript">
function check()
{
if(f1.olduserpass.value=="")
{
alert("请输入原密码");
return;
}
if(f1.userpass.value=="")
{
alert("请输入新密码");
return;
}
if(f1.copyuserpass.value!=f1.userpass.value)
{
alert("两次密码输入不一致");
return;
}
}
</script>
<script type="text/javascript">
<%
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 alert("原密码不对");
 <%}%>
 <%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 alert("操作成功");
  parent.location.replace("/rysqyl/admin/kcfiles.jsp");
 <%}%>
 </script>
