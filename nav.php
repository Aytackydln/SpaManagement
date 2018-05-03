<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navbar" aria-expanded="false">open!</button>
		</div>
		<div class="collapse navbar-collapse" id="main_navbar" style="float:left">
			<ul class="nav navbar-nav">
				<li <?php if($active=="home")echo 'class="active"'; ?>> <a href="home.php">Home</a></li>
				<li <?php if($active=="services")echo 'class="active"'; ?>> <a href="services.php">Services</a></li>
			</ul>
		</div>
<div class="dropdown" style="float:right">
	<a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" id="dropdownButton">Login</a>
	<ul class="dropdown-menu dropdown-menu-right" id="login">
		<form action="login.php?from=home.htm">
			<li><input type="text" name="user" placeholder="Username"></li>
			<li><input type="password" name="password" placeholder="password"></li>
			<li><input type="submit" value="Login"</li>
		</form>
	</ul>
</div>
	</div>
</nav>