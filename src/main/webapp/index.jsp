<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hello I'm Test</title>
</head>
<body>
	<h2>Welcome to Skull's Hell!!</h2>
	<a href="hello.jsp">hello.jsp로 이동</a>
	<!--  param1.jsp에 get방식으로 p1="안녕" p2="반가워" 를 보내봅시다 -->
	
	<a href="param1.jsp?p1=안녕&p2=반가워">파라미터 전송</a>
	<!-- form태그를 이용하여 param2.jsp로 이름(name), 나이(age)를 각각 입력 받아서 post 방식으로 param2.jsp로 전송하고 param2.jsp에서 입력값을 출력해봅시다.  -->
	
	
	<form action="param2.jsp" method="post">
	이름 : <input type="text" name="name">
	나이 : <input type="text" name="age">
	휴대폰 : <input type="text" name="mobile">
	<input type="submit" value="전송">
	</form>
	<br>
	
	
	<a href="select.jsp">조회하기</a>
	
</body>
</html>