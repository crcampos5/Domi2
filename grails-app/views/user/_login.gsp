<div class="container">

	<form role="form" name='ajaxLoginForm' method='POST' class="form-signin" action="${request.contextPath}/j_spring_security_check">
		<h2 class="form-signin-heading">Por favor inicie sesión </h2>
		<input type="text" autofocus="" required="" name="j_username" class="form-control"> 
		<input type="password" required="" name="j_password" class="form-control"> 
		<label class="checkbox"> 
		<input type="checkbox" value="remember-me" name='_spring_security_remember_me'>	Recordarme
		</label>
		<button onclick='user_controller.authAjax(); return false;' type="submit" class="btn btn-lg btn-primary btn-block" name="authenticate">Entrar</button>
	</form>

</div>