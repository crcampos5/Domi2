
<%@ page import="domi.ProductosPedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productosPedido.label', default: 'ProductosPedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productosPedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productosPedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cantidad" title="${message(code: 'productosPedido.cantidad.label', default: 'Cantidad')}" />
					
						<th><g:message code="productosPedido.pedido.label" default="Pedido" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productosPedidoInstanceList}" status="i" var="productosPedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productosPedidoInstance.id}">${fieldValue(bean: productosPedidoInstance, field: "cantidad")}</g:link></td>
					
						<td>${fieldValue(bean: productosPedidoInstance, field: "pedido")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productosPedidoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
