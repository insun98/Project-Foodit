<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Food it:한동인맛집추천</title>
	<script>
      function delete_ok(id){
         var a = confirm("정말로 삭제하겠습니까?");
         if(a) location.href='deleteok/' + id;
      }
   </script>
	
</head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
     .navbar {
     background-color:white;
     
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
      background-image:url(${pageContext.request.contextPath}/resources/images/main.jpg);
     	background-size:100%;
     	color:white;
     	font-family: 'Black Han Sans', sans-serif;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    #list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: white;
  
}
.btn a{
color:black;}
</style>
	<script>
      function delete_ok(id){
         var a = confirm("정말로 삭제하겠습니까?");
         if(a) location.href='deleteok/' + id;
      }
   </script>
    
  
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>한동인을 위한 </h1>   <br/>
    <h1>솔직한 맛집 리뷰</h1>      
    
  </div>
</div>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="" style="color:black;">Food It</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li><a href="yangdeok" style="color:black;">양덕</a></li>
        <li><a href="beobwon" style="color:black;">법원</a></li>
        <li><a href="yongildae" style="color:black;">영일대</a></li>
        <li class="active" style="color:black; "><a href="board/list">한동인's리뷰</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login/logout"><span class="glyphicon glyphicon-user"></span>로그아웃</a></li>
        
      </ul>
    </div>
  </div>
</nav>
<body>

	
	<table id="list" width="90%">
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>작성자</th>
			
			<th>날짜</th>
			<!-- <th>Edit</th>
			<th>Delete</th>	 -->		
		</tr>
	
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.category}</td>
				<td>${u.title}</td>
				<td>${u.writer}</td>
				
				<td>${u.regdate}</td>
				<%-- <td><a href="editform/${u.seq}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td> --%>
			</tr>
		</c:forEach>
	</table>
	<br/><button  type="button" class="btn"> <a href="add"> 리뷰 추가 </a></button>
	
</body>
</html>