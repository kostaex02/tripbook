<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
	

	/* 유저 side menu */
	 #sideSchedule, #sideHome, #sideBiography, #sideFriend{
		position: relative;
		line-height: 55px;
		height:auto;
		color:white;
		border-radius: 10px;
	} 
	
	#sideProfile{
		position: relative;
		line-height: 40px;
		height:130px;
		padding:0px;
		background-color:maroon;
		width:96%;
		border-radius: 10px;
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
		position: relative;
		
		color:white;
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
		border-radius: 10px;
	}
	.friendProfile{
		
			
	}
	
	#friendAdd{
		visibility: hidden;
	}

	/* a 태그 밑줄 제거 */
	a:hover{
		text-decoration:none !important;
		color:white;
	}
	a{
		text-decoration:none !important;
		color:white;
	}
	.sideAddGroupButton{
		color:black;
		cursor: pointer;
	}
	.sideAddGroupButton:hover{
		color:black;
	}
	
	
	/* 관리자 side menu */
	
	#adminSideHome, #adminSideNotice, #adminSideMessge, #adminSideBoard, #adminSideUser{
		height:50px;
		line-height: 50px;
		border-radius: 10px;
	}
	
	#adminSideNav{
		text-align: center;
		clear: both;
		position: relative;
	}
	
	#adminSideProfile{
		position: relative;
		line-height: 40px;
		padding:0px;
		background-color:maroon;
		width:96%;
		border-radius: 10px;
	}
	
	
	#adminSideHome{
		position: relative;
		padding:0px;
		background-color:maroon;
		width:96%;
	}
	
	#adminSideNotice{
		background-color:navy;
		float:left;
		width:48%;
		left:0%
	}
	
	#adminSideMessge{
		background-color:olive;
		float:left;
		width:48%;
		left:0%
	}
	
	#adminSideBoard{
		background-color:teal;
		width:96%;
		clear: both;
	}
	
	#adminSideUser{
		background-color:silver;
		width:96%;
	}
	
	
	/* 그룹관련 css */
	
	.sideGroupHeader{
		background-color: black;
		position: relative;
		line-height: 30px;
		height:auto;
		color:white;
		border-radius: 45px;
		width: 15%;
		
	}
	.sideGroupMenu{
		display: none; 
	}
	dl{
		margin-bottom: 5px;
	}
	
	
</style>

</head>
<body>

<c:choose>
	<c:when test="${userState eq '0'}">
		<div id='sideNav'>
			<a class='sideProfileLink'href='<c:url value="/mypage/list"/>'><div id='sideProfile'>
				<img class='profileImage' src='<c:url value="/tripbook/user/${userId}/${userFileName}"/>'>
				<div class='userName'>${userName}</div>
				<a class='logout' href='<c:url value="/mypage/profile"/>'>정보수정</a><br>
				<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
				</div>
			</a>
			<a href='<c:url value="/calendar/calendar"/>'><div id='sideSchedule'>스케줄</div></a>
			<a href='<c:url value="/main/main"/>'><div id='sideHome'>Home</div></a>
			<a href='<c:url value="/biography/biography"/>'><div id='sideBiography'>여행일대기</div></a>
			<a href='<c:url value="/friends/list"/>'><div id='sideFriend'>친구</div></a>
			<p>
			<div id='sideGroup'>
				<dl class="sideGroupHeader">
					<dd style="cursor: pointer">그룹</dd>
				</dl>
				<dl class="sideGroupMenu">
					<dd><a class="sideAddGroupButton" data-toggle="modal" data-target="#myModal">+ 그룹 추가</a></dd>
					<dd>학교친구</dd>
					<dd>직장동료</dd>
				</dl>
			</div>
			<hr>
			<a class='sideProfileLink'href='<c:url value="/mypage/list"/>'><div id='sideProfile'>
				<img class='profileImage' src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
				<div class='userName'>friendUserName</div>
				<a href='#'>게시물 보기</a><br>
				<a href='#'>일대기 보기</a>
				</div>
				<hr id='friendAdd'>
				<c:if test="${userName != null}">
					<input class="btn btn-primary" type='button' value='친구 신청'>
				</c:if>
			</a>
		</div>
	</c:when>
	<c:when test="${userState eq '1'}">
		<div id='adminSideNav'>
			<a class='adminSideHome' href='<c:url value="/admin/boardManagement"/>'>
				<div id='adminSideProfile'>
					<div class='userName'>${userName}</div>
					<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
				</div>
			</a>
			<a href='<c:url value="/admin/noticeManagement"/>'><div id='adminSideNotice'>공지사항</div></a>
			<a href='<c:url value="/admin/messageManagement"/>'><div id='adminSideMessge'>메세지</div></a>
			<a href='<c:url value="/admin/boardManagement"/>'><div id='adminSideBoard'>게시물 관리</div></a>
			<a href='<c:url value="/admin/userManagement"/>'><div id='adminSideUser'>회원관리</div></a>
			<p>
			
		</div>
	</c:when>
</c:choose>
	



<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
<script>
$(function(){
	$("a").click(function(){
		sessionStorage.setItem("pageName", $(this).children("div").attr("id"));
	});
	
	$("#searchButton").click(function(){
		sessionStorage.setItem("pageName", $(this).children("div").attr("id"));
	});
	
	$(".sideGroupHeader").click(function() {
		$(".sideGroupMenu").slideToggle(500);
	})
	
	 var trash = document.getElementById("trash");
	    if(sessionStorage.getItem("pageName")!="sideSchedule"){
	    	trash.style.display = 'none';
	    }else{
	    	trash.style.display = 'inline';
	    }
	    
	 var group = document.getElementById("sideGroup");
	 	if(group != null){
		    if(sessionStorage.getItem("pageName")!="sideFriend"){
		    	group.style.display = 'none';
		    }else{
		    	group.style.display = 'inline';
		    }
	 	}
	 	
	 var friendProfile = document.getElementById("friendProfile");
	 	if(friendProfile != null){
		    if(sessionStorage.getItem("pageName")!="friendProfile"){
		    	friendProfile.style.display = 'none';
		    }else{
		    	friendProfile.style.display = 'inline';
		    }
	 	}
})

</script>
</body>
</html>