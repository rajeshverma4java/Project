<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShipMent Register</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">
		<div class="card ">
			<div class="card-header text-center text-black text-uppercase">
				<H3>WELCOME TO SHIPMENT TYPE REGISTER</H3>
			</div>

			<%-- 	<form action="saveship" method="POST">
		<pre>
		
Shipment Mode		:		<select name="shipMod">
<option>------Select------</option>
<option>Air</option>
<option>Truck</option>
<option>Ship</option>
<option>Train</option>
</select>
Shipment Code		:		<input type="text" name="shipCode"/>
Enable Shipment		:		<select name="enbShip">
<option>------Select-----</option>	
<option>Yes</option>
<option>No</option>
</select>
Shipemetn Grade		:		<input type="radio" name="shipGrd" value="A" />A<input type="radio" name="shipGrd" value="B"/>B<input type="radio" name="shipGrd" value="C"/>C
Shipm Description	:		<textarea name="shipDesc"></textarea>

							<input type="submit" value="CREATE SHIPMENT"> 				



</pre>
</form> --%>


			<div class="card-body">

				<form:form action="saveship" method="POST"
					modelAttribute="shipmentType">

					<div class="row">
						<div class="col-4">
							<label title="shipMod">Shipment Mode</label>
						</div>
						<div class="col-4">
							<form:select path="shipMod">
								<form:option value="">--Select--</form:option>
								<form:option value="Air">Air</form:option>
								<form:option value="Truck">Truck</form:option>
								<form:option value="Ship">Ship</form:option>
								<form:option value="Train">Train</form:option>
							</form:select>
						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4">Shipment Code
						</div>
						<div class="col-4">
						<form:input path="shipCode"/>
						</div>
						<div class="col-4"></div>
					</div>			

			
					<div class="row">
						<div class="col-4">
						<label>Enable Shipment</label>
						</div>
						<div class="col-4">
						<form:select path="enbShip">
						<form:option value="">Select</form:option>
						<form:option value="Yes">Yes</form:option>
						<form:option value="No">No</form:option>
					</form:select>
					</div>
						<div class="col-4"></div>
					</div>			

			
					<div class="row">
						<div class="col-4">Shipemetn Grade</div>
						<div class="col-4"><form:radiobutton path="shipGrd" value="A" />A
						<form:radiobutton path="shipGrd" value="B" />B
						<form:radiobutton path="shipGrd" value="C" />C</div>
						<div class="col-4"></div>
					</div>			


			
						<div class="row">
						<div class="col-4">Shipm Description</div>
						<div class="col-4"><form:textarea path="shipDesc" /></div>
						<div class="col-4"></div>
					</div>			

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4"><input type="submit" value="CREATE SHIPMENT">
						<input type="reset" value="RESET">
						</div>
						<div class="col-4"></div>
					</div>	
				</form:form>
			</div>
			<!-- close card body -->
			<div class="card-footer text-center text-black text-uppercase">

				Shipment Id is= ${id}<br>
			</div>
			<!-- close card-footer -->
		</div>
		<!-- Close Card -->
	</div>
	<!-- Close Container -->

</body>
</html>