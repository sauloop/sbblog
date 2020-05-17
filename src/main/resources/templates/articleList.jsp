<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Blog</title>
</head>
<body>

	<div align="center">
		<h1>Articles Management</h1>
		<h2>
			<a href="new">Add New Article</a> &nbsp;&nbsp;&nbsp; <a
				href="articles">List All Articles</a>

		</h2>
	</div>
	<div align="center">
		<table>
			<caption>List of Articles</caption>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Subtitle</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="article" items="${listArticle}">
				<tr>
					<td><c:out value="${article.id}" /></td>
					<td><c:out value="${article.title}" /></td>
					<td><a href="edit?id=<c:out value='${article.id}' />">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="delete?id=<c:out value='${article.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>