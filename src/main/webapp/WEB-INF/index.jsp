<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Driver's License</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="container my-3">
			<div class="my-2">
				<a href="/persons/new" class="btn btn-success mr-3">Add Person</a> <a
					href="/licenses/new" class="btn btn-primary">Add License</a>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>License</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items='${ people }' var='person'>
						<tr>
							<td>
								<h5>
									<a href="/persons/${ person.id }">${ person.firstName }</a>
								</h5>
							</td>
							<td>
								<h5>${ person.lastName }</h5>
							</td>
							<td>
								<h5>${ person.license.number }</h5>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>



</body>
</html>