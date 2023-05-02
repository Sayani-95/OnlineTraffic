<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
          <a class="nav-link" href="vehicle/record">Vehicle Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="incident/record}">Incident Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ticket/record}">Ticket Details</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<br>


</body>
</html>