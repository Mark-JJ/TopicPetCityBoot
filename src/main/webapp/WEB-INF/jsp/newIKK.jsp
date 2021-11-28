<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="button" onclick="getData()">
<div id="content"></div>
</body>
<script type="text/javascript">

function getData() {
     var req = new XMLHttpRequest(); //XMLHttpRequest()物件專門用來和伺服器做連線
     req.open("get","/manager/MemberIndex.controller");
     req.onload= function () { //onload事件 偵測連線的狀態結束
  //連線完成
      var content = document.getElementById("content");
      content.innerHTML = this.responseText;
      
  }
  req.send();  //送出連線
 }
</script>


</html>