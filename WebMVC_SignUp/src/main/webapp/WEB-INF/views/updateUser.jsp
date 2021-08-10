<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.error {
	color: red;
}
.form-border{
	border: 2px solid CornflowerBlue;
	padding: 3%;
}
</style>
</head>
<body class="mt-5">
	<div class="container">
	<div class="h2 text-center">Update User</div>
		<div class="row">
		<div class="col-md-3"></div>
			<div class="col-md-6">
				<f:form action="../editUser" cssClass="form-border" method="post" modelAttribute="user">
					<input type="hidden" name='id' value="${user.id }">
					<div class="form-group">
						<label for="name">Name:</label>
						<f:input type="text" class="form-control" path="name" value="${user.name }" />
						<f:errors cssClass="error" path="name"></f:errors>
					</div>
					<div class="form-group">
						<label for="email">Email address:</label>
						<f:input type="email" class="form-control" path="email" value="${user.email }"/>
						<f:errors cssClass="error" path="email"></f:errors>
					</div>
					<div class="form-group">
						<label for="email">Gender: </label>
						<f:radiobutton path="gender" value="Male" />
						Male
						<f:radiobutton path="gender" value="Female" />
						Female
						<f:errors cssClass="error" path="gender"></f:errors>
					</div>
					<div class="form-group">
						<label for="Hobby">Hobby: </label>
						<f:checkbox path="hobby" value="travelling" />
						Travelling
						<f:checkbox path="hobby" value="reading" />
						Reading
						<f:checkbox path="hobby" value="playing" />
						Playing
						<f:errors cssClass="error" path="hobby"></f:errors>
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<f:password class="form-control" path="password" value="${user.password }"/>
						<f:errors cssClass="error" path="password"></f:errors>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</f:form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
</body>
</html>