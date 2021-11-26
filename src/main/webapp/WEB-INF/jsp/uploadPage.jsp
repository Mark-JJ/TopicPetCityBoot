<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	background: whitesmoke;
	font-family: 'Open Sans', sans-serif;
}

.container {
	max-width: 960px;
	margin: 30px auto;
	padding: 20px;
}

.design-name {
	color: red;
}

h1 {
	font-size: 20px;
	text-align: center;
	margin: 20px 0 20px;
}

h1 small {
	display: block;
	font-size: 15px;
	padding-top: 8px;
	color: gray;
}

.avatar-upload {
	position: relative;
	max-width: 205px;
	margin: 50px auto;
}

.avatar-upload .avatar-edit {
	position: absolute;
	right: 12px;
	z-index: 1;
	top: 10px;
}

.avatar-upload .avatar-edit input {
	display: none;
}

.avatar-upload .avatar-edit input+label {
	display: inline-block;
	width: 34px;
	height: 34px;
	margin-bottom: 0;
	border-radius: 100%;
	background: #FFFFFF;
	border: 1px solid transparent;
	box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
	cursor: pointer;
	font-weight: normal;
	transition: all 0.2s ease-in-out;
}

.avatar-upload .avatar-edit input+label:hover {
	background: #f1f1f1;
	border-color: #d6d6d6;
}

.avatar-upload .avatar-edit input+label:after {
	content: "\f040";
	font-family: 'FontAwesome';
	color: #F6B21B;
	position: absolute;
	top: 10px;
	left: 0;
	right: 0;
	text-align: center;
	margin: auto;
}

.avatar-upload .avatar-preview {
	width: 192px;
	height: 192px;
	position: relative;
	border-radius: 100%;
	border: 6px solid #F6B21B;
	box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
}

.avatar-upload .avatar-preview>div {
	width: 100%;
	height: 100%;
	border-radius: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<title>圖片上傳</title>
</head>
<body>
<!-- 	<form action="upload" method="post" enctype="multipart/form-data"> -->
<!-- 		選擇圖片:<input type="file" name="file" accept="image/*" /> <br> <input -->
<!-- 			type="submit" value="立刻上傳"> -->
<!-- 	</form> -->
<!-- 	<h3>即時顯示</h3> -->
<%-- 	<img src="/uploaded/${fileName}" class="img-circle" width="100" --%>
<!-- 		height="100"> -->

		<div class="container">
		<h1>
			親愛的[${member.name}]歡迎回來 <small>${mail}</small>
		</h1>
		<div class="avatar-upload">
			<!-- 			<div class="avatar-edit"> -->
			<!-- 				<input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" /> -->
			<!-- 				<label for="imageUpload"></label> -->
			<!-- 			</div> -->
			<div class="avatar-preview">
				<div id="imagePreview"
					style="background-image: url(/uploaded/${fileName});"></div>

			</div>
			
			<form action="upload" method="post" enctype="multipart/form-data" align="center">
				<h4 class="design-name" align="center">編輯大頭貼</h4>
<!-- 				<input type="file" name="file" accept="image/*" class="btn btn-primary" /> -->
				<div class="mb-3">
					<input class="form-control" type="file" id="formFile" accept="image/*" name="file">
				</div>
				<h3></h3>
				<button type="submit" class="btn btn-primary" align="center">確認修改送出</button>
				<input  type="hidden" name="mail" value="${member.mail}">
			</form>
<!-- 			<form action="upload" method="post" enctype="multipart/form-data" align="center"> -->
<!-- 				<h3></h3> -->
<!-- 				<button type="submit" class="btn btn-primary" >確認修改送出</button> -->
<!-- 			</form> -->
		</div>
	</div>
</body>
<script type="text/javascript">
	// function readURL(input) {
	//     if (input.files && input.files[0]) {
	//         var reader = new FileReader();
	//         reader.onload = function(e) {
	//             $('#imagePreview').css('background-image', 'url('+e.target.result +')');
	//             $('#imagePreview').hide();
	//             $('#imagePreview').fadeIn(650);
	//         }
	//         reader.readAsDataURL(input.files[0]);
	//     }
	// }
	// $("#imageUpload").change(function() {
	//     readURL(this);
	// });
</script>
</html>