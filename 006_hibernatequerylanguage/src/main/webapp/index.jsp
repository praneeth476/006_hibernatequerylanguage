<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="model.Students" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HQL Demo</title>
</head>
<body>
	<h3>FROM Clause</h3>
	<%
	@SuppressWarnings("unchecked")
	List<Students> slist = (List<Students>)request.getAttribute("slist"); %>
	<table border="1">
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>CGPA</th>
		</tr>
		<%for(Students S:slist) {%>
			<tr>
				<td><%=S.getSid() %></td>
				<td><%=S.getName() %></td>
				<td><%=S.getCgpa() %></td>
			</tr>
		<%} %>
	</table>
	
	<%
	@SuppressWarnings("unchecked")
	List<Students> slist1 = (List<Students>)request.getAttribute("slist1"); %>
	<h3>SELECT Clause</h3>
	<table border="1">
		<tr>
			<th>Student ID</th>
			<th>CGPA</th>
		</tr>
		<%for(Students S:slist1) {%>
			<tr>
				<td><%=S.getSid() %></td>
				<td><%=S.getCgpa() %></td>
			</tr>
		<%} %>
	</table>
	
	<h3>WHERE Clause</h3>
	<%
	@SuppressWarnings("unchecked")
	List<Students> slist2 = (List<Students>)request.getAttribute("slist2"); %>
	<table border="1">
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>CGPA</th>
		</tr>
		<%for(Students S:slist2) {%>
			<tr>
				<td><%=S.getSid() %></td>
				<td><%=S.getName() %></td>
				<td><%=S.getCgpa() %></td>
			</tr>
		<%} %>
	</table>
	
	<h3>Named Paramenters</h3>
	<%
	@SuppressWarnings("unchecked")
	List<Students> slist3 = (List<Students>)request.getAttribute("slist3"); %>
	<table border="1">
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>CGPA</th>
		</tr>
		<%for(Students S:slist3) {%>
			<tr>
				<td><%=S.getSid() %></td>
				<td><%=S.getName() %></td>
				<td><%=S.getCgpa() %></td>
			</tr>
		<%} %>
	</table>	
</body>
</html>