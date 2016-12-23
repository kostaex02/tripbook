<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>

<link
	href='<c:url value="/resources/js/calendar/lib/cupertino/jquery-ui.min.css"/>'
	rel='stylesheet' />

<!-- 하트 효과 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main/heart.css"/>" />
<!-- datetimepicker -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap/bootstrap-datetimepicker.css"/>" />

</head>
<body>
	<div class='mainAllBoard'>
		<div class='mainScrollHidden'>
			<ul class="grow">
				<c:choose>
					<c:when test="${boardList==null||boardList.size()==0 }">
						입력된 내용이 없습니다.
					</c:when>
					<c:otherwise>
						<c:forEach items="${boardList}" var="item" varStatus="boardNum">
							<li>
								<div class='mainRecentBoard'>
									<div class='profile'>
										<img class='writerProfileImage'
											src='<c:url value="/tripbook/user/${item.user.id }/${item.user.fileName}"/>'>
										<b>${item.writer }</b> ${item.writeDate }
									</div>
									<div class="boardContent">${item.content }</div>
										<c:if test="${item.boardPictures.size() != 0}">
											<div class='picture'>
												<input class='detailViewPictures'type='hidden' value="${item.boardNo}">
												<c:forEach items="${item.boardPictures }" var="boardPicture" varStatus="pictureNum">
													<c:choose>
														<c:when test="${pictureNum.count < 5}">
															<span class='pictureDiv'>
																<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' />
																</a>
															</span>
														</c:when>
														<c:when test="${pictureNum.count eq 5}">
															<span>
															<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' style="position:absolute;opacity:0.4;"/>
															</a>
															<span style='padding-left:20px;'>+${item.boardPictures.size() - 5}장</span>
															</span>
														</c:when>
														<c:otherwise>
																
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</c:if>
									<hr>
									<div class="boardFooter">
										<div class="heart" id="like" rel="like"></div>
										<div class="likeCount" id="likeCount">${item.likeCount }</div>
										<div class='replysCount'>댓글 ${item.replys.size() }개</div>
										<div class="replyArea">
											<input type="hidden" name='id' value="${item.boardNo }">
											<input type='text' class='replyText' name='reply' placeholder="댓글을 입력하세요" size="30px">
											<input type='button' value='입력' class="replyButton">
											
											<c:forEach items="${item.replys}" var="boardReply" varStatus="replyState">
												<div>작성자 사진 / <img src='<c:url value="/tripbook/user/${boardReply.user.id}/${boardReply.user.fileName}"/>'></div>
												<div>작성자 이름 / ${boardReply.user.name }</div>
												<div>리플 내용 / ${boardReply.content }</div>
												<div>작성시간 / ${boardReply.writerDate }</div>
												<hr>
											</c:forEach>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
<script>
	/* 리플 슬라이드 효과 */
	
	$(".replysCount").mousedown(function() {
		$('.replyArea').slideUp(500);
		$(this).next().slideToggle(500);
	});
</script>
</body>
</html>