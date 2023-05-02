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
<h1>Add Incident</h1>
<form method="post" action="create" modelAttribute="incident">
<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="incident_type">Incident Type:</label> <input type="text"
							class="form-control" id="incident_type" name="incident_type" required="required">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="incident_description">Incident Description</label> <input type="text"
							class="form-control" id="incident_description" name="incident_description" required="required">
					</div>
				</div>
			</div>
			
            <button type="submit" class="btn btn-primary">Add New Incident</button>
       </form>
    </div>
</body>
</html>