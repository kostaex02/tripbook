<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet" href='<c:url value="/resources/css/main/stroll.css"/>'>

<title>Insert title here</title>
<style type="text/css">
#notice{
	border: 1px solid red;
}
#logList{
	border: 1px solid gray;
	margin-top: 20px;
}
#logStory{
	border: 1px solid pink;
	width: 100%;
	display: inline-table;
}
.profile{
	display: table-cell;
	width: 50px;
}
#message{
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;	
	
}
.profileImg{
	width: 60px;
	height: 60px;
	position: relative;
	float: left;
	margin: -10px;
	margin-bottom: -15px;
}
div{
	border:1px solid red;
}
</style>
</head>
<body>
	<div id="notice">
		<h1>공지사항</h1>
		<p>*그녀를 믿지마세요</p>
	</div>
	<div id="logList">
		<ul class="grow">
			<li id="logStory">
				<div class="profile"><img class="profileImg" src='<c:url value="/images/img.jpg"/>'></div>
				<div id="message">친구하자!</div>
				<input type="submit" value="수락">
				<input type="submit" value="거절">
			</li>
			
		</ul>
	</div>
</body>
</html>