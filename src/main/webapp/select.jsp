<%@ page import ="com.icia.ex.repository.ExRepository" %>
<%@ page import ="com.icia.ex.dto.ExDTO" %>
<%@ page import ="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I'm your select.jsp</title>
<style>
table, tr, td, th{
		border: 1px solid black;
}
</style>
</head>
<body>
	<h2>select.jsp</h2>
	<table>
	<tr>
	<th>이름</th>
	<th>나이</th>
	<th>전화번호</th>
	</tr>
	<%
		ExRepository exRepository = new ExRepository();
		List<ExDTO> list = exRepository.findAll();
		System.out.println("select.jsp"+list);
		for(ExDTO dto: list){
	
	
	%>
	<tr>
	<td><%=dto.getName() %></td>
	<td><%=dto.getAge() %></td>
	<td><%=dto.getMobile() %></td>
	</tr>
	<%
		}
	%>
	</table>
	
</body>
</html>