<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.Reader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.Writer"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.FileOutputStream"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="common.css" /> 
	<link rel="stylesheet" type="text/css" href="style.css" /> 
	<script type="text/javascript" src="../factory/popup.js"></script>
    <style type="text/css">
<!--
.STYLE5 {color: orange}
-->
    </style>
</head>
   <%
   String tablename = "sysuser";
   String colname = request.getParameter("col");
   String mtype = request.getParameter("mtype");
   if(colname==null)colname=request.getParameter("colname");
   if(request.getParameter("f")!=null)
   {
   String cmc = request.getParameter("ycxcol");
   
   %>
   <script type="text/javascript">
    <%
     if(cmc!=null){
    %>
    parent.document.getElementById("<%=mtype%>-<%=colname%>").value="<%="sysuser-"+cmc%>";
    <%}%>
    popclose();
   </script>
   <%
   }
    %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="usercols.jsp?f=f&mtype=<%=mtype %>&tablename=<%=tablename %>&colname=<%=colname %>" >
  	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4" class=""  id="table1">
        
        
        <%
        String cols = "";
        
         cols = new CommDAO().getCols(tablename);
        
         %>
          
        
        <tr align="center" style="display: none">
          <td align="left" height="1"> </td>
        </tr>
        
        <tr align="center" style="display: none">
          <td align="left" height="1">  </td>
        </tr>
        
        
         <tr align="center">
          <td align="left" height="85" valign="top"> 
          
         <%
          
         int colsii = 0;
         for(String col:cols.split(",")){
        
         colsii++;
          %> 
           
           <input type="radio" value="<%=col %>" name="ycxcol" id="ycxcol-<%=col %>"  size="15">
          
          <label for="ycxcol-<%=col %>" style=" width: 85px;display: inline;text-align: center">
          <%=col %>         </label>
       
          
         
           
           <%
           if(colsii%6==0)out.print("<br />");
           
           }  
           %>                   </td>
        </tr>
         <tr align="center">
           <td align="center" height="38"  valign="top"><label> 
               <input type="submit" name="button" id="button"  style="height:21px" value="提交配置信息" />
           </label></td>
        </tr>
      </table>
  </form>
</body>
</html>
 

  