<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>
	<head>
		<title>Contacts List</title>
	</head>
	
	<body>
		<h3>Contacts List</h3>
		
		<a href="addContact">Add Contact</a>
		
		<c:choose>
			<c:when test="${contacts.size() eq 0 }">		
				<h3>No Records Found!</h3>
			</c:when>
			<c:otherwise>
				<table>
					<tr>
						<th>Contact Number</th>
						<th>Name</th>
						<th>Date Of Birth</th>
						<th>Mail Id</th>
						<th>Mobile Number</th>
						<th>Gender</th>
					</tr>
					<c:forEach items="${contacts }" var="contact">
						<tr>
							<td>${contact.contactId }</td>
							<td>${contact.firstName } ${contact.lastName }</td>
							<td>${contact.dateOfBirth }</td>
							<td>${contact.emailId }</td>
							<td>${contact.mobileNumber }</td>
							<td>${contact.gender }</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
			</c:choose>
	</body>
</html>