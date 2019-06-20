<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Sucursal</title>
</head>
<body>
<h1>Inserte los datos de la sucursal</h1>
		<form:form  action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="sucursales">
		
		<form:input type="hidden" name="code" path="cSuc" value="${sucursales.cSuc}" />
	
		<label>Ingrese un nombre : </label>
		<form:input type="text" name="name" path="sucName" value="${sucursales.sucName}"/><br>
		
		<label>Ingrese ubicacion : </label>
		<form:input type="text" name="ubic" path="ubic" value="${sucursales.ubic}"/><br>
		
		<label>Ingrese horarios: </label>
		<form:input type="text" name="horarios" path="horarios" value="${sucursales.horarios}"/><br>
		
		<label>Ingrese numero de mesas: </label>
		<form:input type="number" name="numMesas" path="numMesas" value="${sucursales.numMesas}"/><br>
		
		<label>Ingrese nombre del gerente: </label>
		<form:input type="text" name="nombGer" path="nomGer" value="${sucursales.nomGer}"/><br>
			
		<input type="submit" value="Actualizar">
	</form:form>
</body>
</html>