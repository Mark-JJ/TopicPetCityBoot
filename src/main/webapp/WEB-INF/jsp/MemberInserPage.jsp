<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
	margin:0;
	color:#6a6f8c;
	background:#c8c8c8;/*大背景*/
	font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
	width:100%;
	margin:auto;
	max-width:525px;
	min-height:850px;
	position:relative;
/*  	background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;  */
	box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}
.login-html{
	width:100%;
	height:100%;
	position:absolute;
	padding:90px 70px 50px 70px;
	background:rgba(40,57,101,.9);/*內框顏色*/
}
.login-html .sign-in-htm,
.login-html .sign-up-htm{
	top:0;
	left:0;
	right:0;
	bottom:0;
	position:absolute;
	transform:rotateY(180deg);
	backface-visibility:hidden;
	transition:all .4s linear;
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
	display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
	text-transform:uppercase;
}
.login-html .tab{
	font-size:18px;
	margin-right:15px;
	padding-bottom:5px;
	margin:0 15px 10px 0;
	display:inline-block;
	border-bottom:2px solid transparent;
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
	color:#fff;
	border-color:#1161ee;
}
.login-form{
	min-height:345px;
	position:relative;
	perspective:1000px;
	transform-style:preserve-3d;
}
.login-form .group{
	margin-bottom:15px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
	width:100%;
	color:#fff;
	display:block;
}
.login-form .group .input,
.login-form .group .button{
	border:none;
	padding:15px 20px;
	border-radius:25px;
	background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
	text-security:circle;
	-webkit-text-security:circle;
}
.login-form .group .label{
	color:#aaa;
	font-size:12px;
}
.login-form .group .button{
	background:#1161ee;
}
.login-form .group label .icon{
	width:15px;
	height:15px;
	border-radius:2px;
	position:relative;
	display:inline-block;
	background:rgba(255,255,255,.1);
}
.login-form .group label .icon:before,
.login-form .group label .icon:after{
	content:'';
	width:10px;
	height:2px;
	background:#fff;
	position:absolute;
	transition:all .2s ease-in-out 0s;
}
.login-form .group label .icon:before{
	left:3px;
	width:5px;
	bottom:6px;
	transform:scale(0) rotate(0);
}
.login-form .group label .icon:after{
	top:6px;
	right:0;
	transform:scale(0) rotate(0);
}
.login-form .group .check:checked + label{
	color:#fff;
}
.login-form .group .check:checked + label .icon{
	background:#1161ee;
}
.login-form .group .check:checked + label .icon:before{
	transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
	transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
	transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
	transform:rotate(0);
}

.hr{
	height:2px;
	margin:60px 0 50px 0;
	background:rgba(255,255,255,.2);
}
.foot-lnk{
	text-align:center;
}
 </style>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<h1></h1>
<form action="MemberInserSuccess.controller" method="POST" enctype="multipart/form-data">
	<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">會員資料</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="pass" class="label" >Email </label>
					<input id="Q1" type="text" class="input"  name="mail">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.mail}</div>
				</div>
				<div class="group">
					<label for="pass" class="label" >密碼</label>
					<input id="Q2" type="password" class="input" data-type="password" name="password">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.password}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >手機 </label>
					<input id="Q3" type="text" class="input"  name="phone">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.phone}</div>
				</div>
		<div class="group">
					<label for="pass" class="label" >姓名 </label>
					<input id="Q4" type="text" class="input"  name="name">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.name}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >身分證  </label>
					<input id="Q5" type="text" class="input"  name="numberID">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.numberID}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >生日 </label>
					<input id="Q6" type="Date" class="input"  name="birthday">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.bday}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >住址 </label>
					<input id="Q7" type="text" class="input"  name="address">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.address}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >性別(選填) </label>
					<input id="Q8" type="text" class="input"  name="gender">
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.gender}</div>
				</div>
				<div class="group">
					<input type="submit" class="button" value="送出">
				</div>
				<div class="hr"></div>
			</div>
		</div>
	</div>
</div>
</form>
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
			$("#Q1").val('mark34177@gmail.com');
			$("#Q2").val('qazwsx');
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
			$("#Q1").val('jeff520sine@gmail.com');
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