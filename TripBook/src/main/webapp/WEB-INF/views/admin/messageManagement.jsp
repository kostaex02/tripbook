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
	height:300px;
	border-radius:5px;
}

</style>
</head>
<body>
	<div id="adminNotice">
		<a href="#" class='btn btn-primary' data-toggle="modal" data-target="#addNotice">메세지 작성</a>
	</div>
	<div class="adminLogList">
		<ul class="grow">
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					메세지 title!
				</div>
				<div class="adminMessage">같이 여행갑시다</div>
			</li>
		</ul>
	</div>
	
	<!-- 공지사항 작성 Modal -->
	<div class="modal fade" id="addNotice" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					공지사항
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action='' method="post">
					<div class="modal-body">
						<input type='text' class="form-control" name="receiver" placeholder="받는 사람">
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
	
	
	
	
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>