<ul class="nav navbar-nav">
	<li><a onclick="user_controller.showRegistro();">Registrarse</a></li>
</ul>

<form class="navbar-form navbar-right" action="javascript: user_controller.login();">
	<div class="form-group">
		<input type="text" name="j_username" class="form-control">
	</div>
	<div class="form-group">
		<input type="password" name="j_password" class="form-control"
			placeholder="Password">
	</div>
	<button class="btn btn-success" id="auth-btn" name="authenticate"
		type="submit">Sign in</button>
	
                
</form>