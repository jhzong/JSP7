<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 실제 에러가 아니라 에러페이지로 작성된 페이지 --%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>400에러(페이지 없음)</title>
		<style type="text/css">
			div{width: 60%; margin: 50px auto; border: 1px solid #ccc;}
			img{width: 100%}
		</style>
	</head>
	<body>
		<div>
			<img src="/p0203/images/error404.jpg">
		</div>
	</body>
</html>