<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp태그 - 스크립트릿</title>
	</head>
	<body>
		<h2>jsp태그 - 5가지 주석,스크립트릿,표현식,선언식,지시자,액션태그</h2>
		<%-- 1.jsp주석:실행시 코드에 주석 안보임 --%>
		<%-- html주석:실행시 코드에 주석 보임 --%>
		<!-- 2.스크립트릿 -->
		<% 
			int[] num = {1,2,3};
			int a = 10;
			Arrays.toString(num);
			// 스크립트릿에서 외부로 출력
			out.println(Arrays.toString(num));
		%>
		<!-- 3.표현식 -->
		<h4><%= a %></h4> 
		<!-- 4.선언식:변수,메소드선언 변수:전역변수-->
		<!-- 선언식은 무조건 외부출력 -->
		<%! int b = 10; %>
		<!-- 5.지시자 -->
		<%@ %>
		
	</body>
</html>