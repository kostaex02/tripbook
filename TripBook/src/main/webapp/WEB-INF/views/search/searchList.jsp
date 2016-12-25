<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>TripBook</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 스크롤 효과 -->
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>
	
	
<script type="text/javascript">


$(function(){
	$('.friendsButton input[type=button]').click(function(){
		$.ajax({
			url : "/controller/search/addFriend",
			type : "post",
			data : 'friendId=' + $(this).parents().siblings("input").attr('id'),
			dataType : "text",
			success : function(data) {
				if(data==2){
					alert("이미 신청");
				}else if(data==1){
					alert("신청 성공");
				}else{
					alert("신청 실패");	
				}
			},
			error : function() {
				alert('error')
			}
		})
	})	
})
	/* 친구정보 메세지 */
	$(function(){
		$('.friendsProfile').on('click', ".friendPictureImg", function(){
			var str= $(this).parent().siblings("input").attr('id');
			location.href="/controller/friends/main?friendId="+str;
		});
	})
	
	
	
</script>
<style type="text/css">
.friendsList {
	margin-top: 20px;
	height:470px;
	overflow: scroll;
	
}

.friendsProfile {
	width: 100%;
	display: inline-table;
}

.friendsPicture {
	display: table-cell;
	width: 70px;
}

.friendsName {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.friendsId {
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



</style>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>
</head>
<body>
	<div class="friendsList">
		<ul class="grow">
			<c:forEach items="${userList }" var="item" varStatus="state">
				<li class="friendsProfile">
					<div class="friendsPicture">
						<img class="friendPictureImg" src='<c:url value="/tripbook/user/${item.id}/${item.fileName }"/>'>
					</div>
					<input type="hidden" value="${item.id}" id="${item.id}">
					<div class="friendsName">${item.name }</div>
					<div class="friendsButton">
						<input type="button" value="친구 신청">
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script type="text/javascript">
	
	/* 스크롤 효과 */
	stroll.bind('.friendsList ul');

	</script>
</body>
</html>