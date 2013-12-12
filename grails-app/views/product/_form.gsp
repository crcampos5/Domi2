<%@ page import="domi.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="45" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'restaurant', 'error')} required">
	<label for="restaurant">
		<g:message code="product.restaurant.label" default="Restaurant" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="restaurant" name="restaurant.id" from="${domi.Restaurant.list()}" optionKey="id" required="" value="${productInstance?.restaurant?.id}" class="many-to-one"/>
</div>

