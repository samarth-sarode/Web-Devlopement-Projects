<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/home.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
<style>
.buttons
{
		margin-left: 650px;
		margin-top: 60px;
}
.button2 {
	background-color: #4CAF50; /* Green */
	border: none;
	border-radius: 10px;
	color: white;
	padding: 8px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	transition-duration: 0.4s;
	cursor: pointer;
	background-color: white;
	color: black;
	border: 2px solid #003366;
}

.button2:hover {
	background-color: #003366;
	color: white;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="javascript:void(0)">StudentDatabaseRegistration</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">About us</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Contact us</a></li>
				</ul>
				<!--
        <form class="d-flex">
        <button class="btn btn-primary signupbtn" type="button">Sign up</button>
        <button class="btn btn-primary loginbtn" type="button"><i class="fa-right-to-bracket"></i>Login</button>
      </form>
      -->
				<form class="d-flex" action="logout" method="post">
					<button class="btn btn-primary signupbtn" type="submit">Logout</button>
				</form>
			</div>
		</div>
	</nav>
	<%@include file="components/displaymsg.jsp"%>
	<div class="content">
		<h1>
			Welcome
			<%@include file="components/loginsuccessful.jsp"%></h1>
	</div>

	<audio id="myAudio">
		<source src="Alan_Walker.mp3" type="audio/ogg">
		<source src="Alan_Walker.mp3" type="audio/mpeg">

	</audio>

	<div class="buttons">
		<button onclick="playAudio()" type="button" class="button2">Play
			Audio</button>
		<button onclick="pauseAudio()" type="button" class="button2">Pause
			Audio</button>
	</div>


	<script>
		var x = document.getElementById("myAudio");

		function playAudio() {
			x.play();
		}

		function pauseAudio() {
			x.pause();
		}
	</script>
</body>
</html>


