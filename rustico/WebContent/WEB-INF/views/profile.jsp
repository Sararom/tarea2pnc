<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script><meta charset="UTF-8">
<title>Perfil</title>
</head>
<body>
<h1 class="display-4"> Datos de la sucursal</h1>
<button 
class="btn btn-outline-info" style="
  	font-size: 150%;" onclick="location.href='${pageContext.request.contextPath}/principal'" value="Home">HOME</button>
	<table class="table table-hover">
		<tr class="table-light bg-info">
			<th>Nombre Sucursal</th>
			<th>Ubicacion </th>
			<th>Horario de atención </th>
			<th>Numero de mesas </th>
			<th>Gerente </th>
		</tr>
				<tr>
					<td>${sucursales.sucName}</td>
					<td>${sucursales.ubic}</td>
					<td>${sucursales.horarios}</td>
					<td>${sucursales.numMesas}</td>
					<td>${sucursales.nomGer}</td>
					<td>
					<form action="${pageContext.request.contextPath}/update" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-info" type="submit" value="Editar">
					</form>
					</td>
					<td>
					<form action="${pageContext.request.contextPath}/delete" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-info" type="submit" value="Eliminar">
					</form>
					</td>
					<td>
					<form action="${pageContext.request.contextPath}/addEmp" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-info" type="submit" value="Agregar Empleado">
					</form>
					</td>
				</tr>	
	</table>
	<h1 class="display-4">Datos de los empleados</h1>
	<table class="table table-hover">
		<tr class="table-light bg-info">
			<th>Nombre Empleado</th>
			<th>Edad </th>
			<th>Genero </th>
			<th>Estado </th>
		</tr>
			<c:forEach items="${empleados}" var="empleados">
				<tr>
					<td>${empleados.nomEmp}</td>
					<td>${empleados.edad}</td>
					<td>${empleados.genero}</td>
					<td>${empleados.activoDelegate}</td>
					<td>
					<form action="${pageContext.request.contextPath}/updateEmp" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="hidden" value="${empleados.idEmp}" name="codeEmp">
						<input class="btn btn-outline-dark" type="submit" value="Editar">
					</form>
					</td>
					<td>
					<form action="${pageContext.request.contextPath}/deleteEmp" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="hidden" value="${empleados.idEmp}" name="codeEmp">
						<input class="btn btn-outline-dark" type="submit" value="Eliminar">
					</form>
					</td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>