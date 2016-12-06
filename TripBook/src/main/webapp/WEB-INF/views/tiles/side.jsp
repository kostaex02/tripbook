<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		clear: both;
	}
	
	a{
		text-decoration: none;
	}
	#sideGroup{
		border:1px solid red;
		height:50px;
		display:none;
	}
	
	
</style>

</head>
<body >

<div id='sideNav'>
	
		<a href='<c:url value="/mypage/profile"/>'><div id='sideProfile'>프로필</div></a>
		<a href='<c:url value="/calendar/calendar"/>'><div id='sideSchedule'>스케줄</div></a>
		<a href='<c:url value="/main/main"/>'><div id='sideHome'>Home</div></a>
		<a href='#'><div id='sideBiography'>여행일대기</div></a>
		<a href='<c:url value="/friends/friends"/>'><div id='sideFriend'>친구</div></a>
		<p>
			<div id='sideGroup'>  <a data-toggle="modal" data-target="#myModal">+ 그룹 추가</a></div>
		
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