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

.adminLogList {
	margin-top: 20px;
}

.adminNoticeLogList {
	width: 100%;
	display: inline-table;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	border-radius: 10px;
}

.notice {
	display: table-cell;
	width: 50px;
}

.adminMessage {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}
textarea{
	width:100%;
	height:100px;
	border-radius:5px;
}
.adminGroupListBind {
	height: 160px;
	overflow: auto;
	text-indent: 10px;
}
.adminGroupList {
	height: 160px;
	overflow: hidden;
}
.adminAddListImg {
	width: 60px;
	height: 60px;
	position: relative;
	float: left;
}
.adminAddListDiv {
	height: 60px;
}
.adminGroupMember>input {
	height: 60px;
}

</style>
</head>
<body>
	<div id="adminNotice">
		<a href="#" class='btn btn-primary' data-toggle="modal" data-target="#addNotice">메세지 작성</a>
	</div>
	<div class="adminLogList">
		<ul class="grow">
			<c:forEach items="${noticeList }" var="item">
				<li class="adminNoticeLogList" id="${item.noticeNo }">
					<div class="notice">
						${item.name }님이 ${item.receiver}에게 보낸 메세지입니다.
					</div>
					<div class="adminMessage">${item.content }</div>
				</li>	
			</c:forEach>
		</ul>
	</div>
	
	<!-- 메세지 작성 Modal -->
	<div class="modal fade" id="addNotice" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					메세지 작성
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action='/controller/admin/sendMessage' method="post">
					<div class="modal-body">
						<textarea placeholder="메세지를 입력하세요" name="content"></textarea>
						<div class="adminGroupList">
							<div class="adminGroupListBind">
								<c:forEach items="${userList }" var="item">
									<div class="adminGroupMember">
										<div class="adminAddListDiv">
										<img class="adminAddListImg"
										src='<c:url value="/tripbook/user/${item.id }/${item.fileName }"/>'>${item.name }</div>
										<input type="checkbox" class='userCheck' name="users" value="${item.id }" />
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default" id="submit">등록</button>
						<button type="button" class="btn btn-default messageCancel" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
		
		$(function() {
			$('.adminGroupMember').click(function() {
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
			});
		})
		$('.messageCancel').click(function(){
			$('textArea').val('');
			$(".userCheck").prop('checked', false) ;
			$(".adminGroupMember").css("background-color", "#ffffff");

		})
	</script>
</body>
</html>