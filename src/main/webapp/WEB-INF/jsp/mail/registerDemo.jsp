<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/register2" method='POST'>
email Address: <input name='emailAddress' type='text' value="${member.mail}">
${member}
<input type='submit'>
</form>
</body>
</html>