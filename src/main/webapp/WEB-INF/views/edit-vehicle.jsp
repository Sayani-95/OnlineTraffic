<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<h1>Edit Vehicle</h1>

		
		<form method="post" action="../update" modelAttribute="vehicle">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_id">Id</label> <input type="text"
							value="${vehicle.vehicle_id}" class="form-control" id="vehicle_id" name="vehicle_id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_type">Model Type: </label> <input type="text"
							value="${vehicle.vehicle_type}" class="form-control" id="vehicle_type" name="vehicle_type"
							>
					</div>
				</div>
			</div>
				<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_owner">Owner's name:</label> <input type="text"
							value="${vehicle.vehicle_owner}" class="form-control" id="vehicle_owner" name="vehicle_owner"
							>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="vehicle_number">Vehicle Number:</label> <input
							type="text" value="${vehicle.vehicle_number}" class="form-control" id="vehicle_number" name="vehicle_number"
						 >
					</div>
				</div>
				</div>
			
			<button type="submit" class="btn btn-primary">Edit</button>
		</form>

	</div>
</form>
</body>
</html>