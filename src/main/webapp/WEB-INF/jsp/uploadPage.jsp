<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圖片上傳</title>
</head>
<body>
  <form action="upload" method="post" enctype="multipart/form-data">
    選擇圖片:<input type="file" name="file" accept="image/*" /> <br>
    <input type="submit" value="立刻上傳">
  </form>
</body>
</html>