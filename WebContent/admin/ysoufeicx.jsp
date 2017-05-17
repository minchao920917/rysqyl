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

		if (top.location != self.location) {

			var a = window.parent.document.getElementsByTagName('iframe');

			for (var i = 0; i < a.length; i++) {

				if (a[i].name == self.name) {
					a[i].height = document.body.scrollHeight + 320;
					return;
				}
			}
		}
	}
</script>
<script language=javascript>
	function show(no) {
		for (var i = 1; i < 20; i++) {
			var a = document.getElementById(no + "@" + i);
			if (a == null) {
				continue;
			}
			if (a.style.display == "") {
				a.style.display = "none";
			} else {
				a.style.display = "";
			}
		}

	}
</script>
<script type="text/javascript">
	function showzhi(inn) {
		var a = document.getElementById("loca");
		a.innerHTML = inn;
	}
	function change(no) {
		var c = document.getElementById("c");
		c.innerHTML = no;
	}
</script>

</head>
<body>


	<form id="form1" name="f1" method="post" action="ysoufeicx.jsp">
		<table width="100%" border="0" cellpadding="0" cellspacing="1"
			bgcolor="#BBD3EB">
			<tr>
				<td colspan=6 height="33" align="left" bgcolor="#FFFFFF"><label></label>&nbsp;&nbsp;&nbsp;
					<%
					    String pblno = request.getParameter("blno")==null?"":request.getParameter("blno"); 
					String startblno = request.getParameter("startblno")==null?"":request.getParameter("startblno"); 
					String endblno = request.getParameter("endblno")==null?"":request.getParameter("endblno");
					%> <%
     HashMap mmm = new HashMap();
 %> 病历编号 &nbsp;:&nbsp; <%=Info.getselect("blno","bl","blno"," 1=1 ")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;<input type=submit class='' value='查询信息' />
					&nbsp;&nbsp;<input type=button class='' value='添加信息'
					onclick="add();" /> &nbsp;&nbsp;</td>
			</tr>
		</table>


		<label></label> <br />


		<table width="100%" border="0" cellpadding="0" cellspacing="1"
			bgcolor="#BBD3EB">
			<tr>
				<td height="27" align="center"
					background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">病历编号</td>
				<td height="27" align="center"
					background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">药品名称</td>
				<td height="27" align="center"
					background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">实收费用</td>
				<td height="27" align="center"
					background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">备注</td>
				<td height="27" align="center"
					background="/rysqyl/admin/images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
			</tr>



			<%
			    new CommDAO().delete(request,"soufei"); 
			if(request.getParameter("infotypeid1")!=null){ 
			 new CommDAO().commOper("update soufei set infotype ='' where id="+request.getParameter("infotypeid1"));  
			} 
			if(request.getParameter("infotypeid2")!=null){ 
			 new CommDAO().commOper("update soufei set infotype ='' where id="+request.getParameter("infotypeid2"));  
			}
			if(request.getParameter("infotypeid3")!=null){ 
			    new CommDAO().commOper("update soufei set infotype ='' where id="+request.getParameter("infotypeid3"));  
			   } 
			String sql = "select * from soufei where 1=1 " ;
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
			  sql +="  and (1!=1 " ; 
			  sql +="  or  infotype like'%药品%' " ;
			  sql +="  ) ";
			  sql +="  and (1!=1 " ; 
			  sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
			  sql +=" order by id desc ";
			String url = "ysoufeicx.jsp?1=1&blno="+pblno+""; 
			ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
			for(HashMap map:list){
			    
			%>
			<tr>

				<td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("blno")%></td>
				<td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("yaoping")%></td>
				<td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("ss")%></td>
				<td height="28" align="center" bgcolor="#FFFFFF"><%=map.get("bei")%></td>
				<td height="28" align="center" bgcolor="#FFFFFF"><a
					href="javascript:update('<%=map.get("id")%>')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
					onclick="return confirm('确定要删除这条记录吗?')"
					href="ysoufeicx.jsp?scid=<%=map.get("id")%>">删除</a></td>
			</tr>
			<%
			    }
			%>

			<tr>
				<td colspan=6 height="29" align="center" bgcolor="#FFFFFF">${ page.info}</td>

			</tr>
		</table>
	</form>
</body>
</html>
<script language=javascript src='/rysqyl/js/ajax.js'></script>
<%
    mmm.put("blno",pblno);
%>
<%=Info.tform(mmm)%>
<script language=javascript>
	
</script>
<%=Info.tform(mmm)%>
<script language=javascript
	src='/rysqyl/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/rysqyl/js/popup.js'></script>
<script language=javascript>
	function update(no) {
		pop('ysoufeixg.jsp?id=' + no, '信息修改', 550, 147)
	}
</script>
<script language=javascript>
	function add() {
		pop('ysoufeitj.jsp', '信息添加', 550, 147)
	}
</script>
<%@page import="util.Info"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
