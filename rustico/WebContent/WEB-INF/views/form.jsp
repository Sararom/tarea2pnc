<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Agregar Sucursal</title>
</head>
<body style="text-align: center">
<h1 >Inserte los datos de la sucursal</h1>
<button 
class="btn btn-outline-info" style="
  	font-size: 150%;" onclick="location.href='${pageContext.request.contextPath}/principal'" value="Home">HOME</button>
		<form:form class="text-center border border-light" action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="sucursales">
		<form:input type="hidden" name="code" path="cSuc" value="${sucursales.cSuc}" />
		<label>Ingrese un nombre : </label>
		<form:input class="form-control" type="text" name="name" path="sucName" value="${sucursales.sucName}"/>
		<form:errors path="sucName" cssStyle="color:#E81505"></form:errors><br>
		<label>Ingrese ubicacion : </label>
		<form:input class="form-control" type="text" name="ubic" path="ubic" value="${sucursales.ubic}"/>
		<form:errors path="ubic" cssStyle="color:#E81505"></form:errors><br>
		<label>Ingrese horarios: </label>
		<form:input placeholder="p.e: 8AM - 10PM" class="form-control mb-4" type="text" name="horarios" path="horarios" value="${sucursales.horarios}"/>
		<form:errors path="horarios" cssStyle="color:#E81505"></form:errors><br>
		<label>Ingrese numero de mesas: </label>
		<form:input class="form-control" type="number" name="numMesas" path="numMesas" value="${sucursales.numMesas}"/>
		<form:errors path="numMesas" cssStyle="color:#E81505"></form:errors><br>
		<label>Ingrese nombre del gerente: </label>
		<form:input class="form-control" type="text" name="nombGer" path="nomGer" value="${sucursales.nomGer}"/>
		<form:errors path="nomGer" cssStyle="color:#E81505"></form:errors><br>
		
		<input class="btn btn-info my-4 btn-block" type="submit" value="Actualizar">
	</form:form>
	
</body>
</html>