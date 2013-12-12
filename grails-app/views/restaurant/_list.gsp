<div class="container">
	<h1>Restaurantes</h1>
	<div class="row">

		<g:each in="${restaurantInstanceList}" status="i"
			var="restaurantInstance">

			<div class="col-6 col-sm-6 col-lg-4 ">
				<div class="thumbnail restaurant-list">

					<img src="${resource(dir: 'img', file: 'indiceimg.png')}" alt="..." />

					<div class="caption">
						<h3>
							${fieldValue(bean: restaurantInstance, field: "name")}
						</h3>
						<p>
							${fieldValue(bean: restaurantInstance, field: "description")}
						</p>
						<p>
							<a class="btn btn-primary"  onclick="javascript: pedido_controller.newPedido(${restaurantInstance.id});" >Ver</a>
						</p>
					</div>
				</div>

			</div>
		</g:each>
	</div>
</div>
