<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='<c:url value="/resources/css/tiles/drawer.min.css"/>' rel="stylesheet">
<link rel="stylesheet" href='<c:url value="/resources/css/tiles/layout.css"/>'>
<title>Insert title here</title>
<style>
	div{
		position:relative;
	}
	
	#header{
		border:1px solid red;
		float:right;
		margin-left:-100px;
		width:68%;
		height:auto;
		padding:5px;
	}
	
	#content{
		border:1px solid black;
		float:right;
		margin-top:-50px;
		margin-left:-100px;
		clear:both;
		width:68%;
		height:auto;
		padding:5px;
	}
	
	#side{
		border:1px solid blue;
		float:left;
		width:20%;
		margin-right:100px;
		height:auto;
		left:9%;
	}
	#container{
		border:5px solid pink;
		width:100%;
		height:90%;
		margin-left:-60px;
	}
</style>


</head>
<body>

    


<div id='container'>
	<div id='side'>
		<tiles:insertAttribute name="side"/>
	</div>
	<div id='header'>
		<tiles:insertAttribute name="header"/>
	</div>
	<div id='content'>
		<tiles:insertAttribute name="content"/>
	</div>
</div>
	
	
	
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.1.3/iscroll.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/js/tiles/drawer.min.js"/>' charset="utf-8"></script>

  <script>
    $(document).ready(function() {
      $('.drawer').drawer();
    });
  </script>	


</body>
</html>