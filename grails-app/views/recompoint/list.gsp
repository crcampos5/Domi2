
<%@ page import="domi.Recompoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recompoint.label', default: 'Recompoint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recompoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recompoint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="point" title="${message(code: 'recompoint.point.label', default: 'Point')}" />
					
						<th><g:message code="recompoint.restaurante.label" default="Restaurante" /></th>
					
						<th><g:message code="recompoint.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recompointInstanceList}" status="i" var="recompointInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recompointInstance.id}">${fieldValue(bean: recompointInstance, field: "point")}</g:link></td>
					
						<td>${fieldValue(bean: recompointInstance, field: "restaurante")}</td>
					
						<td>${fieldValue(bean: recompointInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recompointInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
