
<%@ page import="universidad.Ciclo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ciclo.label', default: 'Ciclo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ciclo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ciclo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="anio" title="${message(code: 'ciclo.anio.label', default: 'Anio')}" />
					
						<g:sortableColumn property="fin" title="${message(code: 'ciclo.fin.label', default: 'Fin')}" />
					
						<g:sortableColumn property="inicio" title="${message(code: 'ciclo.inicio.label', default: 'Inicio')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'ciclo.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cicloInstanceList}" status="i" var="cicloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cicloInstance.id}">${fieldValue(bean: cicloInstance, field: "anio")}</g:link></td>
					
						<td><g:formatDate date="${cicloInstance.fin}" /></td>
					
						<td><g:formatDate date="${cicloInstance.inicio}" /></td>
					
						<td>${fieldValue(bean: cicloInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cicloInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
