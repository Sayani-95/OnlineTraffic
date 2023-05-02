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


<h1>Ticket History</h1>
<a href="create" class="btn btn-primary"> Add New Ticket </a><br/>
		<div class="row">

<table class="table table-hover">
    <tr>
        <th>Ticket Id</th>
        <th>Vehicle Details</th>
        <th>Incident Type</th>
        <th>Ticket Fine</th>
        <th>Ticket Date</th>
        
    </tr>
    <c:forEach var="ticket" items="${ticket}">
        <tr>
            <td class="table-plus">${ticket.id}</td>
            <td>${ticket.vehicle_details} </td>
            <td>${ticket.incident_details}</td>
            <td>${ticket.ticket_fine}</td>
            <td>${ticket.ticket_date}</td>
        </tr>
    </c:forEach>
</table>
</div>

</body>
</html>