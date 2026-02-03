<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인확인</title>
	</head>
	<body>
		<h2>로그인결과</h2>
		<p>아이디 : <%= request.getParameter("id") %></p>
		<p>패스워드 : <%= request.getParameter("pw") %></p>
		<%
			String cookie_id = request.getParameter("id");
			String cook_save = "아이디 저장 X";
			if(request.getParameterValues("cook_save")!=null){
				cook_save=request.getParameterValues("cook_save")[0];
				//쿠키저장
				//cookie 생성
				Cookie cookie = new Cookie("cookie_id",cookie_id);
				//cookie 시간설정
				cookie.setMaxAge(60*60);
				//cookie 저장
				response.addCookie(cookie);
			}else{
				//쿠키삭제
				Cookie[] cookies = request.getCookies();
				for(Cookie cookie:cookies){
					if(cookie.getName().equals("cookie_id")){
						cookie.setMaxAge(0);
						//쿠키설정 로컬에 저장해야 삭제완료
						response.addCookie(cookie);
					}
				}
			}
		%>
		<p>"아이디저장" 확인 : <%= cook_save %></p>
		<%-- "아이디저장"을 채크했을때 쿠키저장 --%>
		<%-- cookie_id --%>
		
		<a href="./login.jsp"><button>로그인페이지</button></a>
		
	</body>
</html>