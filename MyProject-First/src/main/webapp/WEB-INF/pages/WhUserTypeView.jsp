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
<title>WhUser View</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">

				<h3>Detail of User</h3>
			</div>
			<div class="card-body">
				<a href="excel?id=${omt.orderId}" class="btn btn-info ">Excel
					Export</a> <a href="pdf?id=${omt.orderId}" class="btn btn-info right">PDF
					Export</a>
				<table class="table table-hover " border="1">
					<tr class="bg-success text-white">
						<th >Field</th>
						<th >Value</th>
					<tr>
						<th>ID</th>
						<td>${whuserType.whuId}
					</tr>
					<tr>
						<th>TYPE</th>
						<td>${whuserType.whuserTyp}
					</tr>
					<tr>
						<th>CODE</th>
						<td>${whuserType.whuCode}
					</tr>
					<tr>
						<th>USE FOR</th>
						<td>${whuserType.whusefor}
					</tr>
					<tr>
						<th>EMAIL</th>
						<td>${whuserType.whuEmail}
					</tr>
					<tr>
						<th>CONTACT</th>
						<td>${whuserType.whucont}
					</tr>
					<tr>
						<th>ID TYPE</th>
						<td>${whuserType.whuIdType}
					</tr>
					<tr>
						<th>ID NO</th>
						<td>${whuserType.whuIdNo}
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