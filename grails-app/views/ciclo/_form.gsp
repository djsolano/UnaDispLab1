<%@ page import="universidad.Ciclo" %>



<div class="fieldcontain ${hasErrors(bean: cicloInstance, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="ciclo.anio.label" default="Anio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="anio" precision="day"  value="${cicloInstance?.anio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cicloInstance, field: 'fin', 'error')} required">
	<label for="fin">
		<g:message code="ciclo.fin.label" default="Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fin" precision="day"  value="${cicloInstance?.fin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cicloInstance, field: 'inicio', 'error')} required">
	<label for="inicio">
		<g:message code="ciclo.inicio.label" default="Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicio" precision="day"  value="${cicloInstance?.inicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cicloInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="ciclo.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" value="${cicloInstance?.numero}"/>
</div>

