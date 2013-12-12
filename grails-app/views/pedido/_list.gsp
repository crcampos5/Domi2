<h2>Historial de Pedidos</h2>

<div class="panel panel-default">
  <!-- Default panel contents 
  <div class="panel-heading">Panel heading</div>-->
<table class="table">
	<thead>
		<tr>

			<g:sortableColumn property="code"
				title="${message(code: 'pedido.code.label', default: 'Codigo')}" />

			<g:sortableColumn property="date"
				title="${message(code: 'pedido.date.label', default: 'Fecha')}" />

			<g:sortableColumn property="total"
				title="${message(code: 'pedido.total.label', default: 'Total')}" />

			<th><g:message code="pedido.usuario.label" default="Usuario" /></th>

		</tr>
	</thead>
	<tbody>
		<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

				<td><a onclick="javascript: pedido_controller.showPedido(${pedidoInstance.id});">
						${fieldValue(bean: pedidoInstance, field: "code")}
					</a></td>

				<td><g:formatDate date="${pedidoInstance.date}" /></td>

				<td>
					${fieldValue(bean: pedidoInstance, field: "total")}
				</td>

				<td>
					${fieldValue(bean: pedidoInstance, field: "usuario")}
				</td>

			</tr>
		</g:each>
	</tbody>
</table>
</div>