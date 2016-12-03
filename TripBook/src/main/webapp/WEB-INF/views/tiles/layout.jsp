<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	div{
		position:relative;
	}
	
	#header{
		border:1px solid red;
		float:right;
		margin:5px 0px;
		width:68%;
		height:auto;
		padding:5px;
	}
	
	#content{
		border:1px solid black;
		float:right;
		margin:5px 0px;
		clear:both;
		width:68%;
		height:auto;
		padding:5px;
	}
	
	#side{
		border:1px solid blue;
		float:left;
		margin:5px 0px;
		width:20%;
		height:auto;
	}
	#container{
		border:5px solid pink;
		width:100%;
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
</body>
</html>