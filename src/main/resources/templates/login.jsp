<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pablo Giraldo | Iniciar sesión</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="img/favicon.ico?v=1">
<link rel="stylesheet" href="css/style.css?v=16">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%
		if (request.getParameter("loggedIn") == null) {
		// 		response.sendRedirect(request.getContextPath());
		// 		response.sendRedirect("/");
		response.sendRedirect(request.getContextPath() + "/");
	}
	%>
	<div class="container" style="margin-top: 30px">
		<div class="row justify-content-center">
			<div class="col-sm-4">
				<div class="d-flex justify-content-center">
					<div>
						<h3>Iniciar sesión</h3>
					</div>
				</div>
				<br>
				<div>
					<form action="login" method="post">
						<div class="form-group">
							<label for="email"><strong>Dirección de correo</strong></label> <input
								type="email" name="email" class="form-control" id="email">
						</div>
						<div class="form-group">
							<label for="pass"><strong>Contraseña</strong></label> <input
								type="password" name="pass" class="form-control" id="pass">
						</div>
						<div class="d-flex justify-content-between">
							<div>
								<a href="<%=request.getContextPath()%>/"><strong
									class="navlink">Inicio</strong></a>
							</div>
							<div>
								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>