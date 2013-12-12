<div class="container">

	<form role="form" class="form-signin" action="javascript: user_controller.login();">
		<h2 class="form-signin-heading">Por favor inicie sesión </h2>
		<input type="text" autofocus="" required="" name="email" placeholder="Email" class="form-control"> 
		<input type="password" required="" name="password" placeholder="Password" class="form-control"> 
		<label class="checkbox"> 
		<input type="checkbox" value="remember-me">	Recordarme
		</label>
		<button type="submit" class="btn btn-lg btn-primary btn-block" name="authenticate">Entrar</button>
	</form>

</div>