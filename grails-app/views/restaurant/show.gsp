
<%@ page import="domi.Restaurant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restaurant.label', default: 'Restaurant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-restaurant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-restaurant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list restaurant">
			
				<g:if test="${restaurantInstance?.nit}">
				<li class="fieldcontain">
					<span id="nit-label" class="property-label"><g:message code="restaurant.nit.label" default="Nit" /></span>
					
						<span class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${restaurantInstance}" field="nit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="restaurant.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${restaurantInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="restaurant.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${restaurantInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="restaurant.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${restaurantInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="restaurant.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${restaurantInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="restaurant.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${restaurantInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="restaurant.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${restaurantInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.fanpage}">
				<li class="fieldcontain">
					<span id="fanpage-label" class="property-label"><g:message code="restaurant.fanpage.label" default="Fanpage" /></span>
					
						<span class="property-value" aria-labelledby="fanpage-label"><g:fieldValue bean="${restaurantInstance}" field="fanpage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="restaurant.logo.label" default="Logo" /></span>
					
						<span class="property-value" aria-labelledby="logo-label"><g:fieldValue bean="${restaurantInstance}" field="logo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="restaurant.products.label" default="Products" /></span>
					
						<g:each in="${restaurantInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="restaurant.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${restaurantInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restaurantInstance?.web}">
				<li class="fieldcontain">
					<span id="web-label" class="property-label"><g:message code="restaurant.web.label" default="Web" /></span>
					
						<span class="property-value" aria-labelledby="web-label"><g:fieldValue bean="${restaurantInstance}" field="web"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${restaurantInstance?.id}" />
					<g:link class="edit" action="edit" id="${restaurantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
