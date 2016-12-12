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
.groupMemberList {
	margin-top: 20px;
}

.groupFriendsProfile {
	width: 100%;
	display: inline-table;
}

.groupFriendsPicture {
	display: table-cell;
	width: 70px;
}

.groupFriendsNameId {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.groupFriendPictureImg {
	width: 70px;
	height: 70px;
	position: relative;
	float: left;
}

.groupFriendsButton {
	display: table-cell;
	vertical-align: middle;
}

/* 그룹 modal */
.friendsGroupListBind {
	height: 160px;
	overflow: auto;
	text-indent: 10px;
}

.friendsGroupList {
	height: 160px;
	overflow: hidden;
}

.friendsGroupMember>input {
	display: none;
	height: 60px;
}

.friendsAddListImg {
	width: 60px;
	height: 60px;
	position: relative;
	float: left;
}

.friendsAddListDiv {
	height: 60px;
}

.friendsGroupMemberName {
	height: 60px;
}

textarea {
	width: 100%;
	height: 300px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div>
		<h2>${item.groupName } 그룹명</h2>
		<a href="#" class='btn btn-primary'>그룹 초대</a>
		<a href="#" class='btn btn-primary'>그룹 탈퇴</a> 
	</div>
	<div class="groupMemberList">
		<ul class="grow">
			<li id="${item.id } " class="groupFriendsProfile">
				<div class="groupFriendsPicture">
					<img class="groupFriendPictureImg"
						src='<c:url value="/tripbook/user/${item.id }/${item.fileName}"/>'>
				</div>
				<div class="groupFriendsNameId">${item.name} 친구 이름</div>
				<div class="groupFriendsButton">
					<a href="#" class='btn btn-primary' data-toggle="modal"
						data-target="#friendSendMessage">메세지 작성</a>

				</div>
			</li>
		
		
			<%-- <c:forEach items="${friendList }" var="item">
				<li id="${item.id } " class="friendsProfile">
					<div class="friendsPicture">
						<img class="friendPictureImg"
							src='<c:url value="/tripbook/user/${item.id }/${item.fileName}"/>'>
					</div>
					<div class="friendsNameId">${item.name}</div>
					<div class="friendsButton">
						<a href="#" class='btn btn-primary' data-toggle="modal"
							data-target="#friendSendMessage">메세지 작성</a> <a
							href="/controller/friends/delete?friendId=${item.id }"
							class='btn btn-primary' data-toggle="modal">친구 삭제</a>

					</div>
				</li>
			</c:forEach> --%>
		</ul>
	</div>

	<!-- 메세지 보내기 Modal -->
	<div class="modal fade" id="friendSendMessage" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					메세지보내기
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action='' method="post">
					<div class="modal-body">
						<textarea placeholder="메세지를 입력하세요" name="message"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="submit">등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>




	<script type="text/javascript">
		$(function() {
			$('.friendsGroupMember').click(function() {
				//체크 박스 셀렉터 지정				
				checkbox = $(this).children().last();
				//check박스 토글
				$(checkbox).prop('checked', function() {
					return !$(checkbox).prop('checked');
				});
				//check박스에 따라 div의 css변경
				if ($(checkbox).prop("checked")) {
					$(this).css("background-color", "#ffffb9");
				} else {
					$(this).css("background-color", "#ffffff");
				}
			})
			$('.friendsGroup').click(
					function() {
						var friendId = [];
						$(".friendsGroupMember > :checkbox:checked").each(
								function(index, item) {
									friendId.push(item.value);
						});
						$.ajax({
						url : "/controller/group/create",
						type : "post",
						data : 'groupName=' + $(".nameOfGroup").val()+'&friendId='+friendId,
						dataType : "text",
						success : function(data) {
							if(data==1){
								alert('그룹 생성 성공');
								location.href='/controller/friends/list';
							}else{
								alert('그룹 생성 실패');
							}
						},
						error : function() {
							alert('error')
						}
					})
			})
		})
		
		
	</script>
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script type="text/javascript">
		stroll.bind('ul');
	</script>
	
</body>
</html>