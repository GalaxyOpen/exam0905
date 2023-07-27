<%@ page import ="com.icia.ex.repository.ExRepository" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I'm param2.jsp</title>
</head>
<body>
	<h2>param2.jsp</h2>
	<!-- 기본적으로 getParameter는 String으로 리턴 값을 준다.
	그래서 int로 주려면 아래처럼 parseInt를 활용한다.  -->
	<%
	// 한글 깨짐을 처리하는 코드
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String mobile = request.getParameter("mobile");
	
	// ExRepository 객체 생성
	ExRepository exRepository = new ExRepository();
	exRepository.save(name,age,mobile);
	int result = exRepository.save(name, age, mobile);
	if(result >0){
	
	%>
	
	<script>
	alert("저장 성공! index.jsp로 돌아감");
	location.href="index.jsp";
	</script>
	
	<%
	}else{
	%>
	
	<script>
	alert("코드 다시 짜셈");
	</script>
	
	<%
	}
	%>
	
	<h3>result</h3>
	<p><%=name %></p>
	<p><%=age %></p>
	<p><%=mobile %></p>

</body>
</html>