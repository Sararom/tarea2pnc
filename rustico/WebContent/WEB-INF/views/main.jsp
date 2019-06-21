<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sucursales Rustico</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/save" method = "post">
	<input type="submit" value="Agregar una sucursal nueva">
	</form>

	<table>
		<tr>
			<th>Nombre Sucursal</th>
			<th>Ubicacion </th>
			<th>Horario </th>
			<th>Numero de mesas </th>
			<th>Gerente </th>
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
						<input type="submit" value="Editar">
					</form>
					<form action="${pageContext.request.contextPath}/delete" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="submit" value="Eliminar">
					</form>
					<form action="${pageContext.request.contextPath}/profile" method="get">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="submit" value="Ver Perfil">
					</form>
					</td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>