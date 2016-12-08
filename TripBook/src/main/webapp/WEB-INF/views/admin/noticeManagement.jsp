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
#adminNotice {
	border: 1px solid red;
}

.adminLogList {
	margin-top: 20px;
}

.adminNoticeLogList {
	width: 100%;
	display: inline-table;
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


</style>
</head>
<body>
	<div id="adminNotice">
		공지사항?
	</div>
	<div class="adminLogList">
		<ul class="grow">
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			<li class="adminNoticeLogList">
				<div class="notice">
					공지사항 title!
				</div>
				<div class="adminMessage">마이크 테스트!!! 하나둘셋! 안내말씀드립니다.</div>
			</li>
			
		</ul>
	</div>
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>