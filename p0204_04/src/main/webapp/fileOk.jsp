<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>업로드완료</h2>
		<%
		//request.getParameter("title");
		//String uploadPath = "C:/Users/KOSMO/git/JSP7/p0204/src/main/webapp/upload";
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
		int size = 10*1024*1024;// 1kb=1024b,1mb=1024kb
		
		MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		%>
	</body>
</html>