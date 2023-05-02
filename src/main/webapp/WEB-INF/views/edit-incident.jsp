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
<h1>Edit Incident details</h1>

    <div class="container mt-3">

		
		<form method="post" action="../update" modelAttribute="incident">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="incident_id">Incident Id</label> <input type="text"
							value="${incident.incident_id}" class="form-control" id="incident_id" name="incident_id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="incident_type">Incident Type: </label> <input type="text"
							value="${incident.incident_type}" class="form-control" id="incident_type" name="incident_type"
							>
					</div>
				</div>
			</div>
				<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="incident_description">Incident Description:</label> <input type="text"
							value="${incident.incident_description}" class="form-control" id="incident_description" name="incident_description"
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