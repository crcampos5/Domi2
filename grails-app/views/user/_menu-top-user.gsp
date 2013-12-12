
<ul class="nav navbar-nav">
	<li class="dropdown">
	<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
	${session.user.name} <b class="caret"></b>
	</a>
		<ul class="dropdown-menu">

			<li><g:link controller="user" action="edit">Cuenta</g:link></li>

			<li class="divider"></li>

			<li><g:link controller="user" action="logout">Salir</g:link></li>

		</ul>
		
	</li>
</ul>