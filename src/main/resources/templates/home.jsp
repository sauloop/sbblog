<%@include file="headerTemplate.jsp"%>
<%
	if (request.getAttribute("fromController") == null) {
	response.sendRedirect(request.getContextPath() + "/");
	// 	response.sendRedirect("/");
}

String isSessionInit = request.getAttribute("isSessionInit") != null ? (String) request.getAttribute("isSessionInit")
		: "";
%>
<div class="container" style="margin-top: 30px">
	<div class="row">
		<div class="col-sm-4">
			<br />
			<div>
				<%
					if (isSessionInit.equals("false")) {
				%>
				<a href="login?loggedIn=false"><strong class="navlink">Iniciar
						sesión</strong></a>
				<%
					} else {
				%>
				<a href="admin"><strong class="navlink">Nuevo artículo</strong></a><br>
				<br> <a
					href="<%=request.getContextPath()%>/?option=sessionClose"><strong
					class="navlink">Cerrar sesión</strong></a>
				<%
					}
				%>
			</div>
			<br /> <br />

			<!-- 			<h2>Sobre mí</h2> -->
			<!-- 			<div class="aboutimg"> -->
			<!-- 				<a href="pdf/cvPabloGiraldo.pdf"><img src="img/avatar.png" -->
			<!-- 					alt="Avatar" title="Ver currículum" style="height: 200px;"></a> -->
			<!-- 			</div> -->
			<!-- 			<br> -->

			<h3>Enlaces</h3>
			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link"
					href="https://www.w3schools.com/default.asp">W3schools</a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://pixabay.com/es/">Pixbay</a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://icon-icons.com/es/">Iconos</a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://www.easyredmine.com/">Redmine</a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://fonts.google.com/">Google Fonts</a></li>
			</ul>
			<!-- 			<hr class="d-sm-none"> -->
		</div>
		<br /> <br />
		<div class="col-sm-8">
			<br />
			<c:forEach var="article" items="${listArticle}">
				<div>
					<c:if test="${not empty article.title}">
						<div>
							<h2>
								<c:out value="${article.title}" />
							</h2>
						</div>
					</c:if>

					<c:if test="${not empty article.subtitle}">
						<div>
							<h5>
								<c:out value="${article.subtitle}" />
							</h5>
						</div>
						<br />
					</c:if>

					<c:if test="${not empty article.image}">
						<br />
						<div class="fakeimg">
							<img src="img/<c:out value="${article.image}" />"
								alt=<c:out value="${article.image}" /> style="width: 800px;" />
						</div>
						<br />
					</c:if>

					<c:if test="${not empty article.link}">
						<br />
						<div>
							<a href=<c:out value="${article.link}" />> <c:out
									value="${article.link}" /></a>
						</div>
						<br />
					</c:if>

					<c:if test="${not empty article.text}">
						<br />
						<div>
							<p>
								<c:out value="${article.text}" />
							</p>
						</div>
						<br />
					</c:if>
				</div>
				<br />
			</c:forEach>
		</div>
	</div>
</div>
<br />
<br />
<%@include file="footerTemplate.jsp"%>
