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
		<c:if test="${article != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${article == null}">
			<form action="insert" method="post">
		</c:if>
		<table>
			<caption>
				<c:if test="${article != null}">
                        Edit Article
                    </c:if>
				<c:if test="${article == null}">
                        Add New Article
                    </c:if>
			</caption>
			<c:if test="${article != null}">
				<input type="hidden" name="id"
					value="<c:out value='${article.id}' />" />
			</c:if>
			<tr>
				<th>Title:</th>
				<td><input type="text" name="title" size="45"
					value="<c:out value='${article.title}' />" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save" /></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>