<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 style="text-align: center;">Welcome TO Order Type Data
		Register</h2>

	<c:choose>
		<c:when test="${!empty list}">
			<table border="1">
				<tr>
					<td>ID</td>
					<td>MODE</td>
					<td>CODE</td>
					<td>METHOD</td>
					<td>ACCEPT</td>
					<td>DESCRIPTION</td>
					<td colspan="3">OPTION</td>
				</tr>

				<c:forEach items="${list}" var="ob">


					<tr>
						<td>${ob.orderId}</td>
						<td>${ob.orderMode}</td>
						<td>${ob.orderCode}</td>
						<td>${ob.orderMeth}</td>
						<td>${ob.orderAccept}</td>
						<td>${ob.orderDesc}</td>
						<td><a href="delete?uid=${ob.orderId }">Delete</a>
						<td><a href="edit?uid=${ob.orderId }">Edit</a>
						<td><a href="view?uid=${ob.orderId }">View</a>
					</tr>
				</c:forEach>
			</table>

		</c:when>
		<c:otherwise>
					No Data Found

		</c:otherwise>

	</c:choose>



	<br>
	<a href="excel">Excel Export</a>
	<br>

	<br>
	<a href="pdf">PDF Export</a>
</body>
</html>