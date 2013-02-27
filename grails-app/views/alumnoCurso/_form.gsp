<%@ page import="universidad.AlumnoCurso" %>



<div class="fieldcontain ${hasErrors(bean: alumnoCursoInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="alumnoCurso.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${universidad.Alumno.list()}" optionKey="id" required="" value="${alumnoCursoInstance?.alumno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoCursoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="alumnoCurso.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${universidad.Curso.list()}" optionKey="id" required="" value="${alumnoCursoInstance?.curso?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoCursoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="alumnoCurso.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" type="number" value="${alumnoCursoInstance.nota}" required=""/>
</div>

