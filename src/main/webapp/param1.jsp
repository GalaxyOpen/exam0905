<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I'm param1.jsp</title>
</head>
<body>
	<h2>param1.jsp</h2>
	<!-- jsp에 자바코드를 쓸 순 있음. 그런데 추천하지 않음.  -->
	<!-- scriptler(스크립틀릿) = JSP에서 자바코드 작성  -->
	<% 
		// p1, p2 값 가져오기
		// spring : @ReuquestParam("p1") String p1 // 스프링 방식. 당연히 이 방식을 회사에서 쓰면 안되고 시험 칠 때만 쓸 것
		// 스프링이 없이 순수서블릿 : request.getParameter("p1")
		// 이건 꼭 기억해야 함. 
		String p1 = request.getParameter("p1");
	    String p2 = request.getParameter("p2");
	%>
	
	<!-- 스크립틀릿에서 선언한 자바 변수값 출력 -->
	<h3>전달받은 값</h3>
	<p><%=p1 %></p>
	<p><%=p2 %></p>
	
	
	
</body>
</html>