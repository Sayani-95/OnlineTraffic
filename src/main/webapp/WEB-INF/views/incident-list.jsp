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
<h1>Incident Recorded</h1>
<a href="create" class="btn btn-primary"> Add incident </a>
		<div class="row">

<table class="table table-hover">
    <tr>
        <th>Incident Id</th>
        <th>Types of Incident</th>
        <th>Incident Description</th>
        <th></th>
    </tr>
    <c:forEach var="incident" items="${incident}">
        <tr>
            <td class="table-plus">${incident.incident_id}</td>
            <td>${incident.incident_type}</td>
            <td>${incident.incident_description}</td>
            <td><a href="edit/${incident.incident_id}">Edit</a> </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
