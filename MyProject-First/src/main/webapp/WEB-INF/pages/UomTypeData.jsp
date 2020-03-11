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
<title>Insert title here</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<h1>Welcome To Uom Data Register</h1>
			</div>

			<div class="card-body">

				<a href="excel" class="btn btn-info ">Excel Export</a> <a href="pdf"
					class="btn btn-info right">PDF Export</a>

				<c:choose>
					<c:when test="${!empty data}">
						<table class="table table-hover " border="1">
						<tr class="bg-success text-white">

							<tr>
								<th>ID</th>
								<th>TYPE</th>
								<th>MODEL</th>
								<th>DESCRIPTION</th>
								<th colspan="3" style="text-align: center;">OPTION</th>
							</tr>


							<c:forEach items="${data}" var="ob">
								<tr>
									<td>${ob.uomId}</td>
									<td>${ob.uomType}</td>
									<td>${ob.uomModel}</td>
									<td>${ob.uomDesc }</td>
									<td><a href="delete?uid=${ ob.uomId}"
										class="btn btn-danger">DELETE</a>
									<td><a href="edit?uid=${ ob.uomId}"class="btn btn-info">Edit</a>
									<td><a href="view?uid=${ ob.uomId}"class="btn btn-warning">View</a>
								</tr>



							</c:forEach>


						</table>


					</c:when>
					<c:otherwise>No Record Found</c:otherwise>

				</c:choose>
			</div>

			${message}<br> 
		</div>
		<!-- close card-->
	</div>
	<!-- Container closed -->
</body>
</html>