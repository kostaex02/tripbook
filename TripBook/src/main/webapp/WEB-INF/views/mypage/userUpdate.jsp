<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>'
	rel='stylesheet' />

<title>Insert title here</title>
</head>
<body>
<div class="modal-header">
	<h4 class="modal-title">회원 정보 수정</h4>
</div>
<form action="<c:url value="/mypage/update"/>" method="post" enctype="multipart/form-data">
			<div id="inputId" class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_id20.png"/>'></i></span><input
					id="id" type="text" class="form-control" name="id"
					value="${user.id}" disabled> 

			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_password20.png"/>'></i></span> <input
					id="password" type="password" class="form-control"
					name="password" placeholder="Password">
			</div>
			<br>
			<div id="inputPasswordCheck" class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_passwordCheck20.png"/>'></i></span>
				<input id="passwordCheck" type="password" class="form-control"
					name="passwordCheck" placeholder="Password check">
					<span id="checkingPasswordCheck" aria-hidden="true"></span>
			</div> 
			<br>
			<div class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_user20.png"/>'></i></span> <input
					id="name" type="text" class="form-control" name="name"
					value="${user.name}">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_birth20.png"/>'></i></span> <input
					id="age" type="number" class="form-control" name="age"
					value="${user.age}">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"> <i><img
						src='<c:url value="/images/icon_birth20.png"/>'></i></span> 
				<c:choose>
					<c:when test="${user.gender eq 0}">		
						<input type="radio" name="gender" value="0" checked="checked">남자
						<input type="radio" name="gender" value="1">여자
					</c:when>
					<c:otherwise>
						<input type="radio" name="gender" value="0">남자
						<input type="radio" name="gender" value="1" checked="checked">여자
					</c:otherwise>
				</c:choose>
			</div>
			<br>
			<div class="input-group">
				<input id="picture" type="text" class="form-control"
					value="${user.fileName}" disabled>
				<div class="input-group-btn">
					<button class="btn btn-default" type="button"
						id="buttonLoadPicture">
						<i><img src='<c:url value="/images/icon_picture20.png"/>'></i>
					</button>
				</div>
				<input id=file-upload name="file" class="file-upload" type="file" accept="image/*" style="display:none">
				
			</div>
		
		<div class="modal-footer">
			<input type="submit" class="btn btn-primary" value="수정하기">
			<a href="<c:url value="/mypage/delete"/>" class="btn btn-primary">탈퇴하기</a>
			<a href="<c:url value="/mypage/mypage"/>" class="btn btn-default">이전</a>
		</div>
	</form>
</body>

<!-- bootstrap -->
<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>'></script>


<script>
$(function(){

	$(".input-group #file-upload").on('change', function(){
		 if(window.FileReader){  // modern browser
	     var filename = $(this)[0].files[0].name;
	   } 
	   else {  // old IE
	     var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
	   }
	   // 추출한 파일명 삽입
	   $(".input-group #picture").val(filename);
	});
	
	$("#buttonLoadPicture").click(function() {
		$(".file-upload").click();
	});
	
	$('#passwordCheck').keyup(function() {
		if ($(this).val() == $('#password').val()) {
			console.log("첵첵 성공");
			$('#inputPasswordCheck').removeClass('has-error has-feedback').addClass('has-success has-feedback');
			$('#checkingPasswordCheck').removeClass('glyphicon glyphicon-remove form-control-feedback').addClass('glyphicon glyphicon-ok form-control-feedback')			
		}else{
			console.log("첵첵 실패");
			$('#inputPasswordCheck').removeClass('has-success has-feedback').addClass('has-error has-feedback');
			$('#checkingPasswordCheck').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback')
		}
	});

})


</script>

</html>