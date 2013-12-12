<ul class="nav navbar-nav">
	<li><g:link controller="user" action="create">Registrarse</g:link></li>
</ul>

<form class="navbar-form navbar-right" action="javascript: user_controller.login();">
	<div class="form-group">
		<input type="text" name="email" class="form-control"
			placeholder="Email">
	</div>
	<div class="form-group">
		<input type="password" name="password" class="form-control"
			placeholder="Password">
	</div>
	<button class="btn btn-success" id="auth-btn" name="authenticate"
		type="submit">Sign in</button>
		
                
</form>