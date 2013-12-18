
<ul class="nav navbar-nav">
	<li class="dropdown">
	<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
	<sec:username/> <b class="caret"></b>
	</a>
		<ul class="dropdown-menu">

			<li><g:link controller="user" action="edit">Cuenta</g:link></li>

			<li class="divider"></li>

			<li><a onclick="javascript: user_controller.logout();">Salir</a></li>

		</ul>
		
	</li>
</ul>