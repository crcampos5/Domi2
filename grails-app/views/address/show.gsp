
<%@ page import="domi.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-address" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list address">
			
				<g:if test="${addressInstance?.streettype}">
				<li class="fieldcontain">
					<span id="streettype-label" class="property-label"><g:message code="address.streettype.label" default="Streettype" /></span>
					
						<span class="property-value" aria-labelledby="streettype-label"><g:fieldValue bean="${addressInstance}" field="streettype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.streetnumber}">
				<li class="fieldcontain">
					<span id="streetnumber-label" class="property-label"><g:message code="address.streetnumber.label" default="Streetnumber" /></span>
					
						<span class="property-value" aria-labelledby="streetnumber-label"><g:fieldValue bean="${addressInstance}" field="streetnumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.numberone}">
				<li class="fieldcontain">
					<span id="numberone-label" class="property-label"><g:message code="address.numberone.label" default="Numberone" /></span>
					
						<span class="property-value" aria-labelledby="numberone-label"><g:fieldValue bean="${addressInstance}" field="numberone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.numbertwo}">
				<li class="fieldcontain">
					<span id="numbertwo-label" class="property-label"><g:message code="address.numbertwo.label" default="Numbertwo" /></span>
					
						<span class="property-value" aria-labelledby="numbertwo-label"><g:fieldValue bean="${addressInstance}" field="numbertwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.barrio}">
				<li class="fieldcontain">
					<span id="barrio-label" class="property-label"><g:message code="address.barrio.label" default="Barrio" /></span>
					
						<span class="property-value" aria-labelledby="barrio-label"><g:fieldValue bean="${addressInstance}" field="barrio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="address.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${addressInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="address.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:link controller="user" action="show" id="${addressInstance?.direccion?.id}">${addressInstance?.direccion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${addressInstance?.id}" />
					<g:link class="edit" action="edit" id="${addressInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
