
<%@ page import="domi.Recompoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recompoint.label', default: 'Recompoint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recompoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recompoint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recompoint">
			
				<g:if test="${recompointInstance?.point}">
				<li class="fieldcontain">
					<span id="point-label" class="property-label"><g:message code="recompoint.point.label" default="Point" /></span>
					
						<span class="property-value" aria-labelledby="point-label"><g:fieldValue bean="${recompointInstance}" field="point"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recompointInstance?.restaurante}">
				<li class="fieldcontain">
					<span id="restaurante-label" class="property-label"><g:message code="recompoint.restaurante.label" default="Restaurante" /></span>
					
						<span class="property-value" aria-labelledby="restaurante-label"><g:link controller="restaurant" action="show" id="${recompointInstance?.restaurante?.id}">${recompointInstance?.restaurante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${recompointInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="recompoint.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="user" action="show" id="${recompointInstance?.usuario?.id}">${recompointInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${recompointInstance?.id}" />
					<g:link class="edit" action="edit" id="${recompointInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
