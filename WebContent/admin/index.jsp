<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
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
<%
HashMap admin = (HashMap)session.getAttribute("admin");
HashMap user = Info.getUser(request);
 %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="74" colspan="2" background="/rysqyl/admin/images/index1_03.gif">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" rowspan="2">&nbsp;</td>
          <td width="31%" rowspan="2"><span class="STYLE1">
          
          <font color="grey" size="5" style="font-weight: 900;FONT-FAMILY: 华文行楷">&nbsp;&nbsp;&nbsp;&nbsp;医院门诊管理系统</font></span></td>
          <td width="6%" rowspan="2">&nbsp;</td>
          <td width="61%" height="38" align="right">&nbsp;</td>
        </tr>
        <tr>
          <td align="right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="right" class="font2">&nbsp;&nbsp;登陆用户：<%=admin.get("uname") %>&nbsp;|&nbsp;身份：<%=Info.getUser(request).get("utype") %>&nbsp;|&nbsp;<a href="/rysqyl/admin/login.jsp" class="font2"><strong>退出</strong></a>&nbsp;</td>
              </tr>
            </table>          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <table width="100%" border="0" cellspacing="10" cellpadding="0">
        <tr>
          <td width="10%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_23.gif" width="8" height="29" /></td>
                <td width="99%" background="/rysqyl/admin/images/index1_24.gif"></td>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_26.gif" width="8" height="29" /></td>
              </tr>
              <tr>
                <td background="/rysqyl/admin/images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="padding:0 2px 0 2px; vertical-align:top;height:500px;">
                  <table width="200" border="0" cellpadding="0" cellspacing="5">
                    
                     <%
                    if(user.get("utype").equals("收费员")){
                     %>
                    <tr  onClick="show('1')" style="cursor: hand" >
                      <td width="12%" align="center"><img src="/rysqyl/admin/images/index1_54.gif" width="15" height="11" /></td>
                      <td width="88%">收费管理</td>
                    </tr>
                    <tr id="1@1">
                      <td align="center"></td>
                      <td>
                        <table width="100%" border="0" cellspacing="5" cellpadding="0">
                 
                           <tr onClick="change('收费管理 > 药品费收取')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="ysoufeicx.jsp" target="main">药品费收取</a></td>
                          </tr>

                        <tr onClick="change('收费管理 > 诊疗费收取')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="zsoufeicx.jsp" target="main">诊疗费收取</a></td>
                          </tr>
                        <tr onClick="change('收费管理 > 挂号费收取')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="gsoufeicx.jsp" target="main">挂号费收取</a></td>
                          </tr>
                          
                            <tr onClick="change('系统管理 > 修改个人信息')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="pupsysuser.jsp" target="main">修改个人信息</a></td>
                          </tr>
                          
                           <tr onClick="change('系统管理 > 修改登录密码')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="uppass.jsp" target="main">修改登录密码</a></td>
                          </tr>
                          
                 
                        </table>
                      </td>
                    </tr>
                    <%} %>
                    
                     <%
                    if(user.get("utype").equals("医生")){
                     %>
                    <tr  onClick="show('2')" style="cursor: hand" >
                      <td width="12%" align="center"><img src="/rysqyl/admin/images/index1_54.gif" width="15" height="11" /></td>
                      <td width="88%">病历管理</td>
                    </tr>
                    <tr id="2@1">
                      <td align="center"></td>
                      <td>
                        <table width="100%" border="0" cellspacing="5" cellpadding="0">
                 
                           <tr onClick="change('病历管理 > 病历基本信息管理')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="blcx.jsp" target="main">病历基本信息管理</a></td>
                          </tr>
                          
                           <tr onClick="change('病历管理 > 用药信息管理')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="yongyaocx.jsp" target="main">用药信息管理</a></td>
                          </tr>
                          
                            <tr onClick="change('系统管理 > 修改个人信息')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="pupsysuser.jsp" target="main">修改个人信息</a></td>
                          </tr>
                          
                           <tr onClick="change('系统管理 > 修改登录密码')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="uppass.jsp" target="main">修改登录密码</a></td>
                          </tr>
                          
                          
                        </table>
                      </td>
                    </tr>
                    <%} %>
                    
                   
                     <%
                    if(user.get("utype").equals("药品管理员")){
                     %>
                    <tr  onClick="show('3')" style="cursor: hand" >
                      <td width="12%" align="center"><img src="/rysqyl/admin/images/index1_54.gif" width="15" height="11" /></td>
                      <td width="88%">药品管理</td>
                    </tr>
                    <tr id="3@1">
                      <td align="center"></td>
                      <td>
                        <table width="100%" border="0" cellspacing="5" cellpadding="0">
                 
                           <tr onClick="change('药品管理 > 药品基本信息管理')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="yaopincx.jsp" target="main">药品基本信息管理</a></td>
                          </tr>
                          
                            <tr onClick="change('系统管理 > 修改个人信息')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="pupsysuser.jsp" target="main">修改个人信息</a></td>
                          </tr>
                          
                           <tr onClick="change('系统管理 > 修改登录密码')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="uppass.jsp" target="main">修改登录密码</a></td>
                          </tr>
                          
                        </table>
                      </td>
                    </tr>
                    <%} %>
                    
                    
                   
                    
                    <%
                    if(user.get("utype").equals("管理员")){
                     %>
                    <tr  onClick="show('4')" style="cursor: hand" >
                      <td width="12%" align="center"><img src="/rysqyl/admin/images/index1_54.gif" width="15" height="11" /></td>
                      <td width="88%">系统管理</td>
                    </tr>
                      
                    <tr id="4@1">
                      <td align="center"></td>
                      <td>
                        <table width="100%" border="0" cellspacing="5" cellpadding="0">
                        
                         <tr onClick="change('用户管理 > 工作人员管理')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="workscx.jsp" target="main">工作人员管理</a></td>
                          </tr>
                          
                          <tr onClick="change('用户管理 > 管理员用户信息')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="sysusercx.jsp" target="main">管理员用户信息</a></td>
                          </tr>
                          
                            <tr onClick="change('系统管理 > 修改个人信息')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="pupsysuser.jsp" target="main">修改个人信息</a></td>
                          </tr>
                          
                           <tr onClick="change('系统管理 > 修改登录密码')" style="cursor: hand" >
                            <td width="18%" align="center"><img src="/rysqyl/admin/images/index1_68.gif" width="11" height="14" /></td>
                            <td width="82%"><a href="uppass.jsp" target="main">修改登录密码</a></td>
                          </tr>
                        
                        </table>
                      </td>
                    </tr>
                   <%} %>
                   
                   
                   
                  </table>
                </td>
                <td background="/rysqyl/admin/images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_91.gif" width="8" height="8" /></td>
                <td background="/rysqyl/admin/images/index1_92.gif"></td>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
          <td width="70%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_23.gif" width="8" height="29" /></td>
                <td width="99%" background="/rysqyl/admin/images/index1_24.gif"></td>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_26.gif" width="8" height="29" /></td>
              </tr>
              <tr height="200">
                <td height="500" background="/rysqyl/admin/images/index1_45.gif"></td>
                <td width="99%" bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
                  <table width="100%" border="0" cellspacing="10" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C4E7FB">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
                                <tr>
                                  <td height="20">&nbsp;
                                  
                                  &nbsp;&nbsp;&nbsp;您当前的位置：
                                  <div style="display: inline;" id="c">医院门诊管理系统</div>
                                  
                                  
                                  </td>
                                </tr>
                              </table>                            </td>
                          </tr>
                        </table>                      </td>
                    </tr>
                    <tr>
                      <td>
                     
                      <iframe width="100%" scrolling="no" frameborder="0" height="340" src="uppass.jsp"  style=background:transparent allowtransparency name="main"></iframe>   
                        
                     </td>
                    </tr>
                </table>                </td>
                <td background="/rysqyl/admin/images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_91.gif" width="8" height="8" /></td>
                <td background="/rysqyl/admin/images/index1_92.gif"></td>
                <td width="8" height="8"><img src="/rysqyl/admin/images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
