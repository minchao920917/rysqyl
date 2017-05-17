<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
session.removeAttribute("admin");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>后台管理系统登录 </TITLE>
<STYLE>
TD {
	FONT-SIZE: 11px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serIf; TEXT-DECORATION: none
}
.input_1 {
	BORDER-RIGHT: #999999 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #999999 1px solid; PADDING-LEFT: 2px; LIST-STYLE-POSITION: inside; FONT-SIZE: 12px; PADDING-BOTTOM: 2px; MARGIN-LEFT: 10px; BORDER-LEFT: #999999 1px solid; COLOR: #333333; PADDING-TOP: 2px; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: Arial, Helvetica, sans-serIf; LIST-STYLE-TYPE: none; HEIGHT: 18px; BACKGROUND-COLOR: #dadedf
}
.STYLE2 {
	font-size: 14px;
	font-weight: bold;
}
</STYLE>
<META content="MSHTML 6.00.6000.16705" name=GENERATOR>
</HEAD>
<BODY onLoad="f1.uname.focus();">
 <FORM name=f1 action="/rysqyl/rysqyl?ac=login" method=post>
<TABLE cellSpacing=0 cellPadding=0 width=651 align=center border=0>
  <TBODY>
  
  <TR>
    <TD height=50></TD>
  </TR>
  <TR>
    <TD height=351><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        
        <TR>
          <TD width=15 background=/rysqyl/admin/images/ileft.gif height=43></TD>
          <TD width=620 background=/rysqyl/admin/images/i_topbg2.gif></TD>
          <TD width=16><IMG height=43 src="/rysqyl/admin/images/iright.gif" 
            width=16></TD>
        </TR>
        <TR>
          <TD background=/rysqyl/admin/images/ileftbg.gif></TD>
          <TD vAlign=center background=/rysqyl/admin/images/bg.gif height=279><TABLE height=109 cellSpacing=0 cellPadding=0 width=369 align=center 
            border=0>
            
            
            <tr>
            <td height="30"  colspan="2" align="center"><span class="STYLE2">医院门诊管理系统</span></td>
            </tr>            
            
              <TBODY>
              
              <TR>
                <TD width=155><IMG height=140 
                  src="/rysqyl/admin/images/logo.jpg" width=155  
                  border=0></TD>
                <TD vAlign=top align=left width=214><TABLE cellSpacing=0 cellPadding=0 width=167 border=0>
                    <TBODY>
                    <TR>
                      <TD width="167" height=123><TABLE height=109 cellSpacing=0 cellPadding=0 
                        align=center border=0>
                         
                            
                              <TR>
                                <TD vAlign=bottom align=left width=44 height=28><DIV align=right><IMG height=14 
                              src="/rysqyl/admin/images/id.gif" width=43></DIV></TD>
                                <TD vAlign=bottom align=left width=114 
                              height=28><INPUT class=input_1 id=uname size=15 
                              name=uname>                                </TD>
                              </TR>
                              <TR>
                                <TD align=left height=20><DIV align=right><IMG height=14 
                              src="/rysqyl/admin/images/pass.gif" 
                            width=43></DIV></TD>
                                <TD height=20><INPUT class=input_1 id=password 
                              type=password size=15 name=upass>
                              
                              <INPUT class=input_1 value="0" type=hidden size=15 name=utype>                              </TD>
                              </TR>
                              <TR>
                                <TD vAlign=center colSpan=2 height=25><DIV align=center>
                                    <INPUT type=image 
                              src="/rysqyl/admin/images/b_login.gif" name=denglu>
                                    <IMG style="CURSOR: hand" 
                              onclick=document.form1.reset() height=21 
                              src="/rysqyl/admin/images/b_clean.gif" width=73> </DIV></TD>
                              </TR>
                          
                          
                        </TABLE></TD>
                    </TR>
                    </TBODY>
                  </TABLE></TD>
              </TR>
              </TBODY>
            </TABLE></TD>
          <TD background=/rysqyl/admin/images/irightbg.gif></TD>
        </TR>
        <TR>
          <TD><IMG height=29 src="/rysqyl/admin/images/i_bottom_left.gif" 
            width=15></TD>
          <TD background=/rysqyl/admin/images/i_bottom_bg.gif></TD>
          <TD width=16><IMG height=29 
            src="/rysqyl/admin/images/i_bottom_right.gif" 
      width=16></TD>
        </TR>
        </TBODY>
      </TABLE></TD>
  </TR>
  <TR>
    <TD height=1></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>


</FORM>
</BODY>
</HTML>

<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 </script>


