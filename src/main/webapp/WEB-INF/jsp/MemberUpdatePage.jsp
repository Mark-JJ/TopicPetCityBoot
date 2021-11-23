<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
div{
padding: 20px
}
th{
padding: 30px
}
</style>
<title>Insert title here</title>
</head>
<body background="">
<form action="MemberUpdateAction.controller" method="post" align="center">
<h1>依照ID修改</h1>
    <table border='1' align="center">
        <tr>
           <td>ID:</td>
           <td><input type="text" name="id"/></td>
           <td>${errors.name}</td>
           <td><button type="submit" value="更新">更新</button></td>
        </tr>
    </table>
</form>
<table border='1' align="center">
<tr><th colspan='9' bgcolor='#C4E1FF'>會員資料表</th></tr>
<tr bgcolor='#C4E1FF'>
	<th>ID</th>
	<th>mail</th>
	<th>密碼</th>
	<th>電話</th>
	<th>姓名</th>
	<th>身分證</th>
	<th>生日</th>
	<th>地址</th>
	<th>性別</th>
</tr>
<c:forEach var='memberAll' items='${memberAll}'>
 <tr bgcolor='#C4E1FF'>
 	<td>${memberAll.id}</td>
	<td>${memberAll.mail}</td>
	<td>${memberAll.password}</td>
	<td>${memberAll.phone}</td>
	<td>${memberAll.name}</td>
	<td>${memberAll.numberID}</td>
	<td>${memberAll.birthday}</td>
	<td>${memberAll.address}</td>
	<td>${memberAll.gender}</td>

</tr>
</c:forEach>
</table>
</body>
</html>