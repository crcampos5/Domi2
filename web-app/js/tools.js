
	function actualizarTotal(pedido) {
		var total = 0;
		for (var i = 0; i < pedido.products_pedido.length; i++) {
			total += pedido.products_pedido[i].product.price
					* pedido.products_pedido[i].cantidad;
		}
		pedido.total = total;
		$("#total-pedido").html(total);
	}

	function ajax(url, params, callback) {
		var jax = $.ajax({
			type : "GET",
			url : appContext + url,
			// dataType : 'json',
			data : params,
			success : function(data) {
				callback(data);
			},
			error : function(request, status, error) {
				alert("Error");
			},
			complete : function(data) {

			}
		});

		return jax;
	}

	// ------------------Templates---------------------------------------------

	function itemListPedido(producto) {
		var t = "<li class='list-li' id='p" + producto.product.id + "' >";
		t += "<div class='item'>";
		t += "<span class='cant' id='c" + producto.product.id + "'>"
				+ producto.cantidad + "</span>";
		t += "<span class='name'>" + producto.product.name + "</span>";
		t += "<span class='delete' onclick='javascript: pedido_controller.deleteProduct("
				+ producto.product.id + ");'>X</span></div></li>";
		$("#product-l").append(t);
	}
	// ------------------------------------------------------------------------