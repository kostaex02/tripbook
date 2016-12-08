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
.friendsList {
	margin-top: 20px;
}

.friendsProfile {
	width: 100%;
	display: inline-table;
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
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input class="btn btn-primary" type="submit" value="권한 설정">
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