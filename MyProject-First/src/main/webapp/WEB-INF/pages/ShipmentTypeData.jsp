<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
.right {
	text-align: right;
	float: right;
	color: #fff;
	background-color: #17a2b8;
	border-color: #17a2b8;
}
</style>
<meta charset="ISO-8859-1">
<title>Shipment Data</title>
</head>
<body>
	<%@ include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h4>Welcome To Shipment Type Data</h4>
			</div>

			<div class="card-body">
				<a href="excel" class="btn btn-info ">Excel Export</a> <a href="pdf"
					class="btn btn-info right">PDF Export</a>

				<c:choose>
					<c:when test="${!empty list}">
						<table class="table table-hover " border="1">
							<tr class="bg-success text-white">
							<tr>
								<th>ID</th>
								<th>CODE</th>
								<th>GARDE</th>
								<th>MODE</th>
								<th>ENABLE</th>
								<th>NOTE</th>
								<th colspan="3">Operation</th>
							</tr>
							<c:forEach items="${list}" var="ob">
								<tr>
									<td>${ob.shipId}</td>
									<td>${ob.shipCode}</td>
									<td>${ob.shipGrd}</td>
									<td>${ob.shipMod}</td>
									<td>${ob.enbShip}</td>
									<td>${ob.shipDesc}</td>
									<td><a href="delete?sid=${ob.shipId}" class="btn btn-danger">Delete</a>
									<td><a href="edit?sid=${ob.shipId}" class="btn btn-info">Edit</a>
									<td><a href="viewone?sid=${ob.shipId}" class="btn btn-warning">View</a>
								</tr>

							</c:forEach>

						</table>

					</c:when>


					<c:otherwise>
						<h4>No Data Found</h4>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- Card Body close -->
			<div class="card-footer bg-primary text-white text-center">
			${message}</div>
		</div>
		<!-- card close -->
	</div>
	<!-- Container close -->
</body>
</html>