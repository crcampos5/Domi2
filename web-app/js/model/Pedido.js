function Pedido() {

	this.products_pedido = new Array();
	this.total;

	this.toJson = function() {
		var js = {}
		for (i = 0; i < this.products_pedido.length; i++) {

			var producto_pedido = {}
			producto_pedido = {
				product : JSON.stringify(this.products_pedido[i].product),
				cantidad : this.products_pedido[i].cantidad
			};
			js[i] = JSON.stringify(producto_pedido);
		}
		js2 = {
				products_pedido : JSON.stringify(js),
				total : this.total,
			};
		return { json : JSON.stringify(js2) };
	}
}
