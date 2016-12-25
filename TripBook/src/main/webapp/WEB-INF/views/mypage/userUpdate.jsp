<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>TripBook</title>
</head>
<style>
.input-group{
	width:100%;
}
.input-register{
    border: none;
    border-bottom: 2px solid #546E7A;
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding-left: 40px;
    align:center;
}
.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}
.file-upload {
	display: none;
}
.input-group-addon{
	padding: 0px;
}
.modal-body div{
	margin-bottom: 10px;
}
.modal-footer{
	margin-top:-20px;
}
</style>
<body>
<div class="modal-header">
	<h4 class="modal-title">회원 정보 수정</h4>
</div>
<div class="modal-body">
<form action="<c:url value="/mypage/update"/>" method="post" enctype="multipart/form-data">
			<div id="inputId" class="input-group">
				<input id="id" type="email" class="form-control input-register" name="id"
					placeholder="Email" value="${user.id}" style="background-image: url('<c:url value="/images/icon/icon_id20.png"/>')" disabled> 
			</div>
			<div id="inputPassword" class="input-group">
								<input id="password" type="password" class="form-control input-register"
									name="password" placeholder="Password" style="background-image: url('<c:url value="/images/icon/icon_password20.png"/>')">
			</div>
			<div id="inputPasswordCheck" class="input-group">
				<input id="passwordCheck" type="password" class="form-control input-register"
				 name="passwordCheck" placeholder="Password check" style="background-image: url('<c:url value="/images/icon/icon_passwordCheck20.png"/>')">
				<span id="checkingPasswordCheck" aria-hidden="true"></span>
			</div>
			<div id="inputName" class="input-group">
				<input id="name" type="text" class="form-control input-register" name="name"
				placeholder="이름" value="${user.name}" style="background-image: url('<c:url value="/images/icon/icon_user20.png"/>')">
			</div>
			<div id="inputAge" class="input-group">
				<input id="age" type="number" class="form-control input-register" name="age"
				placeholder="나이" value="${user.age}"  style="background-image: url('<c:url value="/images/icon/icon_birth20.png"/>')">
			</div>
			<div>
				<div class="btn-group btn-group-justified" data-toggle="buttons">
					<c:choose>
						<c:when test="${user.gender eq 0}">
							<label class="btn btn-default active">
								<input type="radio" name="gender" autocomplete="off" value="0" checked ><img src='<c:url value="/images/icon/male_24.png"/>'>
								<span class="glyphicon glyphicon-ok"></span>
							</label>
							<label class="btn btn-default">
								<input type="radio" name="gender" autocomplete="off" value="1"><img src='<c:url value="/images/icon/female_24.png"/>'>
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</c:when>
						<c:otherwise>
							<label class="btn btn-default active">
								<input type="radio" name="gender" autocomplete="off" value="0"  ><img src='<c:url value="/images/icon/male_24.png"/>'>
								<span class="glyphicon glyphicon-ok"></span>
							</label>
							<label class="btn btn-default">
								<input type="radio" name="gender" autocomplete="off" value="1" checked><img src='<c:url value="/images/icon/female_24.png"/>'>
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</c:otherwise>
					</c:choose>
				</div>	
			</div>
			<div class="input-group">
				<input id="picture" type="text" class="form-control" value="${user.fileName}" name="fileName" disabled>
				<span class="input-group-addon">
					<button class="btn btn-default" type="button" id="buttonLoadPicture">
						<img src='<c:url value="/images/icon/icon_picture20.png"/>'>
					</button>
				</span>
				<input id=file-upload name="file" class="file-upload" type="file" accept="image/*" style="display:none">
			</div>
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