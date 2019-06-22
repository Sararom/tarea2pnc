<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Sucursales Rustico</title>
</head>
<body>
	<h1 class="display-3">Restaurante rustico
	<small class="text-muted">Control de sucursales</small></h1>
	<table class="table table-hover">
		<tr class="table-light bg-info">
			<th>Nombre Sucursal</th>
			<th>Ubicacion </th>
			<th>Horario </th>
			<th>Numero de mesas </th>
			<th>Gerente </th>
			<th> </th>
			<th><form action="${pageContext.request.contextPath}/save" method = "post">
			<input class="btn btn-outline-dark" type="submit" value="Agregar una sucursal nueva">
			</form> </th>
		</tr>
			<c:forEach items="${sucursales}" var="sucursales">
				<tr>
					<td>${sucursales.sucName}</td>
					<td>${sucursales.ubic}</td>
					<td>${sucursales.horarios}</td>
					<td>${sucursales.numMesas}</td>
					<td>${sucursales.nomGer}</td>
					<td>
					<form action="${pageContext.request.contextPath}/update" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-dark" type="submit" value="Editar">
					</form>
					</td>
					<td>
					<form action="${pageContext.request.contextPath}/delete" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-dark" type="submit" value="Eliminar">
					</form>
					</td>
					<td>
					<form action="${pageContext.request.contextPath}/profile" method="get">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input class="btn btn-outline-dark" type="submit" value="Ver Perfil">
					</form>
					</td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>