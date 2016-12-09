<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TripBook</title>

<!-- Bootstrap core CSS -->
<link href='<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>'
	rel='stylesheet' />
<link href='<c:url value="/resources/css/index/normalize.css"/>'
	rel='stylesheet' />
<link href='<c:url value="/resources/css/index/demo.css"/>'
	rel='stylesheet' />
<link href='<c:url value="/resources/css/index/component.css"/>'
	rel='stylesheet' />

<!--[if IE]>  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
</head>
<style>
.container {
	margin-right: 0;
	margin-left: 0;
	padding-left: 0;
	padding-right: 0;
	width: 100%;
}

.title {
	margin-top: -100px;
}

.content {
	margin-top: 0px;
	margin-bottom: 0px;
}

#mainForm {
	display: none;
	margin-top: 50px;
}

.file-upload {
	display: none;
}
</style>
<body>
	<div id="container" class="container intro-effect-fadeout">
		<header class="header">
			<div class="bg-img">
				<img src='<c:url value="/images/1.jpg"/>' alt="Background Image" />
			</div>
			<div class="title">

				<h1>TripBook</h1>
				<p class="subline">By Team 너나들이
				<form class="form-horizontal" method="post" action='<c:url value="/login"/>'
					id="mainForm">
					<div class="form-login" id="content1">
						<label for="inputEmail3" class="col-sm-8 control-label">Email</label>
						<div class="col-sm-4">
							<input type="email" class="form-control" name="id"
								placeholder="Email">
						</div>
					</div>
					<div class="form-login">
						<label for="inputPassword3" class="col-sm-8 control-label">Password</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="password"
								placeholder="Password">
						</div>
					</div>
					<div class="form-login">
						<div class="col-sm-offset-8 col-sm-4">
							<button type="submit" class="btn btn-default">로그인</button>
							<br> <br>
						</div>
					</div>
					<div class="form-login">
						<div class="col-sm-offset-6 col-sm-6">
							<a href="#registerModal" data-toggle="modal">회원가입</a> / <a
								href="#">아이디 찾기</a> / <a href="#">비밀번호 찾기</a>
						</div>
					</div>

				</form>
				</p>
			</div>
		</header>
		<button class="trigger">
			<span>Trigger</span>
		</button>
		<article class="content">
		</article>
		
		<!-- Modal -->
		<div class="modal fade" id="registerModal" role="dialog">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">회원가입</h4>
					</div>
					<form id="registerForm" action="<c:url value="/register"/>" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
						<div class="modal-body">
							<div id="inputId" class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_id20.png"/>'></i></span> 
										<input id="email" type="email"
									class="form-control" name="id"
									placeholder="Email"> 
									<span id="checkingID" aria-hidden="true"></span>

							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_password20.png"/>'></i></span> <input
									id="password" type="password" class="form-control"
									name="password" placeholder="Password">
							</div>
							<br>
							<div id="inputPasswordCheck" class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_passwordCheck20.png"/>'></i></span>
								<input id="passwordCheck" type="password" class="form-control"
									name="passwordCheck" placeholder="Password check">
									<span id="checkingPasswordCheck" aria-hidden="true"></span>
							</div>
							<br>
							<div id="inputName" class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_user20.png"/>'></i></span> <input
									id="name" type="text" class="form-control" name="name"
									placeholder="이름">
									<span id="checkingName" aria-hidden="true"></span>
							</div>
							<br>
							<div id="inputAge" class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_birth20.png"/>'></i></span> <input
									id="age" type="number" class="form-control" name="age"
									placeholder="나이">
									<span id="checkingAge" aria-hidden="true"></span>
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon/icon_birth20.png"/>'></i></span> <input
									type="radio" name="gender" value="0" checked="checked">남자
								<input type="radio" name="gender" value="1">여자
							</div>
							<br>
							<div class="input-group">
								
								<input id="picture" type="text" class="form-control"
									value="사진선택" disabled>
								<div class="input-group-btn">
									<button class="btn btn-default" type="button"
										id="buttonLoadPicture">
										<i><img src='<c:url value="/images/icon/icon_picture20.png"/>'></i>
									</button>
								</div>
								<input id=file-upload name="file" class="file-upload" type="file" accept="image/*" style="display:none">
								
							</div>
						
						<div class="modal-footer">
							<input type="submit" class="btn btn-primary" value="가입">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



	<!-- /container -->
	<!-- Bootstrap load -->
	<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
	<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>'></script>

	<!-- Event 효과 -->
	<script src='<c:url value="/resources/js/index/classie.js"/>'></script>

	<script>
		(function() {

			// detect if IE : from http://stackoverflow.com/a/16657946		
			var ie = (function() {
				var undef, rv = -1; // Return value assumes failure.
				var ua = window.navigator.userAgent;
				var msie = ua.indexOf('MSIE ');
				var trident = ua.indexOf('Trident/');

				if (msie > 0) {
					// IE 10 or older => return version number
					rv = parseInt(
							ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
				} else if (trident > 0) {
					// IE 11 (or newer) => return version number
					var rvNum = ua.indexOf('rv:');
					rv = parseInt(ua.substring(rvNum + 3, ua
							.indexOf('.', rvNum)), 10);
				}

				return ((rv > -1) ? rv : undef);
			}());

			// disable/enable scroll (mousewheel and keys) from http://stackoverflow.com/a/4770179					
			// left: 37, up: 38, right: 39, down: 40,
			// spacebar: 32, pageup: 33, pagedown: 34, end: 35, home: 36
			var keys = [ 32, 37, 38, 39, 40 ], wheelIter = 0;

			function preventDefault(e) {
				e = e || window.event;
				if (e.preventDefault)
					e.preventDefault();
				e.returnValue = false;
			}

			function keydown(e) {
				for (var i = keys.length; i--;) {
					if (e.keyCode === keys[i]) {
						preventDefault(e);
						return;
					}
				}
			}

			function touchmove(e) {
				preventDefault(e);
			}

			function wheel(e) {
				// for IE 
				//if( ie ) {
				//preventDefault(e);
				//}
			}

			function disable_scroll() {
				window.onmousewheel = document.onmousewheel = wheel;
				document.onkeydown = keydown;
				document.body.ontouchmove = touchmove;
			}

			function enable_scroll() {
				window.onmousewheel = document.onmousewheel = document.onkeydown = document.body.ontouchmove = null;
			}

			var docElem = window.document.documentElement, scrollVal, isRevealed, noscroll, isAnimating, container = document
					.getElementById('container'), trigger = container
					.querySelector('button.trigger');

			function scrollY() {
				return window.pageYOffset || docElem.scrollTop;
			}

			function scrollPage() {
				scrollVal = scrollY();

				if (noscroll && !ie) {
					if (scrollVal < 0)
						return false;
					// keep it that way
					window.scrollTo(0, 0);
				}

				if (classie.has(container, 'notrans')) {
					classie.remove(container, 'notrans');
					return false;
				}

				if (isAnimating) {
					return false;
				}

				if (scrollVal <= 0 && isRevealed) {
					toggle(0);
				} else if (scrollVal > 0 && !isRevealed) {
					toggle(1);
				}
			}

			function toggle(reveal) {
				isAnimating = true;

				if (reveal) {
					classie.add(container, 'modify');
					document.getElementById("mainForm").style.display = "block";
				} else {
					document.getElementById("mainForm").style.display = "none";
					noscroll = true;
					disable_scroll();
					classie.remove(container, 'modify');
				}

				// simulating the end of the transition:
				setTimeout(function() {
					isRevealed = !isRevealed;
					isAnimating = false;
					if (reveal) {
						noscroll = false;
						enable_scroll();
					}
				}, 600);
			}

			// refreshing the page...
			var pageScroll = scrollY();
			noscroll = pageScroll === 0;

			disable_scroll();

			if (pageScroll) {
				isRevealed = true;
				classie.add(container, 'notrans');
				classie.add(container, 'modify');
			}

			window.addEventListener('scroll', scrollPage);
			trigger.addEventListener('click', function() {
				toggle('reveal');
			});
		})();

		$(function() {
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

			$('#email').keyup(function() {
				if($(this).val()==""){
					$('#inputId').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$('#checkingID').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback');
				}else{
				$.ajax({
					url : "/controller/checkId",
					type : "post",
					data : 'userId=' + $(this).val(),
					dataType : "text",
					success : function(data) {
						if (data > 0) {
							$('#inputId').removeClass('has-success has-feedback').addClass('has-error has-feedback');
							$('#checkingID').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback');
						}else{
							$('#inputId').removeClass('has-error has-feedback').addClass('has-success has-feedback');
							$('#checkingID').removeClass('glyphicon glyphicon-remove form-control-feedback').addClass('glyphicon glyphicon-ok form-control-feedback');
						}
					},
					error : function() {
						alert('error')
					}
				})
				}
			});
			
			$('#passwordCheck').keyup(function() {
				if ($(this).val() == $('#password').val() && $(this).val()!="") {
					$('#inputPasswordCheck').removeClass('has-error has-feedback').addClass('has-success has-feedback');
					$('#checkingPasswordCheck').removeClass('glyphicon glyphicon-remove form-control-feedback').addClass('glyphicon glyphicon-ok form-control-feedback');				
				}else{
					$('#inputPasswordCheck').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$('#checkingPasswordCheck').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback');
				}
			});
			
			$('#name').keyup(function(){
				if($(this).val() == ""){
					$('#inputName').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$('#checkingName').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback');
				}else{
					$('#inputName').removeClass('has-error has-feedback').addClass('has-success has-feedback');
					$('#checkingName').removeClass('glyphicon glyphicon-remove form-control-feedback').addClass('glyphicon glyphicon-ok form-control-feedback');	
				}
			})
			
			$('#age').keyup(function(){
				if($(this).val() == ""){
					$('#inputAge').removeClass('has-success has-feedback').addClass('has-error has-feedback');
					$('#checkingAge').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('glyphicon glyphicon-remove form-control-feedback');
				}else{
					$('#inputAge').removeClass('has-error has-feedback').addClass('has-success has-feedback');
					$('#checkingAge').removeClass('glyphicon glyphicon-remove form-control-feedback').addClass('glyphicon glyphicon-ok form-control-feedback');	
				}
			})
			
			
		})
		
		function validateForm(){
 			/* var id = document.forms["registerForm"]["id"].value;
			var password = document.forms["registerForm"]["password"].value;
			var passwordCheck = document.forms["registerForm"]["passwordCheck"].value;
			 */
			 if($("span").hasClass("glyphicon-remove")){
				return false;		
			}
		}
	</script>

</body>
</html>