<%@ page import="universidad.Grupo" %>



<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="grupo.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${universidad.Alumno.list()}" multiple="multiple" optionKey="id" size="5" value="${grupoInstance?.alumnos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="grupo.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${universidad.Curso.list()}" optionKey="id" required="" value="${grupoInstance?.curso?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="grupo.horario.label" default="Horario" />
		
	</label>
	<g:textField name="horario" value="${grupoInstance?.horario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="grupo.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${grupoInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="grupo.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${universidad.Usuario.list()}" optionKey="id" required="" value="${grupoInstance?.profesor?.id}" class="many-to-one"/>
</div>

