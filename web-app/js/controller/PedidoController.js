/*$( "#menu-1" ).click(function() {
	for(i=1;i<=5;i++){
		$("#menu-"+i).removeClass("active");	
	}
	$("#menu-1").addClass("active");
});*/

function PedidoController() {
	var pedido;
	var products_restaurant;

	this.addProduct = function(valor) {

		var params = {
			productId : valor,
		};
		var product;

		if (products_restaurant == null) {
			pedido = new Pedido();
			var call = function(products) {
				products_restaurant = products;
				product = products_restaurant[valor - 1];
				pedido.products_pedido.push(new Product(product, 1));
				var producto = pedido.products_pedido[pedido.products_pedido.length - 1];

				itemListPedido(producto);
				actualizarTotal(pedido);
			};
			var ja = ajax("/pedido/ajaxListProduct", params, call);
		} else {
			var ban = false;
			var producto;

			for (var i = 0; i < pedido.products_pedido.length; i++) {
				if (pedido.products_pedido[i].product.id == valor) {
					pedido.products_pedido[i].cantidad++;
					producto = pedido.products_pedido[i];
					ban = true;
					break;
				}
			}
			if (ban) {
				$("#c" + producto.product.id).html(producto.cantidad);
				actualizarTotal(pedido);
			} else {
				product = products_restaurant[valor - 1];
				pedido.products_pedido.push(new Product(product, 1));
				producto = pedido.products_pedido[pedido.products_pedido.length - 1];
				itemListPedido(producto);
				actualizarTotal(pedido);
			}
		}
	}

	this.confirmarPedido = function() {
		var url, params;
		if(user.isLogin()){
			params = pedido.toJson();
			url = "/pedido/ajaxConfirmarPedido";
		}else{
			params = {templa : "login"};
			url = "/user/ajaxLoadTemplate";
		}
		var call = function(data) {
			$("#center").html(data);
		}
		var jax = ajax(url, params, call);
		 pedido = null;
		 products_restaurant = null;

	}

	this.deleteProduct = function(valor) {
		for (var i = 0; i < pedido.products_pedido.length; i++) {
			if (pedido.products_pedido[i].product.id == valor) {
				$("#p" + pedido.products_pedido[i].product.id).remove();
				pedido.products_pedido.splice(i, 1);
				actualizarTotal(pedido);
				break;
			}
		}
	}

	this.newPedido = function(valor) {
		var params = {restaurantId : valor};
		var call = function(data){
			$("#center").html(data);
		};
		var jax = ajax("/pedido/ajaxIndex", params, call);
	}
	
	this.tabs = function(valor) {
		for(i=1;i<=3;i++){
				$("#tabs-"+i).css('display', 'none');
				$("#tab"+i).removeClass("active");	
		}
		$("#tabs-"+valor).css('display', '');
		$("#tab"+valor).addClass("active");
	}
	
	this.showPedido = function(valor){
		var params = {templa: "show", pedidoId : valor};
		var call = function(data){
			$("#center").html(data);
		};
		var jax = ajax("/pedido/ajaxShowPedido", params, call);
	}
	
	this.list = function(){
		var params = {max: 20};
		var call = function(data){
			$("#center").html(data);
			for(i=1;i<=5;i++){
				$("#menu-"+i).removeClass("active");	
			}
			$("#menu-2").addClass("active");
		};
		var jax = ajax("/pedido/ajaxListPedido", params, call);
	}
	// funciones privadas -------------------------------------------

	
}