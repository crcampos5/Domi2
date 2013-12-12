<%@ page import="domi.Product" %>
<!DOCTYPE html>
<div id="hola">

<p>
	Este es el template de productos

	</p>


<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'styles-product.css')}" type="text/css">

	<h1>Productos</h1>
	<div class="container products-template" >
			<div class="row">
			
			<g:each in="${productInstanceList}" status="i" var="productInstance">
			
				<div class="col-sm-1 col-md-12">
					<div class="thumbnail product-list">
						
						<img src="${resource(dir: 'img', file: 'indiceimg.png' )}" alt="..."/>
						
						
							<h3>${fieldValue(bean: productInstance, field: "name")}</h3>
							<h3>${fieldValue(bean: productInstance, field: "price")}</h3>
							<td>${fieldValue(bean: productInstance, field: "restaurant")}</td>
							<p>${fieldValue(bean: productInstance, field: "description")}</p>
							
						
							<p>
								<g:link class="btn btn-primary" controller="product" id="${productInstance.id}">+</g:link>
								
						</div>	

				</div>
				</g:each>
			</div>
		</div>
		
		


</div>

	