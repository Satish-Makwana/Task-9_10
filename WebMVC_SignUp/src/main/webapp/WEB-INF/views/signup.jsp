<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body class="mt-5 bg-warning">
	<div class="container">
		<div class="h2 text-center">
			<a href="userData"> Registration Form</a><hr>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4 alert alert-success">
				<f:form action="saveUser" cssClass="form-border" method="post"
					modelAttribute="user">
					<div class="form-group">
						<label for="name">Name:</label>
						<f:input type="text" class="form-control" path="name" />
						<f:errors cssClass="error" path="name"></f:errors>
					</div>
					<div class="form-group">
						<label for="email">Email address:</label>
						<f:input type="email" class="form-control" path="email" />
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
						<f:password class="form-control" path="password" />
						<f:errors cssClass="error" path="password"></f:errors>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</f:form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>