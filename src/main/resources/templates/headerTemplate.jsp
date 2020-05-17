<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pablo Giraldo | Inicio</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="img/favicon.ico?v=1">
<link rel="stylesheet" href="css/style.css?v=16">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.fa-github {
	color: rgb(102, 102, 51);
	padding: 0px;
	font-size: 40px;
	width: 50px;
	text-align: center;
	margin: 5px 2px;
}

a:link {
	text-decoration: none;
}

a:hover {
	color: black;
}
</style>
</head>

<body>
	<div class="jumbotron text-center" style="margin-bottom: 0;">
		<div>
			<h1>Pablo Giraldo</h1>
			<h5 style="color: rgb(102, 102, 51);">Página de pruebas del
				curso sobre desarrollo de aplicaciones web de Laborus</h5>
		</div>

		<div class="d-flex justify-content-end">
			<div>
				<a href="https://github.com/sauloop" class="fa fa-github"></a>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="<%=request.getContextPath()%>/">Inicio</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="https://inverenlace.com/">App inverenlace</a></li>
			<li class="nav-item"><a class="nav-link" href="trueknic.jsp">App
					trueknic</a></li>
			<li class="nav-item"><a class="nav-link"
				href="https://es.gta5-mods.com/users/saulop">Mods juegos</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pdf/cvPabloGiraldo.pdf" download>Descargar currículum</a></li>
			<li class="nav-item"><a class="nav-link"
				href="mailto:pablogirald@yahoo.es">Contacto</a></li>
		</ul>
	</div>
	</nav>