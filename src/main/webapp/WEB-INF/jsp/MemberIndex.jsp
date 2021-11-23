<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
div{
padding: 20px;
}
th{
padding: 30px
}
</style>

<title>期末專題</title>
<%
String managerID = (String) session.getAttribute("managerID");
        %>
</head>

<body background="https://drimg01.scbao.com/160906/330613-160Z609251769.jpg">
<c:if test="${managerID == null}">
	<c:redirect url="login/page" />
       <a href="login/page">
        <i class="tf-ion-android-person"></i>
        登入 / 註冊
       </a>
</c:if>

<table border='1' align="center">
<tr>
<th colspan='8' bgcolor='#CECEFF'>
<h1>管理者專區</h1>
<h1>尊敬的${managerID}，您好</h1>

<form method="POST">
<input name="managerID" value="${managerID}"type="text">
<a href="<c:url value='/MemberInserPage.controller' />"><h2>新增會員資料</h2></a><br>
</form>
</th>
</tr>
<tr bgcolor='#CECEFF'>
	<th>
	<a href="<c:url value='/MemberInserPage.controller' />"><h2>新增會員資料</h2></a><br>
	<a href="<c:url value='/MemberUpdatePage.controller' />"><h2>更新會員資料</h2></a><br>
	<a href="<c:url value='/MemberDeletePage.controller' />"><h2>刪除會員資料</h2></a><br>
	<a href="<c:url value='/MemberSelectAll.controller' />"><h2>顯示現有會員資料</h2></a>
	<a href="<c:url value='/MemberUpdateAndDelete.controller' />"><h2>修改與刪除會員資料</h2></a>
	<a href="<c:url value='/ch06_02/CBS.do' />"><h2>多筆刪除功能(施工中)</h2></a>
	<form action="/login/page" method="post">
   		<table>
      		<tr>
         		<td>Logout:</td>
         		<td><button type="submit" value="logout">Logout</button></td>
      		</tr>
   		</table>
	</form>
<!-- 	<input	type="submit" value="區域變動" onclick='getBrowse();'> -->
<!-- 	<input	type="submit" value="區域變動2" onclick='getBrowse2();'> -->
<!-- 	<input	type="submit" value="區域變動3" onclick='loadContent();'> -->
	</th>	
</tr>
</table>

<!-- <div id="content" align="center" style="border: 3px solid red; width: 800px; height: 1000px; background: #D0D0D0;"> -->
<!-- <H1>我是DIV</H1> -->
<!-- </div> -->


</body >
<script type="text/javascript">
function getBrowse(){
   var rep = new XMLHttpRequest(); //XMLHttpRequest和伺服器做連線
   rep.open("post","/jspExercise100/ch06_02/UAndDServlet.do"); //設定連線的網址
   rep.onload = function(){ //load事件 偵測連線的狀態
    var content = document.getElementById("content");
    content.innerHTML = this.responseText;
   }
   rep.send(); //送出連線
  }
function getBrowse2(){
	   var rep = new XMLHttpRequest(); //XMLHttpRequest和伺服器做連線
	   rep.open("post","<c:url value='/ch06_02/InsertMemberForm.jsp' />"); //設定連線的網址
	   rep.onload = function(){ //load事件 偵測連線的狀態
	    var content = document.getElementById("content");
	    content.innerHTML = this.responseText;
	   }
	   rep.send("mId=qianyu"); //送出連線
	  }
// function loadContent() { 
// 	$("#content").load('/ch06_02/UAndDServlet.do'}//content即為你載入頁面的div 
</script>
</html>