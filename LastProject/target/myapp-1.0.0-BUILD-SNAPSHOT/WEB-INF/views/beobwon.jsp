<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>Food it:한동인맛집추천</title>
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
    
  </style>
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
      <a class="navbar-brand" href="new" style="color:black;">Food It</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li><a href="yangdeok" style="color:black; ">양덕</a></li>
        <li class="active" style="color:black; "><a href="beobwon">법원</a></li>
        <li><a href="yongildae" style="color:black;">영일대</a></li>
        <li><a href="board/list" style="color:black;">한동인's리뷰</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login/logout"><span class="glyphicon glyphicon-user"></span>로그아웃</a></li>
        
      </ul>
    </div>
  </div>
</nav>

<div class="container" style=" border-color:white;">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default" >
        <div class="panel-heading" style="background-color:#DF0101 ; color:white;">마장동 뒷고기 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food6.jpg" class="img-responsive" style="width:300px; height:200px;" alt="Image"></div>
        <div class="panel-footer">주소: 경상북도 포항시 북구 양덕동 1214-6번지</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#DF0101;color:white;">대원도토리수제비 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food5.jpeg" class="img-responsive" style="width:300px; height:200px;" alt="Image"></div>
        <div class="panel-footer">주소: 경상북도 포항시 북구 양덕동 1660-1 </div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#DF0101;color:white;">청진동 해장국 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food4.jpg" class="img-responsive" style="width:300px; height:200px;" alt="Image"></div>
        <div class="panel-footer">주소: 경상북도 포항시 북구 양덕동 1425 </div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#DF0101; color:white;" >배고픈 은태 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food7.jpg" class="img-responsive" style="width:300px; height:200px;"></div>
        <div class="panel-footer">주소: 경상북도 포항시 북구 장량동 1217-2</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#DF0101; color:white;">이유있는 갈비찜 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food8.jpg" class="img-responsive" style="width:300px; height:200px;" alt="Image"></div>
        <div class="panel-footer">주소 : 경북 포항시 북구 천마로46번길 7-1 </div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#DF0101; color:white;">호원 </div>
        <div class="panel-body"><img src="${pageContext.request.contextPath}/resources/images/food9.jpg" class="img-responsive" style="width:300px; height:200px;" alt="Image"></div>
        <div class="panel-footer">주소 : 경상북도 포항시 북구 장성동 장량로75번길 14-10 </div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>