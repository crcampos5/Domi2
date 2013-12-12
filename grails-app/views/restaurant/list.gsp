
<%@ page import="domi.Restaurant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restaurant.label', default: 'Restaurant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
	<div class="container">
	<h1>Restaurantes</h1>
			<div class="row">
			
			<g:each in="${restaurantInstanceList}" status="i" var="restaurantInstance">
			
				<div class="col-6 col-sm-6 col-lg-4 ">
					<div class="thumbnail restaurant-list">
						
						<img src="${resource(dir: 'img', file: 'indiceimg.png')}" alt="..."/>
						
						<div class="caption">
							<h3>${fieldValue(bean: restaurantInstance, field: "name")}</h3>
							<p>${fieldValue(bean: restaurantInstance, field: "description")}</p>
							<p>
								<g:link class="btn btn-primary" controller="pedido" action="index" id="${restaurantInstance.id}">Ver</g:link>
								
							</p>
						</div>
					</div>	

				</div>
				</g:each>
			</div>
		</div>
		
		
	</body>
</html>
