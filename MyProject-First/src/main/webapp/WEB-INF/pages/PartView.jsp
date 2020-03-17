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
<title>Welcome to Single Part View</title>

</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h2>Welocme to Part View</h2>
			</div>

			<div class="card-body">
				<a href="excel?pid=${part.partId}" class="btn btn-info ">Excel
					Export</a> <a href="pdf?pid=${part.partId}" class="btn btn-info right">PDF
					Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
					<tr>
						<th>ID</th>
						<td>${part.partId}</td>
					</tr>
					<tr>
						<th>CODE</th>
						<td>${part.code}</td>
					</tr>
					<tr>
						<th>WIDTH</th>
						<td>${part.width}</td>

					</tr>
					<tr>
						<th>LENGTHT</th>
						<td>${part.length}</td>
					</tr>

					<tr>
						<th>HEIGHT</th>
						<td>${part.height}</td>

					</tr>
					<tr>
						<th>COST</th>
						<td>${part.baseCost}</td>

					</tr>
					<tr>
						<th>CURRENCY</th>
						<td>${part.baseCurrency}</td>
					</tr>
					<tr>

						<th>UOM</th>
						<td>${part.uom.uomModel}</td>
					</tr>

					<tr>

						<th>ORDER SALE</th>
						<td>${part.getOmtSaleOb().getOrderCode()}</td>
					</tr>

					<tr>

						<th>ORDER PURCHASE</th>
						<td>${part.getOmtPurOb().getOrderCode()}</td>
					</tr>



					<tr>
						<th>NOTE</th>
						<td>${part.desc}</td>
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