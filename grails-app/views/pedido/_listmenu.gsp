<%@ page import="domi.Product" %>



	<div class="container products-template" >
			<div class="row">
			
			<g:each in="${menuInstance}" status="i" var="productInstance">
			
				<div class="col-sm-1 col-md-12">
					<div class="thumbnail product-list">
						
						<img class="img-product" src="${resource(dir: 'img', file: 'indiceimg.png' )}" alt="..."/>
						
						<div class="content-1">
							<h3 class="name-product">${fieldValue(bean: productInstance, field: "name")}</h3>
							<p class="description">${fieldValue(bean: productInstance, field: "description")}</p>
						</div>
							
							<div class="content-2">
							<h3 class="price">${fieldValue(bean: productInstance, field: "price")}</h3>
							<input class="btn btn-primary add-pedido" type="button" value="+" onclick="javascript: pedido_controller.addProduct(${productInstance.id});">						
							</div>
								
						</div>	

				</div>
				</g:each>
			</div>
		</div>
		

	