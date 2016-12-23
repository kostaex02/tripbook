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

<title>TripBook</title>
<style type="text/css">
.friendsList {
	margin-top: 20px;
}

.friendsProfile {
	width: 100%;
	display: inline-table;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	border-radius: 10px;
}

.friendsPicture {
	display: table-cell;
	width: 70px;
}

.friendsNameId {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.friendPictureImg {
	width: 70px;
	height: 70px;
	position: relative;
	float: left;
}

.friendsButton{
	display: table-cell;
	vertical-align: middle;
}

 /* 그룹 modal */
	.modal-header{
		background-color: #FAEBD7;
		vertical-align: middle;
		margin-bottom: 10px;
	}
	.modal-body{
		margin-left: 0;
		margin-right: 0;
		padding-left: 0;
		padding-right: 0;
		width: 100%;
	}
	.friendsNameDivOfGroup{
		padding-left:30px;
	}
	.friendsGroupListBind{
		height: 160px;
		width: 110%;
		overflow: auto;
		text-indent: 10px;
	}
	.friendsGroupList{
		height: 160px;
		width: 100%;
		overflow: hidden;
	}
	.friendsGroupMember > input{
		display:none;
	}

</style>
</head>
<body>
	<div class="friendsList">
		<ul class="grow">
			<c:forEach items="${userList }" var="item">
				<li id="${item.id }" class="friendsProfile">
					<div class="friendsPicture">
						<img class="friendPictureImg"
							src='<c:url value="/tripbook/user/${item.id }/${item.fileName}"/>'>
					</div>
					<div class="friendsNameId">${item.name}</div>
					<div class="friendsButton">
						<a href="/controller/admin/update?userId=${item.id }"
							class='btn btn-primary' data-toggle="modal">권한 설정</a>

					</div>
				</li>
				
			</c:forEach>
		</ul>
	</div>
 
	
	
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>