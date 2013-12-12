<%@ page import="domi.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="pedido.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="code" value="${fieldValue(bean: pedidoInstance, field: 'code')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="pedido.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${pedidoInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="pedido.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${domi.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${pedidoInstance?.productos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="pedido.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: pedidoInstance, field: 'total')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="pedido.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${domi.User.list()}" optionKey="id" required="" value="${pedidoInstance?.usuario?.id}" class="many-to-one"/>
</div>

