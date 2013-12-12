<%@ page import="domi.ProductosPedido" %>



<div class="fieldcontain ${hasErrors(bean: productosPedidoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="productosPedido.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${productosPedidoInstance.cantidad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productosPedidoInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="productosPedido.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${domi.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${productosPedidoInstance?.productos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productosPedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="productosPedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${domi.Pedido.list()}" optionKey="id" required="" value="${productosPedidoInstance?.pedido?.id}" class="many-to-one"/>
</div>

