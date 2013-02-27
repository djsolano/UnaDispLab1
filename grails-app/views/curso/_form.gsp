<%@ page import="universidad.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'anio', 'error')} ">
	<label for="anio">
		<g:message code="curso.anio.label" default="Anio" />
		
	</label>
	<g:textField name="anio" value="${cursoInstance?.anio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'ciclo', 'error')} required">
	<label for="ciclo">
		<g:message code="curso.ciclo.label" default="Ciclo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ciclo" name="ciclo.id" from="${universidad.Ciclo.list()}" optionKey="id" required="" value="${cursoInstance?.ciclo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="curso.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${cursoInstance.codigo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'creditos', 'error')} required">
	<label for="creditos">
		<g:message code="curso.creditos.label" default="Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="creditos" type="number" value="${cursoInstance.creditos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horasSemanales', 'error')} required">
	<label for="horasSemanales">
		<g:message code="curso.horasSemanales.label" default="Horas Semanales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horasSemanales" type="number" value="${cursoInstance.horasSemanales}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="curso.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${cursoInstance?.nombre}"/>
</div>

