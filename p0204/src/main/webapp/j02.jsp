<%@page import="java.sql.Timestamp"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse; text-align: center;}
			table{width: 1000px; margin: 30px auto;}
			th,td{width: 100px; height: 40px;}
		</style>
	</head>
	<body>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>아이디</th>
			<th>그룹</th>
			<th>스텝</th>
			<th>답글</th>
			<th>조회수</th>
			<th>파일</th>
			<th>작성일</th>
		</tr>
	<%
	Connection conn = null;			//DB연결
	PreparedStatement pstmt = null;	//SQL구문실행
	ResultSet rs = null;			//결과값
	int bno=0,bgroup=0,bstep=0,bindent=0,bhit=0;
	String btitle="",bcontent="",id="",bfile="";
	Timestamp bdate=null;
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
		//DB연결
		conn = ds.getConnection();
		//SQL구문실행
		String query = "select * from board order by bno";
		pstmt = conn.prepareStatement(query);
		//결과값리턴
		rs = pstmt.executeQuery();
		while(rs.next()){
			//int bno=0,bgroup=0,bstep=0,bindent=0,bhit=0;
			//String btitle="",bcontent="",id="",bfile="";
			//Timestamp bdate=null;
			bno=rs.getInt("bno");
			btitle=rs.getString("btitle");
			bcontent=rs.getString("bcontent");
			id=rs.getString("id");
			bgroup=rs.getInt("bgroup");
			bstep=rs.getInt("bstep");
			bindent=rs.getInt("bindent");
			bhit=rs.getInt("bhit");
			bfile=rs.getString("bfile");
			bdate=rs.getTimestamp("bdate");
			//out.println(bno+","+btitle+","+bcontent+","+id+","+bgroup+","+bstep+","+bindent+","+bhit+","+bfile+","+bdate+"<br>");
%>			
			<tr>
				<td><%=bno %></td>
				<td><%=btitle %></td>
				<td><%=bcontent %></td>
				<td><%=id %></td>
				<td><%=bgroup %></td>
				<td><%=bstep %></td>
				<td><%=bindent %></td>
				<td><%=bhit %></td>
				<td><%=bfile %></td>
				<td><%=bdate %></td>
			</tr>
<% 			
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	%>
	
		
	</table>
	
	</body>
</html>