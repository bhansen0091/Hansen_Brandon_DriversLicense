<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create License</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<div class="col-7 mx-auto">
			<h1>Create License</h1>
			<div id="createForm">
				<form:form action="/licenses/create" method="post"
					modelAttribute="license">
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text">Person:</label>
							</div>
							<select name="person" class="form-control">
								<c:forEach items="${people}" var="person">
									<option value="${person.id}">${person.firstName} ${person.lastName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<form:label path="state" class="input-group-text">State:</form:label>
							</div>
							<form:input path="state" class="form-control" />
							<form:errors path="state" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<form:label path="expirationDate" class="input-group-text">Expiration Date:</form:label>
							</div>
							<form:input type="date" path="expirationDate" class="form-control" />
							<form:errors path="expirationDate" />
						</div>
					</div>
					
					<form:errors path="number" />
					
					<input type="submit" />
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>