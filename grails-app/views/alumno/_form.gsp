<%@ page import="universidad.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="alumno.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${alumnoInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="alumno.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${alumnoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="alumno.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${alumnoInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="alumno.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${alumnoInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'carrera', 'error')} required">
	<label for="carrera">
		<g:message code="alumno.carrera.label" default="Carrera" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carrera" name="carrera.id" from="${universidad.Carrera.list()}" optionKey="id" required="" value="${alumnoInstance?.carrera?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'cedula', 'error')} ">
	<label for="cedula">
		<g:message code="alumno.cedula.label" default="Cedula" />
		
	</label>
	<g:textField name="cedula" value="${alumnoInstance?.cedula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="alumno.cursos.label" default="Cursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alumnoInstance?.cursos?}" var="c">
    <li><g:link controller="alumnoCurso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumnoCurso" action="create" params="['alumno.id': alumnoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="alumno.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${alumnoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="alumno.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${alumnoInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="alumno.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${alumnoInstance?.fechaNacimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="alumno.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${alumnoInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="alumno.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${universidad.Role.list()}" optionKey="id" required="" value="${alumnoInstance?.role?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="alumno.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${alumnoInstance?.telefono}"/>
</div>

