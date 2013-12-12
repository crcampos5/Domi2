if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$(function() {
	$("#tabs").tabs();
});

var pedido_controller;
var user_controller;
var restaurant_controller;


$( window ).load(function() {
	 pedido_controller = new PedidoController();
	 user_controller = new UserController();
	 restaurant_controller = new RestaurantController();
	});