
<%@ page import="universidad.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.anio}">
				<li class="fieldcontain">
					<span id="anio-label" class="property-label"><g:message code="curso.anio.label" default="Anio" /></span>
					
						<span class="property-value" aria-labelledby="anio-label"><g:fieldValue bean="${cursoInstance}" field="anio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.ciclo}">
				<li class="fieldcontain">
					<span id="ciclo-label" class="property-label"><g:message code="curso.ciclo.label" default="Ciclo" /></span>
					
						<span class="property-value" aria-labelledby="ciclo-label"><g:link controller="ciclo" action="show" id="${cursoInstance?.ciclo?.id}">${cursoInstance?.ciclo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="curso.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${cursoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.creditos}">
				<li class="fieldcontain">
					<span id="creditos-label" class="property-label"><g:message code="curso.creditos.label" default="Creditos" /></span>
					
						<span class="property-value" aria-labelledby="creditos-label"><g:fieldValue bean="${cursoInstance}" field="creditos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.horasSemanales}">
				<li class="fieldcontain">
					<span id="horasSemanales-label" class="property-label"><g:message code="curso.horasSemanales.label" default="Horas Semanales" /></span>
					
						<span class="property-value" aria-labelledby="horasSemanales-label"><g:fieldValue bean="${cursoInstance}" field="horasSemanales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="curso.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${cursoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cursoInstance?.id}" />
					<g:link class="edit" action="edit" id="${cursoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
