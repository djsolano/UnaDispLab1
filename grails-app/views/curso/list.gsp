
<%@ page import="universidad.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="anio" title="${message(code: 'curso.anio.label', default: 'Anio')}" />
					
						<th><g:message code="curso.ciclo.label" default="Ciclo" /></th>
					
						<g:sortableColumn property="codigo" title="${message(code: 'curso.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="creditos" title="${message(code: 'curso.creditos.label', default: 'Creditos')}" />
					
						<g:sortableColumn property="horasSemanales" title="${message(code: 'curso.horasSemanales.label', default: 'Horas Semanales')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'curso.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "anio")}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "ciclo")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "creditos")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "horasSemanales")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
