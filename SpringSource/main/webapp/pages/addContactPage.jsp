<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
	<head>
		<title>Add Contact</title>
		<link href="styles/site.css" rel="stylesheet"/>
	</head>
	<body>
		<h2>Contact Form</h2>
		
		<form:form modelAttribute="contact" action="addContact" method="POST">
			<table>
				<tr>
					<td>
						<form:label path="firstName">First Name</form:label>
					</td>
					<td>
						<form:input path="firstName"/>
						<form:errors path="firstName"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="lastName">Last Name</form:label>
					</td>
					<td>
						<form:input path="lastName"/>
						<form:errors path="lastName"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="gender">Gender</form:label>
					</td>
					<td>
						<form:radiobuttons items="${genders }" path="gender"/>
						<form:errors path="gender"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="emailId">Email</form:label>
					</td>
					<td>
						<form:input path="emailId"/>
						<form:errors path="emailId"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="mobileNumber">Mobile Number</form:label>
					</td>
					<td>
						<form:input path="mobileNumber"/>
						<form:errors path="mobileNumber"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="dateOfBirth">DOB</form:label>
					</td>
					<td>
						<form:input type="date" path="dateOfBirth"/>
						<form:errors path="dateOfBirth"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:right">
					<button>Add Contact</button>
				</tr>
			</table>
		</form:form>
	</body>
</html>