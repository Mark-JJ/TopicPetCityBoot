<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新商品成功</title>
</head>
<body background="https://drimg01.scbao.com/160906/330613-160Z609251769.jpg">

<table border='1' align="center">
<tr><th colspan='9' bgcolor='#C4E1FF'><h1>會員 [${updateSuccess.name}] 資料更新成功 !!</h1></th></tr>
<tr bgcolor='#C4E1FF'>
	<th>mail</th>
	<th>密碼</th>
	<th>電話</th>
	<th>姓名</th>
	<th>身分證</th>
	<th>生日</th>
	<th>地址</th>
	<th>性別</th>
</tr>
 <tr bgcolor='#C4E1FF'>
	<td>${updateSuccess.mail}</td>
	<td>${updateSuccess.password}</td>
	<td>${updateSuccess.phone}</td>
	<td>${updateSuccess.name}</td>
	<td>${updateSuccess.numberID}</td>
	<td>${updateSuccess.birthday}</td>
	<td>${updateSuccess.address}</td>
	<td>${updateSuccess.gender}</td>
</tr>
</table>
<table border='1' align="center" bgcolor='#CECEFF'>
<th><a href="<c:url value='/index.jsp' />">回首頁</a></th>
<th><a href="javascript:history.back()">回上一頁</a></th>
</table>
</body>

</html>