<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card ">
			<div class="card-header text-center text-black text-uppercase">

				<h1>Welcome To UOM Register</h1>
			</div>
			<div class="card-body">

				<form:form action="save" method="post" modelAttribute="uom">
				
				<div class="row">
				<div class="col-4">UOM TYPE
				</div>
				<div class="col-4"><form:select path="uomType">
						<form:option value="">---Select---</form:option>
						<form:option value="PACKING">PACKING</form:option>
						<form:option value="NO PACKING">NO PACKING</form:option>
						<form:option value="---NA---">---NA---</form:option>

					</form:select>	
				</div>
				<div class="col-4">
				</div>
				</div>
				
	
					<div class="row">
				<div class="col-4">UOM MODEL
				</div>
				<div class="col-4"><form:input path="uomModel" />
				</div>
				<div class="col-4">
				</div>
				</div>

	
<div class="row">
				<div class="col-4">DESCRIPTION
				</div>
				<div class="col-4"><form:textarea path="uomDesc" />
				</div>
				<div class="col-4">
				</div>
				</div>

	
<div class="row">
				<div class="col-4">
				</div>
				<div class="col-4">
				<input type="submit" value="Create Uom">
				<input type="reset" value="Reset Data">
				</div>
				<div class="col-4">
				</div>
				</div>

					

				</form:form>
			</div>
			<!-- close card body -->
			<div class="card-footer text-center text-black text-uppercase">

				${message}<br>

			</div>
			<!-- close card-footer -->
		</div>
		<!-- Close Card -->
	</div>
	<!-- Close Container -->

</body>
</html>