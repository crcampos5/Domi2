
<%@ page import="domi.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'pedido.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'pedido.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'pedido.total.label', default: 'Total')}" />
					
						<th><g:message code="pedido.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pedidoInstance.id}">${fieldValue(bean: pedidoInstance, field: "code")}</g:link></td>
					
						<td><g:formatDate date="${pedidoInstance.date}" /></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "total")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pedidoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
