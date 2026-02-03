<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
		<%
			//모든쿠키 불러오기
			Cookie[] cookies = request.getCookies();
			
			//쿠키삭제
			if(cookies != null){
				//배열for문
				for(Cookie cookie:cookies){
					//해당쿠키1개 삭제
					if(cookie.getName().equals("cook_id")){
						out.println("cook_id가 존재함");
						//쿠키시간 재설정
						cookie.setMaxAge(0);
						//쿠키설정 로컬에 저장해야 삭제완료
						response.addCookie(cookie);
					}
				}
				out.println("--------------------------------<br>");
				//모든 쿠키삭제
				for(Cookie cookie:cookies){//배열for문
					out.println(cookie.getName()+"쿠키삭제<br>");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		%>
		<a href="./cookieView.jsp"><button>쿠키확인</button></a>
	</body>
</html>