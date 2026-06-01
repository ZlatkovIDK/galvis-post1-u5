<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><body>
<h1>Lista de Tareas</h1>
<c:if test="${not empty error}"><p>${error}</p></c:if>
<form method="post" action="${pageContext.request.contextPath}/tareas">
<input type="hidden" name="accion" value="agregar">
<input type="text" name="titulo" required>
<button type="submit">Agregar</button>
</form>
<table border="1">
<c:forEach var="t" items="${tareas}">
<tr>
<td>${t.id}</td>
<td>${t.titulo}</td>
<td>
<form method="post" action="${pageContext.request.contextPath}/tareas">
<input type="hidden" name="accion" value="eliminar">
<input type="hidden" name="id" value="${t.id}">
<button type="submit">Eliminar</button>
</form>
</td>
</tr>
</c:forEach>
</table>
</body></html>