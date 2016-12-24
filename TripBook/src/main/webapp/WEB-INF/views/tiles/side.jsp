<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>

/* 유저 side menu */
#sideSchedule, #sideHome, #sideBiography, #sideFriend {
	position: relative;
	line-height: 55px;
	height: 50px;
	color: white;
}


#sideProfile {
	position: relative;
	line-height: 40px;
	top: 15px;
	margin-left: 15px;
	height: 130px;
}


#sideSchedule {
	background-color: #546E7A;
	top: 35px;
	float: left;
	width: 100%;
}

#sideSchedule .hover {
	position: relative;
	margin-left: 20px;
	float: left;
}

#sideSchedule .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#sideSchedule:hover {
	position: relative;
	background-color: #455A64;
}

#sideHome {
	background-color: #546E7A;
	top: 35px;
	float: left;
	width: 100%;
	box-shadow: 0px -5px 6px rgba(0, 0, 0, 0.16), 0 3px 9px rgba(0, 2, 0, 0.23)
}

#sideHome .hover {
	position: relative;
	float: left;
	margin-left: 20px;
}

#sideHome .text {
	position: relative;
	float: right;
	margin-right: 24px;
}

#sideHome:hover {
	position: relative;
	background-color: #455A64;
}


#sideBiography {
	background-color: #546E7A;
	top: 35px;
	width: 100%;
	clear: both;
}

#sideBiography .hover {
	position: relative;
	float: left;
	margin-left: 20px;	
}

#sideBiography .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#sideBiography:hover {
	position: relative;
	background-color: #455A64;
}

#sideFriend {
	background-color: #546E7A;
	top: 30px;
	float:left;
	width: 100%;
	clear: both;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

#sideFriend .hover {
	position: relative;
	float: left;
	margin-left: 20px;
}

#sideFriend .text {
	
	float: right;
	margin-right: 24px;
}

#sideFriend:hover {
	position: relative;
	background-color: #455A64;
}

#sideNav {
	text-align: center;
	clear: both;
	position: relative;
}

#sideNav div{
	cursor: pointer;
	font-family:NanumPen;
	font-size:xx-large;
}

#sideGroup {
	position: relative;
	top: 35px;
	height: auto;
	display: none;
	color: black;
}

.profileImage {
	position: static;
	float: left;
	width: 50%;
	height: 130px;
	border-radius: 100%;
}

.friendProfile {
	position: relative;
	line-height: 40px;
	height: 130px;
	padding: 0px;
	background-color: maroon;
	width: 96%;
	border-radius: 10px;
	font-size: 20px !important;
}


.friendsUserName, #friendsProfile{
	font-size: 20px !important;
}

#friendAdd {
	visibility: visible;
}

/* a 태그 밑줄 제거 */
a:hover {
	text-decoration: none !important;
	color: white;
}

a {
	text-decoration: none !important;
	color: white;
}

.sideAddGroupButton {
	color: white;
	cursor: pointer;
}

.sideAddGroupButton:hover {
	color: black;
}
dd:hover{
	color: black;
}

/* 관리자 side menu */
#adminSideHome, #adminSideNotice, #adminSideMessge, #adminSideBoard,
	#adminSideUser {
	position: relative;
	line-height: 55px;
	height: 50px;
	color: white;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

#adminSideNav {
	text-align: center;
	clear: both;
	position: relative;
}

#adminSideProfile {
	position: relative;
	line-height: 40px;
	top: 30px;
	height: 130px;
}

#adminSideHome {
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#adminSideHome .text {
	position: relative;
	float: right;
	margin-right: 24px;
}

#adminSideHome :hover{
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#adminSideHome:hover {
	position: relative;
	background-color: #455A64;
}

#adminSideNotice {
	background-color: #546E7A;
	float: left;
	width: 100%;
	box-shadow: 0px -5px 6px rgba(0, 0, 0, 0.16), 0 3px 9px rgba(0, 2, 0, 0.23)
}


#adminSideNotice .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#adminSideNotice:hover {
	position: relative;
	background-color: #455A64;
}


#adminSideMessge {
	background-color: #546E7A;
	width: 100%;
	clear: both;
}


#adminSideMessge .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#adminSideMessge:hover {
	position: relative;
	background-color: #455A64;
}

#adminSideBoard {
	background-color: #546E7A;
	width: 100%;
}


