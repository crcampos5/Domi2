<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Domi2</title>
		
	</head>
	<body>
	
			<input class="btn btn-primary " type="button" onclick="javascript: restaurant_controller.list();" value="Restaurantes">
		
		<div id="page-body" role="main">
			<h1>Welcome to Domi2</h1>
			<p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
