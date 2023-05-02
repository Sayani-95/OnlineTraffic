<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./style.jsp"%>
<title>Insert title here</title>
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

<h1>New Ticket</h1>
 <form method="post" action="create" modelAttribute="ticket"> 
   		 <div class="row">
				<div class="col">
					<div class="form-group">
					<label>Vehicle Number:</label> <br/>
						<select id="vehicle_id" name="vehicle_id" required="required" class="form-control">
						<option value="" disabled selected hidden>Select Car Number</option>
                    		<c:forEach items="${vehicle}" var="vehicle">
                        		<option value="${vehicle.vehicle_id}"> ${vehicle.vehicle_number} </option>
                    		</c:forEach>
                		</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
					<label>Incident Type:</label> <br/>
						<select id="incident_id" name="incident_id" required="required" class="form-control">
						<option value="" disabled selected hidden>Describe Incident</option>
                    		<c:forEach items="${incident}" var="incident">
                        		<option value="${incident.incident_id}"> ${incident.incident_type} </option>
                    		</c:forEach>
                		</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="ticket_fine">Fine:</label> <input type="text"
							class="form-control" id="ticket_fine" name="ticket_fine" required="required"
						>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="ticket_date">Issued date:</label> <input type="text"
							class="form-control" id="ticket_date" name="ticket_date" required="required"
						>
					</div>
				</div>
			</div>
            <button type="submit" class="btn btn-primary">Add New Ticket</button>
       </form>
    </div>
   </body>
</html>