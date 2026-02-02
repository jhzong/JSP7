package com.java.www;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.jasper.compiler.Node.DoBodyAction;

// servlet파일-getpost방식
@WebServlet("/program2")
public class program2 extends HttpServlet {
    
    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get/Post");
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>html화면</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>서브페이지</h2>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get방식으로 들어온 페이지");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post방식으로 들어온 페이지");
		String name = request.getParameter("name");
		System.out.println(name);
		System.out.println("입력받은 데이터를 확인하세요.");
		doAction(request,response);
	}

}
