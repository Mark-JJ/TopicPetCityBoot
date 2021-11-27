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
<form action="/MemberNewUpdateSuccess.controller" method="POST" enctype="multipart/form-data">
	<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">會員資料</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="pass" class="label" >MemberID </label>
					<input id="Q1" type="text" class="input"  name="upid" value= ${ memberUpdate.id} readonly >
          			<div style="color: #FF0000; font-size: 60%; display: inline">${errors.mail}</div>
				</div>
				<div class="group">
					<label for="pass" class="label" >Email </label>
					<input id="Q1" type="text" class="input"  name="mail" value=${ memberUpdate.mail} readonly >
          			<div style="color: #FF0000; font-size: 60%; display: inline">${errors.mail}</div>
				</div>
				<div class="group">
					<input id="Q2" type="hidden" class="input" data-type="password" name="password" value=${ memberUpdate.password}>
				</div>
        <div class="group">
					<label for="pass" class="label" >手機 </label>
					<input id="Q3" type="text" class="input"  name="phone" value=${ memberUpdate.phone}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${errors.phone}</div>
				</div>
		<div class="group">
					<label for="pass" class="label" >姓名 </label>
					<input id="Q4" type="text" class="input"  name="name" value=${ memberUpdate.name}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.name}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >身分證  </label>
					<input id="Q5" type="text" class="input"  name="numberID" value=${ memberUpdate.numberID}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.numberID}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >生日 </label>
					<input id="Q6" type="Date" class="input"  name="birthday" value=${ memberUpdate.birthday}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.bday}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >住址 </label>
					<input id="Q7" type="text" class="input"  name="address" value=${ memberUpdate.address}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.address}</div>
				</div>
        <div class="group">
					<label for="pass" class="label" >性別(選填) </label>
					<input id="Q8" type="text" class="input"  name="gender" value=${ memberUpdate.gender}>
          <div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.gender}</div>
				</div>
				<div class="group">
					<input type="submit" class="button" value="確認修改送出" name="up">
				</div>
				<div class="hr"></div>
			</div>
		</div>
	</div>
</div>
</form>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	//自動填入資料
	$(document).ready(function() {
		$("input[name='up']").click(function() {
			var yes = confirm('確認更新資料嗎？');

			if (yes) {
				alert('更新成功');
			} else {
				this.form.action = "/MemberNewUpdateAction.controller";
				alert('取消更新');
			}
		})
	});
</script>
</html>