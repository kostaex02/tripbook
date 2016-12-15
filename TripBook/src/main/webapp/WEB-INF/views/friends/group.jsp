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
.sideGroupMenu{
	display: inline;
}



</style>
</head>
<body>
	<div>
		<h2>${group.groupName}</h2>
			<input type="hidden" id="groupNo" name="groupNo" value='${group.groupNo}'>
			<a href="#" class='btn btn-primary groupMemberAdd' data-toggle="modal" data-target="#groupMemberAddModal">그룹 초대</a>
			<a href="#" class='btn btn-primary groupSecession'>그룹 탈퇴</a> 
	</div>
	<div class="groupMemberList">
		<ul class="grow">
			<c:forEach items="${groupMemberList }" var="item">
				<li id="${item.id } " class="groupFriendsProfile">
					<div class="groupFriendsPicture">
						<img class="groupFriendPictureImg"
							src='<c:url value="/tripbook/user/${item.id }/${item.fileName}"/>'>
					</div>
					<div class="groupFriendsNameId">${item.name}</div>
					<div class="groupFriendsButton">
						<input type="button" class='btn btn-primary groupSendMessageButton' data-toggle="modal"
							data-target="#friendSendMessage" value="메세지 작성">
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

	<!-- 그룹멤버 초대 Modal -->
	<div class="friendsGroupContainer">
		<div class="modal fade" id="groupMemberAddModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						그룹원 초대
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<form action="" method="post">
						<div class="modal-body">
							<div class="friendsNameDivOfGroup">
								<h2>${group.groupName}</h2>
								<hr>
							</div>
							<div class="friendsGroupList">
								<div class="friendsGroupListBind">
									<c:forEach items="${notGroupMemberList}" var="notGroupMemberAdd">
										<div class="friendsGroupMember">
											<div class="friendsAddListDiv">
												<img class="friendsAddListImg"
													src='<c:url value="/tripbook/user/${notGroupMemberAdd.id}/${notGroupMemberAdd.fileName}"/>'>${notGroupMemberAdd.name}</div>
											<input type="checkbox" name="friendsAddMemberList"
												value="${notGroupMemberAdd.id}" />
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default friendsGroup">등록</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 그룹생성에 따른 Modal -->
	<div class="friendsGroupContainer">
		<div class="modal fade" id="groupCreateModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						그룹추가
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<form action="" method="post">
						<div class="modal-body">
							<div class="friendsNameDivOfGroup">
								<h2>그룹만들기</h2>
								<br> <br> <input type="text"
									class="form-control nameOfGroup"> <br> <br> <br>
								<h4>멤버추가</h4>
							</div>
							<div class="friendsGroupList">
								<div class="friendsGroupListBind">

									<c:forEach items="${friendList}" var="friendsAddList">
										<div class="friendsGroupMember">
											<div class="friendsAddListDiv">
												<img class="friendsAddListImg"
													src='<c:url value="/tripbook/user/${friendsAddList.id}/${friendsAddList.fileName}"/>'>${friendsAddList.name}</div>
											<input type="checkbox" name="friendsAddMemberList"
												value="${friendsAddList.id}" />
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default friendsGroup">등록</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 메세지 보내기 Modal -->
	<div class="modal fade" id="friendSendMessage" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					메세지보내기
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form id="sendMessageForm" action='' method="post">
					<input type ="hidden" name="receiver" id="messageReceiverId">
					<div class="modal-body">
						<textarea placeholder="메세지를 입력하세요" name="content"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="sendMessage">등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>



	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script type="text/javascript">
	
	/* 그룹 멤버 추가 */
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
						url : "/controller/group/add",
						type : "post",
						data : 'groupNo=' + $("#groupNo").val()+'&friendId='+friendId,
						dataType : "text",
						success : function(data) {
							if(data==1){
								alert('그룹 초대 성공');
								location.href='/controller/group/list?groupNo='+$("#groupNo").val();
							}else{
								alert('그룹 초대 실패');
							}
						},
						error : function() {
							alert('error')
						}
					})
			})
			$('.groupSendMessageButton').click(function(){
				$("#messageReceiverId").val($(this).parents().parents().attr('id'));
			})
			$("#sendMessage").click(function(){
				$.ajax({
					url : "/controller/main/send",
					type : "post",
					data : $("#sendMessageForm").serialize(),
					dataType : "text",
					success : function(data) {
						if(data>0){
							$("#friendSendMessage").hide();
						}else{
							alert("전송 실패");
						}
					},
					error : function() {
						alert('error')
					}
				})
			});
		})
		
		/* 그룹 탈퇴 */
		$('.groupSecession').click(function(){
			if(confirm("그룹 탈퇴 할래?")){
				$.ajax({
					url:"/controller/group/delete",
					type : "post",
					data : "groupNo="+$('#groupNo').val(),
					dataType : "text",
					success : function(data) {
						alert('탈퇴 되었습니다.');
						location.href='/controller/friends/list';
					},
					error : function() {
						console.log('error');
					}
				})
			}
		});
		
	/* 스크롤 효과 */
	stroll.bind('ul');
		
	</script>
	
</body>
</html>