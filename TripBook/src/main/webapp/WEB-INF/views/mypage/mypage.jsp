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

#mypageNotice {
	border: 1px solid red;
	overflow: scroll;
	height:30%;
}


.mypageLogList {
	margin-top: 20px;
}

.mypageLogStory {
	width: 100%;
	
}

.mypageProfile {
	float:left;
	width: 60px;
	height:60px;
}

.mypageMessage {
	float:left;
	vertical-align: middle;
	text-align: center;
	width: 70%;
	height: 60px;
}

.mypageProfileImg {
	width: 60px;
	height: 60px;
	position: relative;
}

.mypageButton{
	height:60px;
	vertical-align: middle;
}
.mypageMessageContent{
	left:60px;
	display: none;
}


</style>
</head>
<body>
	<div id="mypageNotice">
		<ul class="grow">
			<c:forEach items="${noticeList}" var="noticeItem" varStatus="noticeState">
				<li class="mypageNoticeList">
					${noticeState} ${noticeItem.content}
				</li>
			</c:forEach>
		</ul>
	</div>
	
	<div class="mypageLogList">
		<ul class="grow">
			<c:forEach items="${otherNoticeList}" var="otherNoticeItem" varStatus="otherNoticeState">
				<c:choose>
					<c:when test="${otherNoticeItem.state eq '0'}">
						<li class="mypageLogStory">
							<div class="mypageProfile">
								<img class="mypageProfileImg" src='<c:url value="/tripbook/user/${otherNoticeItem.sender}/${otherNoticeItem.fileName}"/>'>
							</div>
							<div class="mypageMessage">${otherNoticeItem.name}님의 친구신청!</div>
							<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
								<input class="btn btn-primary friendAccept" type="button" value="수락">
								<input class="btn btn-default friendRefuse" type="button" value="거절">
							</div>
						</li>
					</c:when>
					<c:when test="${otherNoticeItem.state eq '1'}">
						<li class="mypageLogStory">
							<div class="mypageProfile">
								<img class="mypageProfileImg" src='<c:url value="/tripbook/user/${otherNoticeItem.sender}/${otherNoticeItem.fileName}"/>'>
							</div>
							<div class="mypageMessage">${otherNoticeItem.name}님의 그룹신청!</div>
							<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
								<input class="btn btn-primary groupAccept" type="button" value="수락">
								<input class="btn btn-default groupRefuse" type="button" value="거절">
							</div>
						</li>
					</c:when>
					<c:when test="${otherNoticeItem.state eq '2'}">
						<li class="mypageLogStory">
							<div class="mypageMessage">${otherNoticeItem.name} 관리자의 말씀 : ${otherNoticeItem.content}</div>
							<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
								<input class="btn btn-primary noticeItem" type="button" value="확인">
							</div>
						</li>
					</c:when>
					<c:when test="${otherNoticeItem.state eq '3'}">
						<li class="mypageLogStory">
							<div class="mypageProfile">
								<img class="mypageProfileImg" src='<c:url value="/tripbook/user/${otherNoticeItem.sender}/${otherNoticeItem.fileName}"/>'>
							</div>
							<div class="mypageMessage">${otherNoticeItem.name}님이 새로운 게시물을 작성했습니다.</div>
							<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
								<input class="btn btn-primary friendBoard" type="button" value="확인하러 가자">
							</div>
						</li>
					</c:when>
					<c:when test="${otherNoticeItem.state eq '4'}">
						<li class="mypageLogStory">
								<div class="mypageProfile">
									<img class="mypageProfileImg" src='<c:url value="/tripbook/user/${otherNoticeItem.sender}/${otherNoticeItem.fileName}"/>'>
								</div>
								<div class="mypageMessage">${otherNoticeItem.name}님의 메세지</div>
								<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
									<input class="btn btn-primary friendMessage" type="button" value="확인하러 가자">
								</div>
								
								<div class="mypageMessageContent">${otherNoticeItem.content}</div>
						</li>
					</c:when>
					<c:when test="${otherNoticeItem.state eq '5'}">
						<li class="mypageLogStory">
							<div class="mypageProfile">
								<img class="mypageProfileImg" src='<c:url value="/tripbook/user/${otherNoticeItem.sender}/${otherNoticeItem.fileName}"/>'>
							</div>
							<div class="mypageMessage">${otherNoticeItem.name}님이 게시물에 댓글 작성했습니다.</div>
							<div id='${otherNoticeItem.noticeNo}' class="mypageButton">
								<input class="btn btn-primary friendReply" type="button" value="확인하러 가자">
							</div>
						</li>
					</c:when>
				</c:choose>
			</c:forEach>
		</ul>
	</div>
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		/* scroll 이벤트 */
		stroll.bind('ul');
		
		/* 알림 버튼 관련 이벤트 */
		$(function(){
			/* 친구 수락 */
			$('.mypageLogStory').on('click','.friendAccept',function(){
				$.ajax({
					url : "/controller/friends/accept",
					type : "post",
					data : 'noticeNo=' + $(this).parent().attr('id'),
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert('친구 신청 수락');
							location.href='/controller/mypage/list';
						}else{
							alert('친구 신청 수락 실패');
						}
					},
					error : function() {
						alert('error')
					}
				})
			})
			/* 친구 거절 */
			$('.mypageLogStory').on('click','.friendRefuse',function(){
				$.ajax({
					url : "/controller/friends/reject",
					type : "post",
					data : 'noticeNo=' + $(this).parent().attr('id'),
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert('친구 신청 거절');
							location.href='/controller/mypage/list';
						}else{
							alert('친구 신청 거절 실패');
						}
					},
					error : function() {
						alert('error')
					}
				})
			})
			/* 그룹 수락 */
			$('.mypageLogStory').on('click','.groupAccept',function(){
				$.ajax({
					url : "/controller/group/accept",
					type : "post",
					data : 'noticeNo=' + $(this).parent().attr('id'),
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert('그룹 신청 수락');
							location.href='/controller/mypage/list';
						}else{
							alert('그룹 신청 수락 실패');
						}
					},
					error : function() {
						alert('error')
					}
				})
			})
			/* 그룹 거절 */
			$('.mypageLogStory').on('click','.groupRefuse',function(){
				$.ajax({
					url : "/controller/group/reject",
					type : "post",
					data : 'noticeNo=' + $(this).parent().attr('id'),
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert('그룹 신청 거절');
							location.href='/controller/mypage/list';
						}else{
							alert('그룹 신청 거절 실패');
						}
					},
					error : function() {
						alert('error')
					}
				})
			})
			/* 관리자 메세지 */
			$('.mypageLogStory').on('click','.noticeItem',function(){
				alert($(this).parent().attr('id'));
			}) 
			/* 친구 게시물 알림 */
			$('.mypageLogStory').on('click','.friendBoard',function(){
				alert($(this).parent().attr('id'));
			})
			/* 친구 메세지 */
			$('.mypageLogStory').on('click','.friendMessage',function(){
				//alert($(this).parent().attr('id'));
				$(this).parent().siblings(".mypageMessageContent").slideToggle(500);
				
			})
			/* 친구 댓글 */
			$('.mypageLogStory').on('click','.friendReply',function(){
				alert($(this).parent().attr('id'));
			})
			
			
		})
		
		
	</script>
</body>
</html>