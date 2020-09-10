<!DOCTYPE html>
<html>
<head>
	<link href="/css/app.css" rel="stylesheet">
	<link href="/css/custom.css" rel="stylesheet">
	<title>Stock control</title>
</head>
<body>
	<div class="container">
		
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				
				<div class="navbar-header">
					<a class="navbar-brand" href="/products">
						Stock laravel
					</a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="{{action('ProductController@list')}}">Listing</a></li>
					<li><a href="{{action('ProductController@new')}}">New</a></li>
				</ul>

			</div>
		</nav>
			@yield('content')

		<footer class="footer">
			<p>Laravel Study</p>
		</footer>
		
	</div>

</body>
</html>