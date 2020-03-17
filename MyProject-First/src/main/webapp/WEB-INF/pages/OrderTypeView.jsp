<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Single Order Page</title>

</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h3>Detail Of Order</h3>
			</div>
			<div class="card-body">
				<a href="excel" class="btn btn-info ">Excel Export</a> <a href="pdf"
					class="btn btn-info right">PDF Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
					<tr>
						<th>ID</th>
						<td>${omt.orderId}</td>
					</tr>
					<tr>
						<th>MODE</th>
						<td>${omt.orderMode}</td>
					</tr>
					<tr>
						<th>CODE</th>
						<td>${omt.orderCode}</td>
					</tr>
					<tr>
						<th>ORDER METHOD</th>
						<td>${omt.orderMeth}</td>
					</tr>
					<tr>
						<th>ORDER ACCEPT</th>
						<td>${omt.orderAccept}</td>
					</tr>
					<tr>
						<th>NOTE</th>
						<td>${omt.orderDesc}</td>
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