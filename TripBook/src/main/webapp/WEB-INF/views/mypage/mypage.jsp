<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>

<title>Insert title here</title>
<style type="text/css">
#notice {
	border: 1px solid red;
}

#logList {
	border: 1px solid gray;
	margin-top: 20px;
}

#logStory {
	border: 1px solid pink;
	width: 100%;
	display: inline-table;
}

.profile {
	display: table-cell;
	width: 50px;
}

#message {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.profileImg {
	width: 60px;
	height: 60px;
	position: relative;
	float: left;
	margin: -10px;
	margin-bottom: -15px;
}

#button{
	display: table-cell;
	vertical-align: middle;
}

</style>
</head>
<body>
	<div id="notice">
		${user.id }<br>
		${user.name }<br>
		${user.age }<br>
		${user.gender }<br>
		${user.fileName }<br>
	</div>
	<div id="logList">
		<ul class="grow">
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
			<li id="logStory">
				<div class="profile">
					<img class="profileImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div id="message">친구하자!</div>
				<div id="button">
					<input type="submit" value="수락">
					<input type="submit" value="거절">
				</div>
			</li>
		</ul>
	</div>
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>