<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Doctor</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctor">
				<div>
					<label for="doctor_id">doctor id</label>
					<div>
						<form:input path="doctor_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="doctor_name">Doctor Name</label>
					<div>
						<form:input path="doctor_name" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneno">phoneno</label>
					<div>
						<form:input path="phoneno" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="standard_fees">standard fees</label>
					<div>
						<form:input path="standard_fees" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>