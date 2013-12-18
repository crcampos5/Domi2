<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title><g:layoutTitle default="Grails" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
	<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	<!-- <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">-->
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.min.css')}"type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles-user.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles-product.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles-pedido.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
	<!--  link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /-->



	<script type="text/javascript" src="/Domi/static/js/jquery-1.10.2.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	
	<g:javascript library="application" />
	<g:javascript library="pedido_controller" />
	<g:javascript library="user_controller" />
	<g:javascript library="restaurant_controller" />
	<g:javascript library="bootstrap" />
	<g:javascript library="product" />
	<g:javascript library="pedido" />
	<g:javascript library="tools" />

	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

	<g:layoutHead />
	<r:layoutResources />
</head>
<body>
	<script>
	window.appContext = '${request.contextPath}';
	</script>	
	<header class="header" id="header">
		<div class="navbar navbar-inverse ">
			<div class="container">
				<div class="navbar-header">
					<button data-target=".navbar-collapse" data-toggle="collapse"
						class="navbar-toggle" type="button">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a onclick="user_controller.indexUser()" class="navbar-brand">Domi2</a>
					<ul class="nav navbar-nav">
				</div>
				<div class="navbar-collapse collapse navbar-right" id="navbar-user">
					<sec:ifLoggedIn>
						<g:render template="/user/menu-top-user"/> 
        				 Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
      				</sec:ifLoggedIn>
      				<sec:ifNotLoggedIn>
      					<g:render template="/user/logout"/>
       					 <a href='#' onclick='user_controller.showLogin(); return false;'>Login</a>
     				 </sec:ifNotLoggedIn>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
	
	
	<div class="left" id="left">
	
	</div>
	<div class="center" id="center">
		<div class="container">
			<g:layoutBody />
		</div>
	</div>
	<div class="right" id="right">
	
	</div>
	</div>
	<footer class="footer" id="footer">
		<div class="container">
			<p>Todos los derechos reservados @Campos5</p>
		</div>

	</footer>


	


	<r:layoutResources />
</body>
</html>
