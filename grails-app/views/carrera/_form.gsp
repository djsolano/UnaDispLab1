<%@ page import="universidad.Carrera" %>



<div class="fieldcontain ${hasErrors(bean: carreraInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="carrera.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${carreraInstance.codigo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carreraInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="carrera.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${universidad.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${carreraInstance?.cursos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carreraInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="carrera.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${carreraInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carreraInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="carrera.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${carreraInstance?.titulo}"/>
</div>

