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
<title>View</title>
</head>
<body>
	<%@ include file="UserMenu.jsp"%>

	<div class="container">
		<div class="card">
			<div class="card-header text-center text-black text-uppercase">
				<h2>Welocme to Purchase Order View</h2>
			</div>

			<div class="card-body">
				<a href="excel?oid=${part.partId}" class="btn btn-info ">Excel
					Export</a> <a href="pdf?oid=${part.partId}" class="btn btn-info right">PDF
					Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
					<tr>
						<th>ID</th>
						<td>${purchaseOrder.purchaseId}</td>
					</tr>
					<tr>
						<th>ORDER CODE</th>
						<td>${purchaseOrder.orderCode}</td>
					</tr>
					<tr>
						<th>REFRENCE NO</th>
						<td>${purchaseOrder.refNo}</td>

					</tr>
					<tr>
						<th>QUALITY CHECK</th>
						<td>${purchaseOrder.qltyCheck}</td>
					</tr>

					<tr>
						<th>STATUS</th>
						<td>${purchaseOrder.status}</td>

					</tr>

					<tr>
						<th>SHIPMENT CODE</th>
						<td>${purchaseOrder.shipOb.shipCode}</td>
					</tr>
		
					<tr>
						<th>CUSTOMER</th>
						<td>${purchaseOrder.whuOb.whuCode}</td>
					</tr>

					<tr>
						<th>NOTE</th>
						<td>${purchaseOrder.purcahseDesc}</td>
					</tr>
				</table>
			</div>


			<div class="card-footer"></div>
			<!-- card-footer -->
		</div>
		<!--card close-->
	</div>
	<!-- Container-close -->

</body>
</html>