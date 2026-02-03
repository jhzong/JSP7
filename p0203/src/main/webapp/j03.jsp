<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세션저장</title>
	</head>
	<body>
		<h2>생성할 세션입력</h2>
		<form action="./j03_01.jsp" method="post" name="frm">
			<input type="text" name="session_id" placeholder="아이디 입력"><br>
			<input type="text" name="session_name" placeholder="이름 입력"><br>
			<input type="submit" value="세션추가하기">
		</form>
		<a href="./j03_02.jsp"><button>세션확인</button></a>
	
	</body>
</html>