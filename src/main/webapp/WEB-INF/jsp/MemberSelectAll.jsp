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
<body background="https://drimg01.scbao.com/160906/330613-160Z609251769.jpg">
<%-- ${managerID} --%>
<%-- <c:if test="${managerID == null}"> --%>
<%-- 	<c:redirect url="MemberLoginPage.controller" /> --%>
<!--        <a href="MemberLoginPage.controller"> -->
<!--         <i class="tf-ion-android-person"></i> -->
<!--         登入 / 註冊 -->
<!--        </a> -->
<%-- </c:if> --%>
<%-- <c:if test="${managerID != null}"> --%>
<!--        <i class="tf-ion-android-contact" ></i> -->
<%--        ${managerID}歡迎回來 --%>
<!--        <a onclick="getData();" href="LoginOut2.controller"  > -->
<!--         登出 -->
<!--        </a> -->
<%--       </c:if>       --%>
<!--      </li> -->
<table border='1' align="center">
<tr><th colspan='9' bgcolor='#C4E1FF'>會員資料表${managerID}</th></tr>
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