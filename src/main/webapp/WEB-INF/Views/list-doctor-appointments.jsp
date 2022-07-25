<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Appointments</title>
</head>
<body>
<div id="root">
		<div id="docform">
			<form:form action="add" method="post" modelAttribute="getdoc">
				<div>
					<label for="doctor_id">Doctor id</label>
					<div>
						<form:input path="doctor_id" />
					</div>
				</div>
				<div>
					<label for="doctor_name">Doctor Name</label>
					<div>
						<form:input path="doctor_name" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" />
					</div>
				</div>
				<div>
					<label for="phoneno">phoneno</label>
					<div>
						<form:input path="phoneno" />
					</div>
				</div>
				<div>
					<label for="standard_fees">Standard fees</label>
					<div>
						<form:input path="standard_fees" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<div id="applist">
		<table>
			<thead>
				<tr>
					<th>App id</th>
					<th>App Date</th>
					<th>Doctor id</th>
					<th>Patient Name</th>
					<th>Fees Collected</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="app" items="${applist}">
					<tr>
						<td>${app.app_id}</td>
						<td>${app.app_date}</td>
						<td>${app.doctor_id}</td>
						<td>${app.patient_name}</td>
						<td>${app.fees_collected}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>