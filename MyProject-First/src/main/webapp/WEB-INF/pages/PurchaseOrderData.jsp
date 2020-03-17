<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

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
<title>Po Data</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h2>Welcome TO Purchase Order Data</h2>
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
								<th>REFRENCE NUMBER</th>
								<th>QUALITY CHECK</th>
								<th>DEFAULT STATUS</th>
								<th>SHIPMENT CODE</th>
								<th>CUSTOMER</th>
								<th>DESCRIPTION</th>
								<th class="text-center" colspan="3">OPTION</th>

							</tr>

							<c:forEach items="${list}" var="ob">


								<tr>
									<td>${ob.purchaseId}</td>
									<td>${ob.orderCode}</td>
									<td>${ob.refNo}</td>
									<td>${ob.qltyCheck}</td>
									<td>${ob.status}</td>
									<td>${ob.shipOb.shipCode}</td>
									<td>${ob.whuOb.whuCode}</td>
									<td>${ob.purcahseDesc}</td>
									<td><a href="delete?uid=${ob.purchaseId }"
										class="btn btn-danger">DELETE</a>
									<td><a href="edit?uid=${ob.purchaseId }"
										class="btn btn-info">Edit</a>
									<td><a href="view?uid=${ob.purchaseId}"
										class="btn btn-warning">View</a>
								</tr>
							</c:forEach>
						</table>

					</c:when>
					
					<c:otherwise>
						<!-- <div class="card-footer bg-danger text-white text-center"> -->
							<h3>No Data Found</h3>

						<!-- </div> -->
					</c:otherwise>

				</c:choose>
			</div> 
			
			 <c:if test="${!empty messgage }">
				<c:choose>
					<c:when test="${opr eq 'delete'}">
						<div class="card-footer bg-danger text-white text-center"><b>${messgage }</b></div>
					</c:when>
					<c:otherwise>
						<div class="card-footer bg-info text-white text-center"><b>${messgage }</b></div>
					
					</c:otherwise>
				</c:choose>
			</c:if>

		</div>
		<!-- card end -->
	</div>
	<!-- Container end -->
</body>
</html>