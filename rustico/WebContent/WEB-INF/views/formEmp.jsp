<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Empleado</title>
</head>
<body>
<h1>Inserte los datos del Empleado</h1>
		<form:form  action="${pageContext.request.contextPath}/formDataEmp" method="POST" modelAttribute="empleado">
		
		<form:input type="hidden" name="code" path="idEmp" value="${empleado.idEmp}" />
		<input type="hidden" name="codeSuc" value="${codigoSuc}" />
	
		<label>Ingrese un nombre : </label>
		<form:input type="text" name="name" path="nomEmp" value="${empleado.nomEmp}"/><br>
		
		<label>Ingrese edad : </label>
		<form:input type="number" name="edad" path="edad" value="${empleado.edad}"/><br>
		
		<label>Genero: </label>
		<form:radiobutton name="genero" path="genero" value="F"/><label>F</label>
		<form:radiobutton name="genero" path="genero" value="M"/><label>M</label><br>
		
		<label>Estado: </label>
		<input type="checkbox" name="estado" value="${empleado.estado}"/><label>Activo</label><br>
			
		<input type="submit" value="Actualizar">
	</form:form>
</body>
</html>