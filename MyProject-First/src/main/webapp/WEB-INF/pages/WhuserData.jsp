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
<title>Insert title here</title>
</head>
<body>
<%@ include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white text-center">
	<h4>Welcome to Whuser Data Page</h4>
	</div>
	<div class="card-body">
				<a href="excel" class="btn btn-info ">Excel Export</a> <a href="pdf"
					class="btn btn-info right">PDF Export</a>
	<c:choose>
	<c:when test="${!empty list }">
	<table class="table table-hover " border="1">
							<tr class="bg-success text-white">
		<tr>
			<th>ID</th>
			<th>TYPE</th>
			<th>CODE</th>
			<th>USER FOR</th>
			<th>EMAIL</th>
			<th>CONTACT</th>
			<th>ID TYPE</th>
			<th>ID NO</th>
			<th colspan="3">OPTION</th>
		</tr>

		
	<c:forEach items="${list}" var="ob">
	<tr>
	<td>${ob.whuId}</td>
	<td>${ob.whuserTyp}</td>
	<td>${ob.whuCode}</td>
	<td>${ob.whusefor}</td>
	<td>${ob.whuEmail}</td>
	<td>${ob.whucont}</td>
	<td>${ob.whuIdType}</td>
	<td>${ob.whuIdNo}</td>
	<td><a href="delete?wid=${ob.whuId}" class="btn btn-danger">DELETE</a>
	<td><a href="edit?wid=${ob.whuId}" class="btn btn-info ">EDIT</a>
	<td><a href="view?wid=${ob.whuId}" class="btn btn-warning">SHOW</a>
	
	</tr>
	
	</c:forEach>
	</table>
	</c:when>
	<c:otherwise>
	NO Record Found
	
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