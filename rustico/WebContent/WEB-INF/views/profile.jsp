<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Perfil</title>
</head>
<body>
	<table>
		<tr>
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
						<input type="submit" value="Editar">
					</form>
					<form action="${pageContext.request.contextPath}/delete" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="submit" value="Eliminar">
					</form>
					<form action="${pageContext.request.contextPath}/addEmp" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="submit" value="Agregar Empleado">
					</form>
					</td>
				</tr>	
	</table>
	<table>
		<tr>
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
						<input type="submit" value="Editar">
					</form>
					<form action="${pageContext.request.contextPath}/deleteEmp" method="post">
						<input type="hidden" value="${sucursales.cSuc}" name="code">
						<input type="hidden" value="${empleados.idEmp}" name="codeEmp">
						<input type="submit" value="Eliminar">
					</form>
					</td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>