<%@ page import="domi.Restaurant"%>
<%@ page import="domi.Product"%>

<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="layout" content="main">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'styles-pedido.css')}" type="text/css">
</head>
<body>
	
	<div id="tabs" class="tabs" >
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="#tabs-1">Menu</a></li>
			<li><a href="#tabs-2">Informacion</a></li>
			<li><a href="#tabs-3">Comentarios</a></li>
		</ul>
		<div id="tabs-1">
		<h3>Menu</h3>
		<g:render template="list"/>
				
		</div>
		<div id="tabs-2">
		<h3>Informacion</h3>
			<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
				gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
				molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
				eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet
				fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.
				Praesent in eros vestibulum mi adipiscing adipiscing. Morbi
				facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut
				posuere viverra nulla. Aliquam erat volutpat. Pellentesque
				convallis. Maecenas feugiat, tellus pellentesque pretium posuere,
				felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris
				consectetur tortor et purus.</p>
		</div>
		<div id="tabs-3">
		<h3>Comentatios</h3>
		
			<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse
				potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque
				rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante.
				Class aptent taciti sociosqu ad litora torquent per conubia nostra,
				per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim
				commodo pellentesque. Praesent eu risus hendrerit ligula tempus
				pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a,
				lacus.</p>
			<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at,
				semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra
				justo vitae neque. Praesent blandit adipiscing velit. Suspendisse
				potenti. Donec mattis, pede vel pharetra blandit, magna ligula
				faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque.
				Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi
				lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean
				vehicula velit eu tellus interdum rutrum. Maecenas commodo.
				Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus
				hendrerit hendrerit.</p>
		</div>
	</div>

	<div id="note-pedido"class="note-pedido">
		<h3>Pedido</h3>
		<div >
		<ul id="product-l" class="product-l">
		
		</ul>
		</div>
		<div>
		<h3 class="htotal">Total</h3>
		<span class="total" id="total-pedido"></span>
		</div>
		<div>
		<input class="btn btn-primary confirmar-pedido" type="button" value="Confirmar" onclick="javascript: pedido_controller.confirmarPedido();">	
		</div>
	</div>

</body>



</html>

