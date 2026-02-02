<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp 스트립트릿</title>
		<style>
			table,tr,td{border: 1px solid black; border-collapse:collapse;}
			table{width:500px; text-align: center;}
			th,td{width:100px; height:40px;}
		</style>
	</head>
	<body>
		<h2>스크립트릿</h2>
		<table>
		<% for(int j=2;j<10;j++){ %>
			<tr>
				<td colspan="5"><% out.println(j+"단"); %></td>
			</tr>
			<% for(int i=1;i<10;i++){ %>
				<tr>
					<td><% out.println(j); %></td>
					<td><% out.println("X"); %></td>
					<td><% out.println(i); %></td>
					<td><% out.println("="); %></td>
					<td><% out.println(j*i); %></td>
				</tr>
			<% } %>
		<% } %>
		</table>
	</body>
</html>