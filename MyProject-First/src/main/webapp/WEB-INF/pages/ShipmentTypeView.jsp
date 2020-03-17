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
<title>Shipment View</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h3>Detail of Shipment</h3>
			</div>
			<div class="card-body">
				<a href="excel" class="btn btn-info ">Excel Export</a> <a href="pdf"
					class="btn btn-info right">PDF Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
					<tr>
						<th>ID</th>
						<td>${shipmentType.shipId}
					</tr>
					<tr>
						<th>MODE</th>
						<td>${shipmentType.shipMod}
					</tr>
					<tr>
						<th>CODE</th>
						<td>${shipmentType.shipCode}
					</tr>
					<tr>
						<th>ENABLE SHIP</th>
						<td>${shipmentType.enbShip}
					</tr>
					<tr>
						<th>GRADE</th>
						<td>${shipmentType.shipGrd}
					</tr>
					<tr>
						<th>NOTE</th>
						<td>${shipmentType.shipDesc}
					</tr>


				</table>
			</div>
			<div class="card-footer">
			</div>
		</div>
		<!-- card close -->
	</div>
	<!-- container close -->

</body>
</html>