<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
	 #sideSchedule, #sideHome, #sideBiography, #sideFriend, #sideNav{
		position: relative;
		line-height: 55px;
		height:auto;
		color:white;
	}
	
	#sideProfile{
		position: relative;
		line-height: 55px;
		height:130px;
		padding:0px;
		background-color:maroon;
		width:96%;
	}
	
	#sideSchedule{
		background-color:navy;
		
		float:left;
		width:48%;
		left:0%
	}
	
	#sideHome{
		background-color:olive;
		float:left;
		width:48%;
		left:0%
	}
	
	#sideBiography{
		background-color:teal;
		width:96%;
		clear: both;
	}
	
	#sideFriend{
		background-color:silver;
		width:96%;
	}
	
	#sideNav{
		text-align: center;
		clear: both;
	}
	
	a{
		text-decoration: none;
	}
	#sideGroup{
		height:50px;
		display:none;
		color:black;
	}
	.profileImage{
		position:static;
		float:left;
		width:50%;
		height:130px;
	}
	
	.userName{
		color:white;
	}
	
	.sideProfileLink:hover{
		text-decoration:none !important
	}
	
</style>

</head>
<body>


	<div id='sideNav'>
			<a class='sideProfileLink'href='<c:url value="/mypage/mypage"/>'><div id='sideProfile'>
				<img class='profileImage' src='<c:url value="/tripbook/user/${userId}/${userFileName}"/>'>
				<div class='userName'>${userName}</div>
				<a class='logout' href='<c:url value="/mypage/profile"/>'>정보수정</a>
				<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
			</div>
		</a>
		<a href='<c:url value="/calendar/calendar"/>'><div id='sideSchedule'>스케줄</div></a>
		<a href='<c:url value="/main/main"/>'><div id='sideHome'>Home</div></a>
		<a href='<c:url value="/biography/biography"/>'><div id='sideBiography'>여행일대기</div></a>
		<a href='<c:url value="/friends/friends"/>'><div id='sideFriend'>친구</div></a>
		<p>
			<div id='sideGroup'> 
				<dl>
					<dd><a data-toggle="modal" data-target="#myModal">+ 그룹 추가</a></dd>
					<dd>학교친구</dd>
					<dd>직장동료</dd>
				</dl>
			</div>
		
</div>
<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
<script>
$(function(){
	$("a").click(function(){
		sessionStorage.setItem("pageName", $(this).children("div").attr("id"));
	});
	 var trash = document.getElementById("trash");
	    if(sessionStorage.getItem("pageName")!="sideSchedule"){
	    	trash.style.display = 'none';
	    }else{
	    	trash.style.display = 'inline';
	    }
	    
	 var group = document.getElementById("sideGroup");
	    if(sessionStorage.getItem("pageName")!="sideFriend"){
	    	group.style.display = 'none';
	    }else{
	    	group.style.display = 'inline';
	    }
})

</script>
</body>
</html>