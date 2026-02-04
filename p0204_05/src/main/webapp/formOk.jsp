<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>결과</h2>
		<%
		request.setCharacterEncoding("utf-8");
		int i = 10;
		out.println(i+100+"<br>");
		%>
		<p>el 태그사용 : ${ param.title }</p>
		<p>el 태그사용 : ${ param.name }</p>
		<p>el session : ${ sessionScope.session_id }</p>
		<p>el session : ${ session_id }</p>
		<p>el cookie : ${ cookie.cookie_id.value }</p>
		
		<p>변수선언 : ${i}</p>
		
		<p>----------------------------------------</p>
		<p>jsp request : <%=request.getParameter("title") %></p>
		<p>jsp request : <%=request.getParameter("name") %></p>
		<p>jsp session : <%=request.getParameter("session_id") %></p>
		<p>jsp cookie
		<%
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie:cookies){
			out.println("쿠키 : "+cookie.getValue()+"<br>");
		}
		%>
		</p>
		
		<p><%=i+100 %></p>
	</body>
</html>