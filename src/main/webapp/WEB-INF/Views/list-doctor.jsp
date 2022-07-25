<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Doctor_id</th>
					<th>Doctor_name</th>
					<th>DOB</th>
					<th>Speciality</th>
					<th>City</th>
					<th>Phoneno</th>
					<th>Standard_fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${allDoctor}">
					<tr>
						<td>${doc.doctor_id}</td>
						<td>${doc.doctor_name}</td>
						<td>${doc.dob}</td>
						<td>${doc.speciality}</td>
						<td>${doc.city}</td>
						<td>${doc.phoneno}</td>
						<td>${doc.standard_fees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>