<%@ page import="domi.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>

	<div id="create-user" class="content scaffold-create" role="main">
		<h1>Login</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<g:form action="authenticate">
			<fieldset class="form">
				<div
					class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
					<label for="email"> <g:message code="user.email.label"
							default="Email" />

					</label>
					<g:field type="email" name="email" value="${userInstance?.email}" />
				</div>
				<div
					class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
					<label for="password"> <g:message
							code="user.password.label" default="Password" />

					</label>
					<g:field type="password" name="password" maxlength="25"
						value="${userInstance?.password}" />
				</div>
				<!-- g:render template="form" /-->
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="authenticate" class="save" value="Entrar" />
			</fieldset>
		</g:form>
	</div>

</body>
</html>
