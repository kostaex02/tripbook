<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='<c:url value="/resources/css/tiles/drawer.min.css"/>' rel="stylesheet">
<link rel="stylesheet" href='<c:url value="/resources/css/tiles/layout.css"/>'>
<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>'>
<title>Insert title here</title>
<style>
	div{
		position:relative;
	}
	
	#header{
		float:right;
		height:auto;
		padding:5px;
	}
	
	#content{
		float:right;
		height:auto;
		padding:5px;
	}
	
	#side{
		float:left;
		width:20%;
		height:auto;
		left:5%;
	}
	#container{
		width:100%;
		top:-50px;
	}
</style>


</head>
<body class="drawer drawer--left">
<div id='slideBar'>
		<button type="button" class="drawer-toggle drawer-hamburger">
	      <span class="sr-only">toggle navigation</span>
	      <span class="drawer-hamburger-icon"></span>
	    </button>
	    <nav class="drawer-nav" role="navigation">
	      <ul class="drawer-menu">
	      
	        <li><a class="drawer-menu-item" href='<c:url value="/main/main"/>'>Home</a></li>
			<li><a class="drawer-menu-item" href='<c:url value="/mypage/profile"/>'>My Page</a></li>
			<li><a class="drawer-menu-item" href='<c:url value="/calendar/calendar"/>'>Schedule</a></li>
			<li><a class="drawer-menu-item" href="#">Trip Biography</a></li>
			<li><a class="drawer-menu-item" href='<c:url value="/friends/friends"/>'>Friends</a></li>
	      </ul>
	    </nav>
	</div>

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

	
	
<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>' charset="utf-8"></script>	

<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.1.3/iscroll.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script> -->
<script src='<c:url value="/resources/js/tiles/drawer.min.js"/>' charset="utf-8"></script>

  <script>
    $(document).ready(function() {
      $('.drawer').drawer();
      
      function error(){
    	  var errMessage = <%= request.getAttribute("errMessage") %>;
    	  if(errMessage!=null){
    		  alert("오류!");
    	  }
      }
      
      error();
    });
  </script>	


</body>
</html>