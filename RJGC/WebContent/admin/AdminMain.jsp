<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "JavaBeans.DisPlayDao" %>
<%@ page import = "JDBCUtil.MyConnection" %>
<%@ page import = "JavaBeans.DoDisPlay" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<style type="text/css">
		.div1{
			margin: 20px 10px 20px 30px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
		}
		.div2{
			margin: 20px 10px 20px 30px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1450px;
			height: 900px;
		}
		.div3{
			margin-top:40px;
			margin-left:70px;
			margin-right:10px;
			margin-bottom:10px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1300px;
			height: 50px;
		}
		.div4{
			margin: 10px 10px 20px 70px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1300px;
			height: 650px;
		}
		.div5{
			margin-top:40px;
			margin-left:70px;
			margin-right:10px;
			margin-bottom:10px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1300px;
			height: 50px;
		}
		.div6{
			margin-top:20px;
			margin-left:130px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1000px;
			height: 50px;
			text-align: center;
		}
		.div7{
			margin-top:20px;
			margin-left:130px;
			border-style: solid;
			border-width: 2px;
			border-color: blue;
			width: 1000px;
			height: 550px;
			text-align: center;
		}
		.div8{
			margin-top:10px;
			margin-left:130px;
			border-style: none;
			width: 150px;
			height: 35px;
			display: inline;
		}
		.button1{
			width: 150px;
			height: 35px;
			background: none;
		}
		.button2{
			background: none;
		}
		body{
			background-size: cover;
		}
	</style>
</head>
<body background="images/bg.jpg">
	<h1 align="center" style="color: blue;">欢迎来到毕业设计OA系统教师端</h1>
	<div class="div1"></div>
	<div class="div2">
		<div class="div3">
			<form action="servlet/DoSuoYin" method="post">
				<input type="text" name="suoyin" value="" placeholder="输入关键字">
				<input type="button" class="button2"  value="查询">
			</form>
		</div>
		<div class="div4">
				<div class="div6">
					<table border="0px" width="1000px" height="20px" align="center">
	    				<tr>
			     			<td width="140px">题目编号</td>
			     			<td width="140px">题目名称</td>
			     			<td width="140px">总选人数</td>
			     			<td width="140px">已选人数</td>
			     			<td width="140px">所属专业</td>
			     			<td width="140px">指导教师</td>
			     			<td width="140px">修改/删除</td>
	     				</tr>
	   				 </table>
				</div>
				<div class="div7">
					<jsp:useBean id="dodisplay" class="JavaBeans.DisPlayDao"></jsp:useBean>
					<%
						request.setCharacterEncoding("utf-8");
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/oa","root","123");
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery("select * from timu");
						while(rs.next()){
						%>	
						<table border="0px" width="1000px" height="20px" align="center">
	    				<tr>
			     			<td width="200px"><%=rs.getString("tid")%></td>
			     			<td width="200px"><%=rs.getString("tname")%></td>
			     			<td width="200px"><%=rs.getInt("total_number")%></td>
			     			<td width="200px"><%=rs.getInt("optional_number")%></td>
			     			<td width="200px"><%=rs.getString("major")%></td>
			     			<td width="200px"><%=rs.getString("teacher")%></td>
			     			<td width="200px"><button class="button2">修改</button><button class="button2">删除</button></td>
	     				</tr>
	   				 </table>
						<% }	
					%>
				</div>
		</div>
		<div class="div5">
			<div class="div8">
					<button class="button1" onclick="window.location='/RJGC/zsgc/Add.jsp'">出题</button>
			</div>
			<div class="div8">
				<button class="button1" onclick="window.location='/RJGC/zsgc/Open.jsp'">开题</button>
			</div>
			<div class="div8">
				<button class="button1" onclick="window.location='/RJGC/zsgc/Score.jsp'">评分</button>
			</div>
			<div class="div8">
				<button class="button1" onclick="window.location='/RJGC/zsgc/SaveDocument.jsp'">存档</button>
			</div>
		</div>
	</div>
</body>
</html>