<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="wh" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>UOM VIEW</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">

				<h3>Detail of User</h3>

			</div>
			<div class="card-body">
				<a href="excel?uid=${uom.uomId}" class="btn btn-info ">Excel
					Export</a> <a href="pdf?uid=${uom.uomId}"
					class="btn btn-info right">PDF Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
					<tr>
						<th>ID</th>
						<td>${uom.uomId}
					</tr>
					<tr>
						<th>TYPE</th>
						<td>${uom.uomType}
					</tr>
					<tr>
						<th>CODE</th>
						<td>${uom.uomModel}
					</tr>
					<tr>
						<th>USE FOR</th>
						<td>${uom.uomDesc}
					</tr>

				</table>
			</div>
			<div class="card-footer"></div>
		</div>
		<!-- card close -->
	</div>
	<!-- container close -->
</body>
</html>