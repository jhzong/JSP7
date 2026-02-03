<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인확인</title>
	</head>
	<body>
		<h2>로그인확인</h2>
		<h3>아이디 : <%=request.getParameter("id") %></h3>
		<h3>패스워드 : <%=request.getParameter("pw") %></h3>
		
		<!-- aaa,1111이면 세션추가 : session_id redirect->j03.jsp -->
		<!-- aaa,1111 아니면 redirect->login.jsp -->
		<%	
			String id= request.getParameter("id");
			String pw= request.getParameter("pw");
			if(id.equals("aaa") && pw.equals("1111")){
				session.setAttribute("session_id", id);
				response.sendRedirect("j03.jsp");
			}else{
				response.sendRedirect("login.jsp");
			}
		%>
	</body>
</html>