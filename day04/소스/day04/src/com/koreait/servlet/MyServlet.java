package com.koreait.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// HttpServlet 을 상속받으면 Servlet으로 사용할 수 있다.
// Servlet의 기본 구조
public class MyServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	// HttpServletRequest : 사용자가 요청한 응답객체
	// HttpServletResponse : 사용자에게 응답할 응답객체
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서블릿 매핑 성공");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h3>");
		int result = 3+5;
		out.println("서블릿으로 띄운 페이지 입니다!");
		out.println(result + "<br>");
		// 자바코드 안에서 HTML 코드를 작성시에는 불편한 점들이 생긴다.
		// 그런것들을 해결해주는 JSP 언어를 이용한다.
		out.println("<a href='index.jsp'> 초기 페이지로 돌아가기</a>");
		out.println("<a href=\"index.jsp\"> 초기 페이지로 돌아가기</a>");
		out.println();
		out.println("</h3>");
		out.println("</body>");
		out.println("</html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
	
	
}
