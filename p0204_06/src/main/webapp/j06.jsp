<%@page import="com.java.www.Board"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.Member"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Board</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse; text-align: center;}
			table{width: 1200px; margin: 30px auto;}
			th,td{width: 150px; height: 40px;}
		</style>
	</head>
	<body>
<%
ArrayList<Board> list = new ArrayList();

Connection conn = null;			//DB연결
PreparedStatement pstmt = null;	//SQL구문실행
ResultSet rs = null;			//결과값
int bno=0,bgroup=0,bstep=0,bindent=0,bhit=0;
String btitle="",bcontent="",id="",bfile="";
Timestamp bdate=null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
	
	conn = ds.getConnection();//DB연결
	String query = "select * from board order by bno";
	pstmt = conn.prepareStatement(query);//SQL구문실행
	rs = pstmt.executeQuery();//결과값리턴
	while(rs.next()){
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
		list.add(new Board(bno,btitle,bcontent,id,bgroup,bstep,bindent,bhit,bfile,bdate));
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
request.setAttribute("list", list);
%>
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
		<c:forEach var="board" items="${ list }">
		<tr>
			<td>${ board.bno }</td>
			<td>${ board.btitle }</td>
			<td>${ board.bcontent }</td>
			<td>${ board.id }</td>
			<td>${ board.bgroup }</td>
			<td>${ board.bstep }</td>
			<td>${ board.bindent }</td>
			<td>${ board.bhit }</td>
			<td>${ board.bfile }</td>
			<td>${ board.bdate }</td>
		</tr>
		</c:forEach>
	</table>
	</body>
</html>