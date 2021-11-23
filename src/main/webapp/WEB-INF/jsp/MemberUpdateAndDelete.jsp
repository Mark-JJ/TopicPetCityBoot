<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除商品資料</title>
<style>
form {
	margin: 0 auto;
	width: 1200px;
}

table {
	margin: 0 auto;
	width: 1200px;
}
</style>
</head>
<body>
<c:if test="${managerID == null}">
	<c:redirect url="login/page" />
       <a href="login/page">
        <i class="tf-ion-android-person"></i>
        登入 / 註冊
       </a>
</c:if>
<c:if test="${managerID != null}">
       <i class="tf-ion-android-contact" ></i>
       ${managerID}歡迎回來
       <a onclick="getData();" href="login/page"  >
        登出
       </a>
      </c:if>      


	<table border='1' bgcolor='#C4E1FF'>
		<tr>
			<th colspan='11' bgcolor='#C4E1FF'>現有商品資料表</th>
		</tr>
		<tr>
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
			<form name="" action="MemberDeleteSuccess.controller" onSubmit="" method="POST">
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
					<td align="center"><input name="id" type="hidden"
						value="${memberAll.id}"> <input type="submit"
						value="編輯" onclick='this.form.action="MemberUpdateAction.controller"'></td>
					<td align="center"><input name="id" type="hidden"
						value="${memberAll.id}"> <input type="submit"
						value="刪除" class="de"></td>

				</tr>
			</form>
		</c:forEach>
	</table>

	<table border='1' align="center" bgcolor='#CECEFF'>
		<th><a href="<c:url value='/login/welcome' />">回首頁</a></th>
	</table>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	//自動填入資料
	$(document).ready(function() {
		$(".de").click(function() {
			var yes = confirm('你確定嗎？');

			if (yes) {
				alert('刪除成功');
			} else {
				this.form.action = "";
				alert('取消刪除');
			}
		})
	});
</script>
</html>