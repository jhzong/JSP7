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
	<%	
		String uploadPath = "C:/upload";
		int size = 10*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("id");
		out.println("아이디 : "+id+"<br>");
		String btitle = multi.getParameter("btitle");
		out.println("제목 : "+btitle+"<br>");
		String bcontent = multi.getParameter("bcontent");
		out.println("내용 : "+bcontent+"<br>");
		String bfile = multi.getFilesystemName("bfile");
		out.println("파일이름 : "+bfile+"<br>");
	%>
	</body>
</html>