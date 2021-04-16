<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Person</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<div class="col-7 mx-auto">
			<h1>Create Person</h1>
			<div id="createForm">
				<form:form action="/persons/create" method="post"
					modelAttribute="person">

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<form:label path="firstName" class="input-group-text">First Name:</form:label>
							</div>
							<form:input path="firstName" class="form-control" />
							<form:errors path="firstName" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<form:label path="lastName" class="input-group-text">Last Name:</form:label>
							</div>
							<form:input path="lastName" class="form-control" />
							<form:errors path="lastName" />
						</div>
					</div>
					<input type="submit" />

				</form:form>
			</div>
		</div>
	</div>
</body>
</html>