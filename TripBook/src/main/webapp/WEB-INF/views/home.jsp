<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inspiration for Article Intro Effects | Demo 2</title>
<meta name="description" content="Inspiration for Article Intro Effects" />
<meta name="keywords"
	content="title, header, effect, scroll, inspiration, medium, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
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
</style>
<body class="demo-2">
	<div id="container" class="container intro-effect-fadeout">
		<header class="header">
			<div class="bg-img">
				<img src='<c:url value="/images/1.jpg"/>' alt="Background Image" />
			</div>
			<div class="title">

				<h1>TripBook</h1>
				<p class="subline">By Team 너나들이
				<form class="form-horizontal" method="post" action="login"
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
							<br>
							<br>
						</div>
					</div>
					<div class="form-login">
						<div class="col-sm-offset-6 col-sm-6">
							<a href="#registerForm" data-toggle="modal">회원가입</a> / <a
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
		<article class="content"></article>
		<section class="related">
			<a href='main/main'>main</a>
			<p>
				<a href="mypage/mypage">mypage</a>
			<p>
				<a href='calendar/calendar'>calendar</a>
			<p>
				<a href='friends/friends'>friends</a>
			<p>
		</section>

		<!-- Modal -->
		<div class="modal fade" id="registerForm" role="dialog">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">회원가입</h4>
					</div>
					<form action="register" method="post">
					<div class="modal-body">
							<div class="input-group has-success has-feedback">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_id20.png"/>'></i></span> <input
									id="email" type="text"
									class="form-control has-success has-feedback" name="id"
									placeholder="Email"> <span
									class="form-control-feedback"> <img
									src='<c:url value="/images/icon_ok16.png"/>'>
								</span>
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_password20.png"/>'></i></span> <input
									id="password" type="password" class="form-control"
									name="password" placeholder="Password">
							</div>
							<br>
							<div class="input-group has-error has-feedback">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_passwordCheck20.png"/>'></i></span>
								<input id="passwordCheck" type="password" class="form-control"
									name="passwordCheck" placeholder="Password check"> <span
									class="form-control-feedback"> <img
									src='<c:url value="/images/icon_fail16.png"/>'>
								</span>
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_user20.png"/>'></i></span> <input
									id="name" type="text" class="form-control" name="name"
									placeholder="이름">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_birth20.png"/>'></i></span> <input
									id="age" type="text" class="form-control" name="age"
									placeholder="나이">
							</div>
							<br>
							<br>
							<div class="input-group">
								<span class="input-group-addon"> <i><img
										src='<c:url value="/images/icon_birth20.png"/>'></i></span> 
								<input type="radio" name="gender" value="0" checked="checked">남자
								<input type="radio" name="gender" value="1">여자
							</div>
							<br>
							<div class="input-group">
								<input id="picture" type="text" class="form-control"
									name="fileName" placeholder="사진" disabled>
								<div class="input-group-btn">
									<button class="btn btn-default" type="button"
										id="buttonLoadPicture">
										<i><img src='<c:url value="/images/icon_picture20.png"/>'></i>
									</button>
								</div>
							</div>

					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="가입"></button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
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
			
			$("#buttonLoadPicture").click(function() {
				alert("1");
			});
			$('#email').keyup(function(){
				$.ajax({
					url : "checkId",
					type : "post",
					data : 'userId=' + $(this).val(),
					dataType : "text",
					success : function(data) {
						if(data>0){
							alert('존재하는 아이디');
						}
					},
					error : function() {
						alert('error')
					}
				})
			});
			$('#passwordCheck').keyup(function(){
				if($(this).val()==$('#password').val()){
					alert('비밀번호 동일')
				}
			})
		})
	</script>

</body>
</html>