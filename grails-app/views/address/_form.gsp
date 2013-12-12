<%@ page import="domi.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streettype', 'error')} ">
	<label for="streettype">
		<g:message code="address.streettype.label" default="Streettype" />
		
	</label>
	<g:select name="streettype" from="${addressInstance.constraints.streettype.inList}" value="${addressInstance?.streettype}" valueMessagePrefix="address.streettype" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetnumber', 'error')} ">
	<label for="streetnumber">
		<g:message code="address.streetnumber.label" default="Streetnumber" />
		
	</label>
	<g:textField name="streetnumber" value="${addressInstance?.streetnumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'numberone', 'error')} ">
	<label for="numberone">
		<g:message code="address.numberone.label" default="Numberone" />
		
	</label>
	<g:textField name="numberone" value="${addressInstance?.numberone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'numbertwo', 'error')} ">
	<label for="numbertwo">
		<g:message code="address.numbertwo.label" default="Numbertwo" />
		
	</label>
	<g:textField name="numbertwo" value="${addressInstance?.numbertwo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'barrio', 'error')} ">
	<label for="barrio">
		<g:message code="address.barrio.label" default="Barrio" />
		
	</label>
	<g:textField name="barrio" value="${addressInstance?.barrio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="address.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${domi.User.list()}" optionKey="id" required="" value="${addressInstance?.direccion?.id}" class="many-to-one"/>
</div>

