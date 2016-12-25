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

.friendsButton {
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
<script type="text/javascript">
$(function(){
	$('.friendsProfile').on('click', ".friendPictureImg", function(){
		var str= $(this).parent().siblings("input").attr('id');
		location.href="/controller/friends/main?friendId="+str;
	});
})

</script>
</head>
<body>
	<div class="friendsList">
		<ul class="grow">
			<c:forEach items="${friendList }" var="item">
				<li id="${item.id }" class="friendsProfile">
					<div class="friendsPicture">
						<img class="friendPictureImg"
							src='<c:url value="/tripbook/user/${item.id }/${item.fileName}"/>'>
					</div>
					<input type="hidden" value="${item.id}" id="${item.id}">
					<div class="friendsNameId">${item.name}</div>
					<div class="friendsButton">
						<input type="button" class='btn btn-primary friendSendMessageButton' data-toggle="modal"
							data-target="#friendSendMessage" value="메세지 작성"> <a
							href="/controller/friends/delete?friendId=${item.id }"
							class='btn btn-primary' data-toggle="modal">친구 삭제</a>

					</div>
				</li>
				
			</c:forEach>
		</ul>
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
					메세지 보내기
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form id="sendMessageForm" action='' method="post">
					<input type ="hidden" name="receiver" id="messageReceiverId">
					<div class="modal-body">
						<textarea placeholder="메세지를 입력하세요" name="content"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="sendMessage">전송</button>
						<button type="button" class="btn btn-default friendModalMessage" data-dismiss="modal">취소</button>
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
			
			$(".friendSendMessageButton").click(function(){
				
				$("#friendSendMessage").show();
				$("#messageReceiverId").val($(this).parents().parents().attr('id'));
			});
			
			$(".friendModalMessage").click(function(){
				$("textarea").val('');
			});
			
			$("#sendMessage").click(function(){
				
				$.ajax({
					url : "/controller/main/send",
					type : "post",
					data : $("#sendMessageForm").serialize(),
					dataType : "text",
					success : function(data) {
						if(data>0){
							$("#friendSendMessage").hide();
							$("textarea").val('');
						}else{
							alert("실패");
						}
					},
					error : function() {
						alert('error')
					}
				})
			});
		})
	</script>




	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>