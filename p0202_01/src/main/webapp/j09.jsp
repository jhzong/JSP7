<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ip주소</title>
	</head>
	<body>
	<%
		out.println("컨택스트 패스 : "+request.getContextPath()+"<br>");	
		out.println("컨택스트 패스 길이 : "+request.getContextPath().length()+"<br>");	
		out.println("서버네임 : "+request.getServerName()+"<br>");	
		out.println("URL : "+request.getRequestURL()+"<br>");
		
		out.println("URI : "+request.getRequestURI()+"<br>");	
		out.println("URI길이 : "+request.getRequestURI().length()+"<br>");	
		out.println("파일명 : "+request.getRequestURI().substring(9)+"<br>");	
		out.println("파일명 : "+request.getRequestURI().substring(9)+"<br>");	
		out.println("ip주소 : "+request.getRemoteAddr()+"<br>");	
	
	%>	
	</body>
</html>