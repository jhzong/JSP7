<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DB연결	</title>
	</head>
	<body>
		<!-- board테이블 출력 -->
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String uid = "ora_user";
			String upw = "1111";
			String query = "";
			int bno=0,bgroup=0,bstep=0,bindent=0,bhit=0;
			String btitle="",bcontent="",id="",bfile="";
			Timestamp bdate = null;
		%>
		<%
			try {
				//DB커넥션 부분의 속도가 가장 늦음
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				query = "select * from board order by bno";
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
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
					
					out.println(bno+","+btitle+","+bcontent+","+id+","+bgroup+","+bstep+","+bindent+","+bhit+","+bfile+","+bdate+"<br>");
				}
				
			} catch (Exception e) {e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {e2.printStackTrace();}
			}
		%>
	</body>
</html>