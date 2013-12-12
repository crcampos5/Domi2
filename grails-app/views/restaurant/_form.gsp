<%@ page import="domi.Restaurant" %>



<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'nit', 'error')} ">
	<label for="nit">
		<g:message code="restaurant.nit.label" default="Nit" />
		
	</label>
	<g:textField name="nit" maxlength="24" value="${restaurantInstance?.nit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="restaurant.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${restaurantInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="restaurant.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${restaurantInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="restaurant.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" maxlength="25" value="${restaurantInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="restaurant.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${domi.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${restaurantInstance?.comentarios*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="restaurant.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${restaurantInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="restaurant.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${restaurantInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'fanpage', 'error')} ">
	<label for="fanpage">
		<g:message code="restaurant.fanpage.label" default="Fanpage" />
		
	</label>
	<g:textField name="fanpage" value="${restaurantInstance?.fanpage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="restaurant.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" value="${restaurantInstance?.logo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="restaurant.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${restaurantInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['restaurant.id': restaurantInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="restaurant.role.label" default="Role" />
		
	</label>
	<g:textField name="role" value="${restaurantInstance?.role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'web', 'error')} ">
	<label for="web">
		<g:message code="restaurant.web.label" default="Web" />
		
	</label>
	<g:textField name="web" value="${restaurantInstance?.web}"/>
</div>

