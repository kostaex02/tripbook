<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
div{
	background-color: white;
}
#content div{
	border:1px red solid;
}
#board{
	width:300px;
}
#boardMap{
	position:fixed;
	top:50px;
	left:400px;
	width:300px;
	height:300px;
}

</style>
</head>
<body>
<div id='board'>
	<div>여행 제목</div>
	<div style='float:left;'><img src='<c:url value="/resources/img.jpg"/>' style='width:100px;height:100px;'></div>
	<div>작성자 <br> 작성일</div>
	<div >좋아요 <br> 10개</div>
	<hr style='clear:both;'>
	<div>같이 여행 갑시다</div>
	<div><img src='<c:url value="/resources/img.jpg"/>' style='width:300px;height:300px;'></div>
	<hr>
	<div><img src='<c:url value="/resources/img.jpg"/>' style='width:300px;height:300px;'></div>
	<hr>
	<div>총 10개의 댓글이 있습니다</div>
	<hr>
	<div>댓글 영역<br>
		<div>
			<div><img src='<c:url value="/resources/img.jpg"/>' style='position:relative;width:50px;height:50px;float:left;'></div><div style='height:50px;'>같이 갑시다</div>
		</div>
		<hr>
		<div>
			<div><img src='<c:url value="/resources/img.jpg"/>' style='position:relative;width:50px;height:50px;float:left;'></div><div style='height:50px;'>같이 갑시다</div>
		</div>
		<hr><div>
			<div><img src='<c:url value="/resources/img.jpg"/>' style='position:relative;width:50px;height:50px;float:left;'></div><div style='height:50px;'>같이 갑시다</div>
		</div>
		<hr>
	</div>

	<div id='boardMap'>
		지도 부분
	</div>

</div>



</body>
</html>