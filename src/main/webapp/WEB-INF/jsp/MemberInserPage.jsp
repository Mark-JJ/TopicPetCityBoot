<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增會員資料</title>
<style>
form {
	margin: 0 auto;
	width: 600px;
}

button {
	margin: 0 auto;
	width: 600px;
}
</style>
</head>

<body background="https://drimg01.scbao.com/160906/330613-160Z609251769.jpg" onload="javascript:document.insertMemberFormA.mId.focus();">
	<p />
<form action="MemberInserSuccess.controller" method="POST" enctype="multipart/form-data">
		<table border="1">
			<thead>
				<tr bgcolor='#C4E1FF'>
					<th height="60" colspan="2" align="center">新增會員資料</th>
				</tr>
			</thead>
			<tbody>

				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">mail:</td>
					<td width="600" height="40" align="left"><input id="Q1"
						style="text-align: left" name="mail" value="${param.mId}"
						type="text" size="20">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.id}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">密碼:</td>
					<td width="600" height="40" align="left"><input id="Q2"
						style="text-align: left" name="password" value="${param.pswd}"
						type="text" size="20">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.password}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">電話:</td>
					<td width="600" height="40" align="left"><input name="phone"
						value="${param.mName}" type="text" size="20" id="Q3">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.name}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">姓名:</td>
					<td width="600" height="40" align="left"><input
						name="name" value="${param.mAddress}" type="text" size="20"
						id="Q4">
						<div style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.address}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">身分證字號:</td>
					<td width="600" height="40" align="left"><input name="numberID"
						value="${param.mPhone}" type="text" size="20" id="Q5">
						<font color='blue' size="-1">&nbsp;&nbsp;(選填)認養寵物使用</font></td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">生日:</td>
					<td width="600" height="40" align="left"><input
						name="birthday" value="${param.mBirthday}" type="text" size="20"
						id="Q6"> <font color='blue' size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font>
						<div style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.bday}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">地址:</td>
					<td width="600" height="40" align="left"><input name="address"
						value="${param.mWeight}" type="text" size="20" id="Q7">
						<div style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.weight}</div>
					</td>
				</tr>
				<tr bgcolor='#C4E1FF'>
					<td width="120" height="40">性別:</td>
					<td width="600" height="40" align="left"><input name="gender"
						type="text" size="20" id="Q8">
						<div style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.picture}</div>
					</td>
				</tr>

				<tr bgcolor='#C4E1FF'>
					<td height="50" colspan="2" align="center"><input
						type="submit" value="送出"></td>
				</tr>

			</tbody>
		</table>

		<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
	</form>
	<hr>

	<table border="1" align="center">
		<thead>
			<tr bgcolor='#D9FFFF'>
				<th height="60" colspan="2" align="center">自動填入商品資料</th>
			</tr>
		</thead>
		<tbody>
			<tr bgcolor='#D9FFFF'>
				<td width="600" height="40" align="center">
					<button class="C1" style="width: 100px; height: 30px;">資料1</button>
					<button class="C2" style="width: 100px; height: 30px;">資料2</button>
					<button class="C3" style="width: 100px; height: 30px;">資料3</button>
					<button class="C4" style="width: 100px; height: 30px;">資料4</button>
					<button class="C5" style="width: 100px; height: 30px;">資料5</button>
				</td>
			</tr>
		<tbody>
	</table>
	<table border='1' align="center" bgcolor='#CECEFF'>
		<th><a href="<c:url value='/index.jsp' />">回首頁</a></th>

	</table>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">


	//自動填入資料
	$(document).ready(function() {
		$(".C1").click(function() {
			$("#Q1").val('BruceLee@gmail.com');
			$("#Q2").val('Bybn5vcs');
			$("#Q3").val('0935299335');
			$("#Q4").val('李小龍');
			$("#Q5").val('F12345678');
			$("#Q6").val('2020-11-29');
			$("#Q7").val('新北市');
			$("#Q8").val('男');
		})
	});
	$(document).ready(function() {
		$(".C2").click(function() {
			$("#Q1").val('QQ2@gmail.com');
			$("#Q2").val('xQGDCzCp');
			$("#Q3").val('0953579487');
			$("#Q4").val('海綿寶寶');
			$("#Q5").val('S239712291');
			$("#Q6").val('2020-10-29');
			$("#Q7").val('深海大鳳梨');
			$("#Q8").val('男');
		})
	});
	$(document).ready(function() {
		$(".C3").click(function() {
			$("#Q1").val('QQ3@gmail.com');
			$("#Q2").val('NhU64tYR');
			$("#Q3").val('0927639144');
			$("#Q4").val('歌集啦');
			$("#Q5").val('L283481161');
			$("#Q6").val('2020-9-29');
			$("#Q7").val('美國洛杉磯');
			$("#Q8").val('男');
		})
	});
	$(document).ready(function() {
		$(".C4").click(function() {
			$("#Q1").val('QQ4@gmail.com');
			$("#Q2").val('exW9CpkC');
			$("#Q3").val('0939974588');
			$("#Q4").val('瑪莉歐');
			$("#Q5").val('B188632455');
			$("#Q6").val('2020-9-29');
			$("#Q7").val('馬力歐星球');
			$("#Q8").val('男');
		})
	});
	$(document).ready(function() {
		$(".C5").click(function() {
			$("#Q1").val('QQ5@gmail.com');
			$("#Q2").val('b5T794cn');
			$("#Q3").val('0910523887');
			$("#Q4").val('喵喵怪');
			$("#Q5").val('S244267954');
			$("#Q6").val('1990-10-29');
			$("#Q7").val('LineWord');
			$("#Q8").val('不明');
		})
	});
	
</script>

</html>