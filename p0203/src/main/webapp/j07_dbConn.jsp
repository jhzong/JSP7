<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>member 테이블</title>
		<style type="text/css">
			table,th,td{border: 1px solid black; border-collapse: collapse; text-align: center;}
			table{width: 1000px; margin: 30px auto;}
			th,td{width: 100px; height: 40px;}
		</style>
	</head>
	<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>전화</th>
			<th>이메일</th>
			<th>성별</th>
			<th>취미</th>
		</tr>

<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "";
		String id="",pw="",name="",phone="",email="",gender="",hobby="";
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
			conn = ds.getConnection();
			query = "select * from member";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				id=rs.getString("id");
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				email=rs.getString("email");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				//out.println(id+","+pw+","+name+","+phone+","+email+","+gender+","+hobby+"<br>");
%>
			<tr>
				<td><%=id %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
				<td><%=phone %></td>
				<td><%=email %></td>
				<td><%=gender %></td>
				<td><%=hobby %></td>
			</tr>
<%
			}
			
		} catch (Exception e) {e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
%>
		</table>
	</body>
</html>