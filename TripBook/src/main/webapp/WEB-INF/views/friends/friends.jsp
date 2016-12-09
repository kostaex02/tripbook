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
}

textarea {
	width: 100%;
	height: 300px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="friendsList">
		<ul class="grow">
			<c:forEach items="${friendList }" var="item">
				<li id="${item.id } }" class="friendsProfile">
					<div class="friendsPicture">
						<img class="friendPictureImg"
							src='<c:url value="/images/${item.id }/${item.fileName}"/>'>
					</div>
					<div class="friendsNameId">
						${item.name}
					</div>
					<div class="friendsButton">
						<a href="#" class='btn btn-primary' data-toggle="modal"
							data-target="#friendSendMessage">메세지 작성</a>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

	<!-- 그룹생성에 따른 Modal -->
	<div class="friendsGroupContainer">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						그룹추가
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="friendsNameDivOfGroup">
							<h2>그룹만들기</h2>
							<br>
							<br> <input type="text" class="form-control"> <br>
							<br>
							<br>
							<h4>멤버추가</h4>
						</div>
						<div class="friendsGroupList">
							<div class="friendsGroupListBind">
								<div id="friend1" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구1 / 누구니 <input type="checkbox" value="1" />
								</div>
								<div id="friend2" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구2 / 누구니 <input type="checkbox" value="2" />
								</div>
								<div id="friend3" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구3 / 누구니 <input type="checkbox" value="3" />
								</div>
								<div id="friend4" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구4 / 누구니 <input type="checkbox" value="4" />
								</div>
								<div id="friend5" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구5 / 누구니 <input type="checkbox" value="5" />
								</div>
								<div id="friend6" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구6 / 누구니 <input type="checkbox" value="6" />
								</div>
								<div id="friend7" class="friendsGroupMember">
									<div>이미지 영역</div>
									친구7 / 누구니 <input type="checkbox" value="7" />
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="submit">등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 메세지 보내기 Modal -->
	<div class="modal fade" id="friendSendMessage" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					공지사항
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action='' method="post">
					<div class="modal-body">
						<input type='text' class="form-control" name="receiver"
							placeholder="받는 사람">
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
			$('#submit').click(
					function() {
						var str = "";
						str = $(".nameOfGroup").val();
						$(".friendsGroupMember > :checkbox:checked").each(
								function(pi, po) {
									str += po.value + " / ";
								});
						alert(str)
					})
		})
	</script>




	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>