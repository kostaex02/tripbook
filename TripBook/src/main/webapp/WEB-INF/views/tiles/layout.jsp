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
	body{
		background-color: white;
		margin: 0px;
	}
	
	div{
		position:relative;
	}
	
	#header{
		float:right;
		height:auto;
		padding:5px;
		top:3%;
		left:-2%;
		margin-bottom: 40px;
	}
	
	#content{
		float:right;
		height:100%;
		padding:5px;
		top:-1%;
		left:-7%;
		width:65%;
	}
	
	#side{
		background-color: #455A64;
		float:left;
		width: 21%;
		height:100%;
		
	}
	#container{
		width:100%;
		height: 100%;
		background-color: #E8F5E9;		
	}
	
	.slideSideCover {
		background-color:#455A64;
	    position: absolute;
	    z-index:7;
	    width: 150px;
	    height:2000px;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    -moz-transition: left 0.5s ease;
	    transition: left 0.5s ease;
	}
	
	.slideSideCover div{
		background-color:#546E7A;
		height: 40px;
		text-align: center;
		line-height: 3;
	}
	
	input[type=checkbox] {
	   display: none;
	}
	
	input:checked ~ .slideSideCover { 
	    left: -150px;
	}
	input:checked ~ #slideLabel { 
	    left: 0;
	}
	#slideLabel {
	    z-index: 9;
	    position: absolute;
	    top: 0px;
	    left: 155px;
	    background-color: blue;
	    -moz-transition: left 0.5s ease;
	    transition: left 0.5s ease;
	}
	
	.slideGroupMenu{
		display: none;
	}
	.slideGroupMenu div{
		height:20px;
		line-height: 1;
	}
	#slideFriend{
		display: none;
	}
	
</style>
</head>
<body>

	
	<div class="slideMenu">
	    <input id="slideMenuButton" type="checkbox" role="button" checked/>
	    <label id='slideLabel' for="slideMenuButton"><span><img src="<c:url value="/images/toggle.png"/>"></span></label>
	    <div class="slideSideCover">
	    	<div><a href='<c:url value="/main/main"/>'>Home</a></div>
			<div><a href='<c:url value="/mypage/profile"/>'>My Page</a></div>
			<div><a href='<c:url value="/calendar/list"/>'>Schedule</a></div>
			<div><a href='<c:url value="/biography/biography"/>'>Trip Biography</a></div>
			<div><a href='<c:url value="/friends/list"/>'><div id='slideFriend'></div>Friends</a></div>
			<div id='slideGroup'><a href='#'><div id='slideGroupList'>Group</div></a>
				<div class='slideGroupMenu'>
					<div><a class="sideAddGroupButton" data-toggle="modal" data-target="#groupCreateModal">+ 그룹 추가</a></div>
					<div>학교친구</div>
					<div>직장동료</div>
				</div>
			</div>
	    </div>
	</div>
		
	
	

<div id='container'>

	<div id='header'>
		<tiles:insertAttribute name="header"/>
	</div>

	<div id='side'>
		<tiles:insertAttribute name="side"/>
	</div>

	<div id='content'>
		<tiles:insertAttribute name="content"/>
	</div>
</div>

	
	
<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>' charset="utf-8"></script>	
<script src='<c:url value="/resources/js/tiles/iscroll.min.js"/>'></script>
<script src='<c:url value="/resources/js/tiles/drawer.min.js"/>'></script>

  <script>
    $(document).ready(function() {
      
      $("#slideGroupList").click(function() {
  		$(".slideGroupMenu").slideToggle(500);
  	  })
  	  
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