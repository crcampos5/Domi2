<%@ page import="domi.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="45" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="user.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" maxlength="45" value="${userInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phonenumber', 'error')} ">
	<label for="phonenumber">
		<g:message code="user.phonenumber.label" default="Phonenumber" />
		
	</label>
	<g:textField name="phonenumber" maxlength="10" value="${userInstance?.phonenumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${userInstance.constraints.gender.inList}" value="${userInstance?.gender}" valueMessagePrefix="user.gender" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" maxlength="25" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		
	</label>
	<!--<g:textField name="role" value="${userInstance?.role}"/>-->
	<g:textField name="role" value="usuario"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="user.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${userInstance?.birthdate}"  />
</div>

<!-- <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="user.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pedido" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>
</li> 
</ul> 

</div> -->

