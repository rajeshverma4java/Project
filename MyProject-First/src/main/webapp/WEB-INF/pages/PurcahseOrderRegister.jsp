<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Order Page</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-center text-black text-uppercase">
				<h2>Welcome To Purchase Order Register Page</h2>
			</div>
			<div class="card body">


				<form:form action="save" method="post"
					modelAttribute="purchaseOrder">
					<div class="row">
						<div class="col-4">Order Code</div>
						<div class="col-4>">
							<form:input path="orderCode" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Shipment Code</div>
						<div class="col-4>">
							<form:select path="shipOb.shipId">
								<form:option value="">--SELECT--</form:option>
								<form:options items="${shipMap}" />
							</form:select>
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">Customer</div>
						<div class="col-4>">
							<form:select path="whuOb.whuId">
								<form:option value="">--SELECT--</form:option>
								<form:options items="${whuMap}" />
							</form:select>

						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Quality Check</div>
						<div class="col-4">
							<form:radiobutton path="qltyCheck" value="Required" />
							Required
							<form:radiobutton path="qltyCheck" value="Not-Required" />
							Note-Required
						</div>
						<div class=""></div>
					</div>

					<div class="row">
						<div class="col-4">Refrence Number</div>
						<div class="col-4>">
							<form:input path="refNo" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Default Status</div>
						<div class="col-4>">
							<form:input path="status" readonly="true" />
						</div>
						<div class="col-4"></div>
					</div>




					<div class="row">
						<div class="col-4">Description</div>
						<div class="col-4>">
							<form:textarea path="purcahseDesc" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4>">
							<input type="submit" value="CreatePurchaseOrder"> <input
								type="reset" value="Reset">

						</div>
						<div class="col-4"></div>
					</div>
				</form:form>
			</div>
			<div
				class="card-footer card-header text-center text-black text-uppercase">
				${message}</div>
		</div>
		<!-- card close -->
	</div>
	<!-- Close Container -->
</body>
</html>