<%@ page import="domi.Recompoint" %>



<div class="fieldcontain ${hasErrors(bean: recompointInstance, field: 'point', 'error')} required">
	<label for="point">
		<g:message code="recompoint.point.label" default="Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="point" from="${recompointInstance.constraints.point.inList}" required="" value="${fieldValue(bean: recompointInstance, field: 'point')}" valueMessagePrefix="recompoint.point"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recompointInstance, field: 'restaurante', 'error')} required">
	<label for="restaurante">
		<g:message code="recompoint.restaurante.label" default="Restaurante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="restaurante" name="restaurante.id" from="${domi.Restaurant.list()}" optionKey="id" required="" value="${recompointInstance?.restaurante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recompointInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="recompoint.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${domi.User.list()}" optionKey="id" required="" value="${recompointInstance?.usuario?.id}" class="many-to-one"/>
</div>

