<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
	#mainNewBoard{
		border:1px solid black;
		text-align: center;
	}
	
	#mainRecentBoard{
		
	}

</style>
</head>
<body>
<div id='mainNewBoard'>
게시글 작성 영역
<hr>
<input type='button' value='일반게시물'>
<input type='button' value='여행게시물'>
</div>

<div id='mainRecentBoard'>
<img src='<c:url value="/images/img.jpg"/>'>

</div>

</body>
</html>