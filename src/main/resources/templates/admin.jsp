<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pablo Giraldo | Nuevo artículo</title>
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
		if (request.getAttribute("isAdmin") == null) {
		// 		response.sendRedirect(request.getContextPath());
		// 		response.sendRedirect("/");
		response.sendRedirect(request.getContextPath() + "/");
	}

	String confirmation = request.getParameter("confirmation") != null ? (String) request.getParameter("confirmation") : "";
	%>
	<div class="container" style="margin-top: 30px">
		<div class="row justify-content-center">
			<div class="col-sm-6">
				<div class="d-flex justify-content-center">
					<div>
						<h3>Nuevo artículo</h3>
					</div>
				</div>
				<br>
				<div class="d-flex justify-content-between">
					<div>
						<%
							if (confirmation.equals("inserted")) {
						%>
						<strong class="navlink" style="color: green;">Artículo
							guardado</strong>
						<%
							}
						%>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/?option=sessionClose"><strong
							class="navlink">Cerrar sesión</strong></a>
					</div>
				</div>
				<br>
				<div>
					<form action="admin" method="post">
						<input type="hidden" name="option" value="insert">
						<div class="form-group">
							<label for="title"><strong>Título</strong></label> <input
								type="text" name="title" class="form-control" id="title"
								required>
						</div>
						<div class="form-group">
							<label for="subtitle"><strong>Subtítulo</strong></label> <input
								type="text" name="subtitle" class="form-control" id="subtitle">
						</div>
						<div class="form-group">
							<label for="image"><strong>Imagen</strong></label> <input
								type="text" name="image" class="form-control" id="image">
						</div>
						<div class="form-group">
							<label for="link"><strong>Enlace</strong></label> <input
								type="text" name="link" class="form-control" id="link">
						</div>
						<div class="form-group">
							<label for="text"><strong>Texto</strong></label>
							<textarea name="text" class="form-control" id="text"></textarea>
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