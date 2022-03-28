<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>($page_title|default:"SilverFortrax")</title>

	<link rel="shortcut icon" href="/Zp3/assets/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="/ZP3/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/ZP3/assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="/Zp3/assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="/Zp3/assets/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active"><a href="http://localhost/ZP3/">Home</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebar-left.html">Left Sidebar</a></li>
							<li class="active"><a href="sidebar-right.html">Right Sidebar</a></li>
						</ul>
					</li>
					<li><a class="btn" href="signin.html">SIGN IN</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h1 class="lead">AWESOME and SUPER COOL INTERNET PAGE</h1>
				<p class="tagline">and it's free</p>
				<!--<p><a class="btn btn-default btn-lg" role="button">MORE INFO</a> <a class="btn btn-action btn-lg" role="button">DOWNLOAD NOW</a></p> -->
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<!--
	<div class="container text-center">
		<br> <br>
		<h2 class="thin">The best place to tell people why they are here</h2>
		<p class="text-muted">
			The difference between involvement and commitment is like an eggs-and-ham breakfast:<br> 
			the chicken was involved; the pig was committed.
		</p>
-->
	</div>

	<!-- /Intro-->
		
	<!-- Highlights - jumbotron -->
	<div class="jumbotron top-space">
		<div class="container">
			
			<h3 class="text-center thin">Kalkulator </h3>
			
			<div class="row">
				<form action="<?php print(_APP_ROOT);?>/app/calc.php" method="post">
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4>Wysokość pożyczki</h4></div>
					<div class="h-body text-center">
						<input id="x" type="text" placeholder="Wysokość pożyczki" name="x" value="<?php if(isset($x)) print($x); ?>" /><br><br>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4>Ilość rat</h4></div>
					<div class="h-body text-center">
						<input id="y" type="text" placeholder="Ilość rat" name="y" value="<?php if(isset($y)) print($y); ?>" /><br><br>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4>Oprocentowanie</h4></div>
					<div class="h-body text-center">
						<input id="z" type="text" placeholder="Oprocentowanie" name="z" value="<?php if(isset($z)) print($z); ?>" /><br>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i><button type="submit" >Oblicz</button>
					</form></h4></div>
					<div class="h-body text-center">
						<?php

if (isset($messages)) {
	if (count ( $messages ) > 0) {
		echo '<ol style="">';
		foreach ( $messages as $key => $msg ) {
			echo '<li>'.$msg.'</li>';
		}
		echo '</ol>';
	}
}
?>

<?php if (isset($result)){ ?>
<div style="margin: 30px; padding: 5px; border-radius: 30px; background-image: linear-gradient(red,orange,yellow); width:300px;">
<?php echo 'Pojedyńcza rata wynosi: '.$result; ?>
</div>
<?php } ?>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->

	<!-- /container -->
	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->


	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">Contact</h3>
						<div class="widget-body">
							<p>+48 667 717 644<br>
								<a href="mailto:bartosz2015@gmail.com">bartosz2015@gmail.com</a><br>
								<br>
								Tough times never last but tough people do.
							</p>	
						</div>
					</div>

				

					<div class="col-md-6 widget">
						<h3 class="widget-title">Follow Me</h3>
						<div class="widget-body">
							<p class="follow-me-icons">
								<a href="https://github.com/SilverFortrax"><i class="fa fa-github fa-2"></i></a>
								<a href="https://www.facebook.com/bartosz.osemlak/"><i class="fa fa-facebook fa-2"></i></a>
							</p>	
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Home</a> | 
								<a href="https://github.com/SilverFortrax">GitHub</a> |
								<a href="https://www.facebook.com/bartosz.osemlak/">Facebook</a> ||
								<b><a href="signin.html">Sign in</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2022, SilverFortrax. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a> 
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>