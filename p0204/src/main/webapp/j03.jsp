<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드</title>
	</head>
	<body>
		<h2>파일업로드</h2>
		<form action="./fileOk.jsp" method="post" name="frm" enctype="application/x-www-form-urlencoded">
			<input type="text" name="title" placeholder="제목을 입력">
			<br>
			<input type="text" name="bfile"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>