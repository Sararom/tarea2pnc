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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script><title>Agregar Empleado</title>
</head>
<body>
<h1>Inserte los datos del Empleado</h1>
<button 
 class="btn btn-outline-info" style="font-size: 150%;" onclick="location.href='${pageContext.request.contextPath}/principal'" value="Home">HOME</button>
		<form:form class="text-center border border-light p-5"  action="${pageContext.request.contextPath}/formDataEmp" method="POST" modelAttribute="empleado">
		
		<form:input type="hidden" name="code" path="idEmp" value="${empleado.idEmp}" />
		<input  type="hidden" name="codeSuc" value="${codigoSuc}" />
		
		<label>Ingrese un nombre : </label>
		<form:input class="form-control" type="text" name="name" path="nomEmp" value="${empleado.nomEmp}"/>
		<form:errors path="nomEmp" cssStyle="color:#E81505"></form:errors><br>
		<label>Ingrese edad : </label>
		<form:input class="form-control" type="number" name="edad" path="edad" value="${empleado.edad}"/>
		<form:errors path="edad" cssStyle="color:#E81505"></form:errors><br>
		<label>Genero: </label>
		<form:radiobutton name="genero" path="genero" value="F"/><label>F</label>
		<form:radiobutton name="genero" path="genero" value="M"/><label>M</label><br>
		<form:errors path="genero" cssStyle="color:#E81505"></form:errors><br>
		<label>Estado: </label>
		<form:radiobutton name="estado" path="estado" value="true"/><label>Activo</label>
		<form:radiobutton name="estado" path="estado" value="false"/><label>Inactivo</label>
		<form:errors path="estado" cssStyle="color:#E81505"></form:errors><br>
		
		<input class="btn btn-info my-4 btn-block" type="submit" value="Actualizar">
	</form:form>
</body>
</html>