<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exemplo Servlets e JSTL</title>
</head>
<body>
	
	<div>
	<form action="pessoa" method="post">
		<table>
			<tr>
				<td><input type="number" id="id" name="id" placeholder="#ID" required="required">
			</tr>
			
			<tr>
				<td><input type="text" id="nome" name="nome" placeholder="Nome" required="required"
					value='<c:out value="${pessoa.nome }"></c:out>'>
			</tr>
			
			<tr>
				<td><input type="submit" id="enviar" name="enviar" placeholder="Enviar">
			</tr>
			
		</table>
		</form>
	</div>
	
	<div>
	<!--
		<c:if test="${empty pessoa }">
			<p>Sem Pessoa</p>
		</c:if>
	-->	
		<c:if test="${not empty pessoa }">
			<!--<p>Existe Pessoa</p> -->
			
			<c:out value="${pessoa.id }"></c:out>
			<c:out value="${pessoa.nome }"></c:out>
			
		</c:if>
	<!--  	<c:if test="${x eq 2 }"></c:if> -->
	</div>
	
	<br />
	
	<div>
		<c:if test="${not empty pessoas }">
			<table border="1">
				<thead>
					<tr>
						<th>#ID</th>
						<th>Nome</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pessoas }" var="p">
					<tr>
						<td><c:out value="${p.id }"></c:out>
						<td><c:out value="${p.nome }"></c:out>
						</td>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
	
</body>
</html>