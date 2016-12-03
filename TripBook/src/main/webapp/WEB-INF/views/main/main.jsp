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
		margin: 10px 0px;
	}
	
	#mainRecentBoard{
		border:5px dashed grey;
		margin: 10px 0px;
	}
	
	#replys{
		border:3px solid pink;
	}
	
	#mainRecentBoard > *{
		margin:10px;
	}
	
	a{
		text-decoration: none;
	}
	
	.profile{
		border:1px solid blue;
		position:relative;
		float:left;
	}
	
	.picture{
		border:1px solid red;
		height:100px;
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
<hr>
<div id='mainRecentBoard'>
	<p>
		<div class='profile'>미니 프로필 사진</div>
		<b>User ID</b> 12월 03일 오전 11:41
	</p>
		<div class='picture'>
		여기는 사진 영역
		</div>
	<div id='replys'>
		댓글 영역<br>
		<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
		-> 나도 놀러갈래!
	</div>
	<div>
		<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
	</div>
</div>


</body>
</html>