#adminSideBoard .text {
	
	float: right;
	margin-right: -70px;
}

#adminSideBoard:hover {
	position: relative;
	background-color: #455A64;
	border-right: 3px threedhighlight red;
}

#adminSideUser {
	background-color: #546E7A;
	width: 100%;
}

#adminSideUser .text {
	
	float: right;
	margin-right: -70px;
}

#adminSideUser:hover {
	position: relative;
	background-color: #455A64;
	border-right: 3px threedhighlight red;
}



/* 그룹관련 css */

.sideGroupMenu {
	display: none;
}

dd {
	color: white;
	font-size:20px;
}

dl {
	margin-bottom: 5px;
}

#sideFriendProfile {
	visibility: hidden;
	top:35px;
	font-size:20px;
}

.sideGroupHeader{
	position:relative;
	line-height: 0;
	height: 35px;
	top:10px;
}
.sideGroupHeader dd{
	line-height: 0.5;
}
.messageAlarm{
	width: 32px;
	margin-left: 18px;
	margin-top: 6px;
	cursor: pointer;
	margin-bottom: 7px;
}
.userName{
	display: inline-block;
	margin-left: 10px;
}
.userName img{
	margin-left: 14px;
	padding-left: 5px;
}
.rightSide{
	float:left;
	position: absolute;
	left: 53%;
	top: 0%;
	text-align: center;
	
}
.badge{
	vertical-align: top;
	padding: 2px 9px;
	font-size: 20px;
	font-family: nanumpen;
}


</style>

