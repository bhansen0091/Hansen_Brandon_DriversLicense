<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person View</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="container">
			<h1>${ person.firstName }${ person.lastName }</h1>
			<div class="container">
				<br /> <a href="/">Home</a>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>License Number:</th>
							<th>State:</th>
							<th>Expiration Date:</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ person.license.number }</td>
							<td>${ person.license.state }</td>
							<td>${ person.license.expirationDate }</td>
						</tr>
					</tbody>
				</table>

				<form action="/${ id }/delete" method="post">
					<input type="hidden" name="_method" value="delete"> <input
						type="submit" value="Delete">
				</form>
			</div>
		</div>
	</div>
</body>
</html>