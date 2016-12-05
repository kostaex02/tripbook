<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
	#sideProfile, #sideSchedule, #sideHome, #sideBiography, #sideFriend, #sideNav{
		position: relative;
		border:1px solid navy;
		margin: auto;
		height:50px;
	} 
	
	#sideProfile{
		width:96%;
		
	}
	#sideSchedule{
		float:left;
		width:42%;
		left:2%
	}
	#sideHome{
		float:left;
		width:42%;
		left:12%
		
	}
	#sideBiography{
		width:96%;
		clear: both;
	}
	#sideFriend{
		width:96%;
	}
	#sideNav{
		text-align: center;
	}
	
	a{
		text-decoration: none;
	}
</style>

</head>
<body >

<div id='sideNav'>
	
		<a href='<c:url value="/mypage/mypage"/>'><div id='sideProfile'>프로필</div></a>
		<a href='<c:url value="/calendar/calendar"/>'><div id='sideSchedule'>스케줄</div></a>
		<a href='<c:url value="/main/main"/>'><div id='sideHome'>Home</div></a>
		<a href='#'><div id='sideBiography'>여행일대기</div></a>
		<a href='<c:url value="/friends/friends"/>'><div id='sideFriend'>친구</div></a>
		<c:if test="${page}">
			<div id='sideGroup'> 여긴 친구 그룹</div>
		</c:if>
		
</div>


</body>
</html>