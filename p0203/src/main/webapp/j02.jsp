<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키설정</title>
	</head>
	<body>
		<h2>생성할 쿠키입력</h2>
		<form action="./j02_01.jsp" method="post" name="frm">
			<input type="text" name="cookie_key" placeholder="쿠키의 key값"><br>
			<input type="text" name="cookie_value" placeholder="쿠키의 value값"><br>
			<input type="submit" value="쿠키추가하기">
		</form>
		<a href="./j02_02.jsp"><button>쿠키확인</button></a>
		<a href="./j02_03.jsp"><button>쿠키삭제</button></a>
	</body>
</html>