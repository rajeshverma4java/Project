<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Edit</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">
		<div class="card ">
			<div class="card-header text-center text-black text-uppercase">

				<h2>Welcome to Order Type Register</h2>
			</div>
			<div class="card-body">
				<form:form action="update" method="post"
					modelAttribute="orderMethodType">

					<div class="row">
						<div class="col-4">Order ID</div>
						<div class="col-4">
							<form:input path="orderId" readonly="true" />
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">Order Mode</div>
						<div class="col-4">
							<form:radiobutton path="orderMode" value="sale" />
							Sale
							<form:radiobutton path="orderMode" value="purchase" />
							Purchase
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Order Code</div>
						<div class="col-4>">
							<form:input path="orderCode" />
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">Order Method</div>
						<div class="col-4>">
							<form:select path="orderMeth">
								<form:option value="">--SELECT--</form:option>
								<form:option value="FIFO">FIFO</form:option>
								<form:option value="LIFO">LIFO</form:option>
								<form:option value="FEFO">FEFO</form:option>
							</form:select>
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Order Accept</div>
						<div class="col-4>">
							<form:checkbox path="orderAccept" value="Multi-Model" />
							Multi-Model
							<form:checkbox path="orderAccept" value="Accept Return" />
							Accept Return
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Description</div>
						<div class="col-4>">
							<form:textarea path="orderDesc" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4>">
							<input type="submit" value="UpdateOrder"> 
						</div>
						<div class="col-4"></div>
					</div>
				</form:form>
			</div>
			<!-- close card body -->

			<div class="card-footer text-center text-black text-uppercase">
				${message} <br>
			</div>
			<!-- close card-footer -->
		</div>
		<!-- Close Card -->
	</div>
	<!-- Close Container -->
	${message}
</body>
</html>