</head>
<body>

	<c:choose>
		<c:when test="${userState eq '0'}">
			<div id='sideNav'>
				<div id="sideProfile">
					<div style="float: left; width: 100%; height: 130px;">
					<a class="sideProfileLink" href="<c:url value="/mypage/list"/>">
						<img class="profileImage"
							src="<c:url value="/tripbook/user/${userId}/${userFileName}"/>">
					</a>
					</div>
					<div class="rightSide">
					<a class="sideProfileLink" href="<c:url value="/mypage/list"/>">
						${userName} <img src="<c:url value="/images/icon/icon_messageAlarm.png"/>"><span class="badge"></span><br>
					</a>
					<a class="reInfo" href="<c:url value="/mypage/profile"/>">정보수정</a><br>
					<a class="logout" href="<c:url value="/main/logout"/>">로그아웃</a><br>
					</div>
				</div>

				<a href="<c:url value="/main/home"/>">
				<div id="sideHome">
					 <img alt="홈"
						src="<c:url value="/images/icon/icon_home48.png"/>" class="hover">
						<div class='text'>홈</div>
				</div></a>
				<a href='<c:url value="/calendar/list"/>'>
					<div id="sideSchedule">
						<img alt="스케줄"
							src="<c:url value="/images/icon/icon_schedule48.png"/>"	class="hover">
							<div class="text">스케줄</div>
					</div></a>
				<a href='<c:url value="/biography/list"/>'>
					<div id="sideBiography">
						<img alt="여행일대기"
							src="<c:url value="/images/icon/icon_tripbook48.png"/>" class="hover">
						<div class="text">발자취</div>
					</div>
				</a>
				<a href='<c:url value="/friends/list"/>'>
					<div id='sideFriend'>
						<img alt="친구"
							src="<c:url value="/images/icon/icon_tripbook48.png"/>" class="hover">
						<div class="text">친구</div>
					</div></a>
				<hr>
				<div id='sideGroup'>
					<dl class="sideGroupHeader">
						<dd style="cursor: pointer">그룹</dd>
					</dl>
					<dl class="sideGroupMenu">
						<dd>
							<a class="sideAddGroupButton" data-toggle="modal"
								data-target="#groupCreateModal">+ 그룹 추가</a>
						</dd>
						<c:choose>
							<c:when test="${groupList ne null}">
								<c:forEach items="${groupList }" var="item">
									<a href='<c:url value="/group/list?groupNo=${item.groupNo}"/>'>
										<dd id="${item.groupNo }">${item.groupName }</dd>
									</a>
								</c:forEach>
							</c:when>
						</c:choose>
					</dl>
				</div>

				<!-- 클릭시 생성 -->
				<div id="sideFriendProfile">
					<hr>
					<a class='sideProfileLink' href='<c:url value="/friends/friendMain"/>'>
						<div id="friendsProfile">
							<img class='profileImage friendsImage'
								src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
							<input type="hidden" class="friendsUserId" value="">
							<!-- input value에 아이디 저장-->
							<div class='friendsUserName'>이름</div>
							<a href='#'>게시물</a><br> <a href='<c:url value="/friends/friendBiography"/>'>일대기</a>
							<br>
					<!-- 친구 상태값에 따른 버튼 변경 -->
					<c:choose>
						<c:when test="${friendState == null}">
							<input class="btn btn-primary" type='button' value='메세지'>
						</c:when>
						<c:when test="${friendState == null}">
							<hr id='friendAdd'>
							<input class="btn btn-primary" type='button' value='친구 신청'>
						</c:when>
					</c:choose>
						</div>
					</a>
					
				</div>
			</div>
		</c:when>
		<c:when test="${userState eq '1'}">
			<div id='adminSideNav'>
				<a class='adminSideHome'
					href='<c:url value="/admin/boardManagement"/>'>
					<div id='adminSideProfile'>
						<div class='userName'>${userName}</div>
						<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
					</div>
				</a> <a href='<c:url value="/admin/notice"/>'><div
						id='adminSideNotice'>공지사항</div></a> <a
					href='<c:url value="/admin/message"/>'><div
						id='adminSideMessge'>메세지</div></a> <a
					href='<c:url value="/admin/board"/>'><div
						id='adminSideBoard'>게시물 관리</div></a> <a
					href='<c:url value="/admin/user"/>'><div
						id='adminSideUser'>회원관리</div></a>
				<p>
			</div>
		</c:when>
	</c:choose>

	
	<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
	<script>
		$(function() {
			console.log(sessionStorage.getItem("pageName"));

			$("a").click(
					function() {
						sessionStorage.setItem("pageName", $(this).children(
								"div").attr("id"));
					});

			$(
					".sideAddGroupButton, .sideGroupMenu, .groupMemberAdd, .groupSecession")
					.click(function() {
						sessionStorage.setItem("pageName", "sideFriend");
					});
			
			$(".sideGroupHeader").click(function() {
				$(".sideGroupMenu").slideToggle(500);
			})

			var insTag = "<img id='trash' src='<c:url value="/images/trash.png"/>'>"
			if (sessionStorage.getItem("pageName") == "sideSchedule") {
				$(".calendarTrash").html(insTag);
			}

			var group = document.getElementById("sideGroup");
			if (group != null) {
				if (sessionStorage.getItem("pageName") != "sideFriend") {
					group.style.display = 'none';
				} else {
					group.style.display = 'inline';
				}
			}
			
			var slideGroup = document.getElementById("slideGroup");
			if (group != null) {
				if (sessionStorage.getItem("pageName") != "slideFriend") {
					slideGroup.style.display = 'none';
				} else {
					slideGroup.style.display = 'inline';
				}
			}

			var friendProfile = document.getElementById("friendProfile");
			if (friendProfile != null) {
				if (sessionStorage.getItem("pageName") != "friendProfile") {
					friendProfile.style.display = 'none';
				} else {
					friendProfile.style.display = 'inline';
				}
			}
			
			
			switch(sessionStorage.getItem("pageName")){
				case "sideHome" : $('#sideHome').css('border-right', '5px solid #69F0AE');break;
				case "sideSchedule" : $('#sideSchedule').css('border-right', '5px solid #69F0AE');break;
				case "sideBiography" : $('#sideBiography').css('border-right', '5px solid #69F0AE');break;
				case "sideFriend" : $('#sideFriend').css('border-right', '5px solid #69F0AE');break;
				case "adminSideNotice" : $('#adminSideNotice').css('border-right', '5px solid #69F0AE');break;
				case "adminSideBoard" : $('#adminSideBoard').css('border-right', '5px solid #69F0AE');break;
				case "adminSideMessge" : $('#adminSideMessge').css('border-right', '5px solid #69F0AE');break;
				case "adminSideUser" : $('#adminSideUser').css('border-right', '5px solid #69F0AE');break;
			}
			
			setInterval("newMessage()", 1000);
		});
		
		function newMessage(){
			$.ajax({
		    	url : "/controller/notice/count",
				type : "post",
				dataType : "json",
				success : function(data) {
					$('.badge').empty();
					$('.badge').append(data);
				},
				error : function() {
					alert('error');
				}
		    });
		}
	</script>
</body>
</html>