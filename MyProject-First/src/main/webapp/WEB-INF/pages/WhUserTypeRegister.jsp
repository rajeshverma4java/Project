<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUser Registration</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card ">
			<div class="card-header text-center text-black text-uppercase">
				<h3>Welcome to WHUser Type Registration</h3>
			</div>
			<div class="card-body">
				<form:form action="save" method="post" modelAttribute="whuserType">
					<div class="row">
						<div class="col-4">UserType</div>
						<div class="col-4">
							<form:radiobutton path="whuserTyp" value="Vendor" />
							Vendor
							<form:radiobutton path="whuserTyp" value="Customer" />
							Customer
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Code</div>
						<div class="col-4">
							<form:input path="whuCode" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">User For</div>
						<div class="col-4">
							<form:select path="whusefor">
								<form:option value="Purchase">Purchase</form:option>
								<form:option value="Sale">Sale</form:option>
							</form:select>
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">Email</div>
						<div class="col-4">
							<form:input path="whuEmail" />
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">Contact</div>
						<div class="col-4">
							<form:input path="whucont" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">User Id Type</div>
						<div class="col-4">
							<form:select path="whuIdType">
								<form:option value="PanCard">PanCard</form:option>
								<form:option value="Aadhar">Aadhar</form:option>
								<form:option value="Voter">Voter</form:option>
							</form:select>
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Id No</div>
						<div class="col-4">
							<form:input path="whuIdNo" />
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Create User"> <input
								type="reset" value="Reset User">
						</div>
						<div class="col-4"></div>
					</div>

				</form:form>
			</div>
			<!-- close card body -->
			<div class="card-footer text-center text-black text-uppercase">

				${message}
				</div>
			<!-- close card-footer -->
		</div>
		<!-- Close Card -->
	</div>
	<!-- Close Container -->
</body>
</html>