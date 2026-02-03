<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
		<h2>쿠키삭제</h2>
		<%	
			//쿠키 삭제 소스
			String key = request.getParameter("cookie_key");
			Cookie[] cookies = request.getCookies();
			int temp=0;
			for(Cookie cookie:cookies){
				if(cookie.getName().equals(key)){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
					out.println(key+"의 쿠키 삭제완료<br>");
					temp=1;
				}
			}
			
			if(temp==0){
				out.println("해당 쿠키가 없습니다.<br>");
			}
		%>
		<br>		
		<a href="./j02_02.jsp"><button>쿠키확인</button></a>
	</body>
</html>