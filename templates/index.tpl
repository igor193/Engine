<!DOCTYPE HTML>
<html>

<head>
	<title>{{SITE_TITLE}}</title>
	<meta charset='UTF-8'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body>
	<div class="headerTop">
			<a href="login/" class="loginbtn">Login</a>
	</div>
	<div class="headerDown">
		<div id="logo">
			<h1>VverhViz</h1>
		</div>
		<nav class="menu">
			{{MENU}}
		</nav>		
	</div>
	<div class="content">
		<div class="fonIndex">
			<img id="fon" src="img/Money.jpg" alt="fon">
		</div>
		<div class="infoBox">
			<div class="News">
				<h2>Новости недели</h2>
				<h3>Фондовый рынок</h3>
				<p>{{DATAINFO}}</p>
				<p>{{TOPIC}}</p>
				<p>{{INTRO}}</p>
				<p>{{WORLDINFO}}</p>
				<p>{{AVTORNAME}}</p>
				<p>{{AVTORURL}}</p>
			</div>
			<!-- <div class="Blox">
				<h2>Блог</h2>

			</div> -->

		</div>
	</div>

	<div class="footer">

	</div>
	<div class="footer_end">
		<div>
			<p>{{DATE}}</p>
		</div>
	</div>


</body>

</html>