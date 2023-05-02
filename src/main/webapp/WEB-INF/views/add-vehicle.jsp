<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./style.jsp"%>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Online Traffic System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link" href="../vehicle/record" >Vehicle Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../incident/record">Incident Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../ticket/record">Ticket Details</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<br>

<div class="container mt-3">
<h1>Register New Vehicle to the System</h1>
<form method="post" action="create" modelAttribute="vehicle">
    <div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_type">Vehicle Model:</label> <input type="text"
							class="form-control" id="vehicle_type" name="vehicle_type" required="required"
						>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_owner">Owner's name:</label> <input type="text"
							class="form-control" id="vehicle_owner" name="vehicle_owner" required="required"
						>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_number">Vehicle Number:</label> <input type="text"
							class="form-control" id="vehicle_number" name="vehicle_number" required="required"
						>
					</div>
				</div>
			</div>
            <button type="submit" class="btn btn-primary">Add New Vehicle</button>
       </form>
    </div>
</body>
</html>