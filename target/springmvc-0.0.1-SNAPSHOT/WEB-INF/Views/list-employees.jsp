<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Employee_id</th>
					<th>First_name</th>
					<th>Last_name</th>
					<th>Email</th>
					<th>Hire_date</th>
					<th>Job_id</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${allEmployees}">
					<tr>
						<td>${emp.employee_id}</td>
						<td>${emp.first_name}</td>
						<td>${emp.last_name}</td>
						<td>${emp.email}</td>
						<td>${emp.hire_date}</td>
						<td>${emp.job_id}</td>
						<td>${emp.salary}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>