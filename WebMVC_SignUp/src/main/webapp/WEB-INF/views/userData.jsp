<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Data</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>
<script src="//cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script>
	$(document).ready(function() {
		$('#table_id').DataTable();
	});
</script>
<link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css"
	rel="stylesheet">
</head>
<body class="p-3 bg-light">
	<div class="alert alert-warning text-center"><h1>VIEW ALL EMPLOYYES DETAILS</h1>
	<a href="Signup" class="btn btn-warning mt-1"> Add New User</a></div>

	<div class="mt-2">
		<table id="table_id">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Hobby</th>
					<th>Password</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${showdata }" var="data">
					<tr>
						<td>${data.id }</td>
						<td>${data.name }</td>
						<td>${data.email }</td>
						<td>${data.gender }</td>

						<c:forEach items="${data.hobby }" var="hb">
							<td>${hb }
						</c:forEach>
						</td>
						<td>${data.password }</td>
						<td><a href="update/${data.id }"
							style="text-decoration: none">Edit</a></td>
						<td><a href="delete?id=${data.id }"
							style="text-decoration: none">delete</a></td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>