<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#friendsList {
	margin-top: 20px;
}

#friends {
	width: 100%;
	display: inline-table;
}

.picture {
	display: table-cell;
	width: 50px;
}

#friendsProfile {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.friendPicture {
	width: 70px;
	height: 70px;
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
	<div id="friendsList">
		<ul class="grow">
			<c:forEach items="${userList }" var="item" varStatus="state">
				<li id="friends">
					<div class="picture">
						<img class="friendPicture" src='<c:url value="/images/img.jpg"/>'>
					</div>
					<input type="text" value="${item.id} ">
					<div id="friendsProfile">${item.name } <br> id는 히든<br></div>
					<div id="button">
						<input type="submit" value="message">
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>