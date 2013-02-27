
<%@ page import="universidad.AlumnoCurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumnoCurso.label', default: 'AlumnoCurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumnoCurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumnoCurso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="alumnoCurso.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="alumnoCurso.curso.label" default="Curso" /></th>
					
						<g:sortableColumn property="nota" title="${message(code: 'alumnoCurso.nota.label', default: 'Nota')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnoCursoInstanceList}" status="i" var="alumnoCursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnoCursoInstance.id}">${fieldValue(bean: alumnoCursoInstance, field: "alumno")}</g:link></td>
					
						<td>${fieldValue(bean: alumnoCursoInstance, field: "curso")}</td>
					
						<td>${fieldValue(bean: alumnoCursoInstance, field: "nota")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnoCursoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
