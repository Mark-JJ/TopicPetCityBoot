<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	min-height:670px;
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
	font-size:22px;
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
		<%
        String rqname = request.getParameter("username");
        session.setAttribute("managerID", rqname);
        %>
<!-- <form action="/login/page" method="post"> -->
<!--     <table> -->
<!--        <tr> -->
<!--           <td>UserName:</td> -->
<!--           <td><input type="text" name="username"/></td> -->
<!--        </tr> -->
<!--        <tr> -->
<!--           <td>Password:</td> -->
<!--           <td><input type="password" name="password"/></td> -->
<!--        </tr> -->
<!--        <tr> -->
<!--           <td colspan="2"><input type="checkbox" name="remember-me">RememberMe</td> -->
<!--        </tr> -->
<!--        <tr> -->
<!--           <td colspan="2"><button type="submit" value="login">Login</button></td> -->
<!--        </tr>        -->
<!--     </table> -->
    
<!-- </form> -->

<form action="/login/page" method="post">
	<div class="login-wrap">
	<div class="login-html">
		<img src="/uploaded/car.png" width="100" height="100">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">會員登入</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label" >Username</label>
					<input id="user" type="text" class="input" name="username">
				</div>
				<div class="group">
					<label for="pass" class="label" >Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked name="remember-me">
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="<c:url value='/MemberInserPage.controller' />">加入會員 </a> <a href="#forgot">忘記密碼 </a>
				</div>
			</div>
<!-- 			<div class="sign-up-htm"> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="user" class="label">Username</label> -->
<!-- 					<input id="user" type="text" class="input"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Password</label> -->
<!-- 					<input id="pass" type="password" class="input" data-type="password"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Repeat Password</label> -->
<!-- 					<input id="pass" type="password" class="input" data-type="password"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Email Address</label> -->
<!-- 					<input id="pass" type="text" class="input"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<input type="submit" class="button" value="Sign Up"> -->
<!-- 				</div> -->
<!-- 				<div class="hr"></div> -->
<!-- 				<div class="foot-lnk"> -->
<!-- 					<label for="tab-1">Already Member?</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
	</div>
</div>
</form>
</body>
</html>