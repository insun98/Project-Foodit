<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>회원정보- 실전프로젝 회원관리 V1</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="member.css">
  <style>
  #edit {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#edit td, #edit th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}

#edit tr:hover {background-color: #ddd;}

#purple{
background-color:#E1CAEB;}
h1{
padding:10px;
}

  </style>
  
</head>
<body>

<h1>신규 회원 추가 </h1>
<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
<table id="edit">
	<tr>
		<td id="purple">ID:</td><td><input type="text" name="userid"/></td>
	</tr>
	<tr >
		<td id="purple">Name:</td><td><input type="text" name="username"/></td>
	</tr>
	<tr >
		<td id="purple">Photo:</td><td><input type="file" name="photo"/></td>
	</tr>
	<tr >
		<td id="purple">Email:</td><td><input type="text" name="email"/></td>
	</tr>
	<tr>
		<td id="purple">Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td>
	</tr>
	</table>
	<br/>
	<button type="button" class="btn"onclick="location.href='list.jsp'">목록보기 </button>
	<button type="submit" class="btn">회원추가</button>

</form>

</body>
</html>