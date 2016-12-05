<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
	#mainNewBoard{
		border:1px solid black;
		text-align: center;
		margin: 10px 0px;
	}
	
	#mainRecentBoard{
		border:5px dashed grey;
		margin: 10px 0px;
	}
	
	#replys{
		border:3px solid pink;
	}
	
	#mainRecentBoard > *{
		margin:10px;
	}
	
	a{
		text-decoration: none;
	}
	
	.profile{
		border:1px solid blue;
		position:relative;
		float:left;
	}
	
	.picture{
		border:1px solid red;
		height:100px;
	}

</style>

<link rel="stylesheet" href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet" href='<c:url value="/resources/css/main/stroll.css"/>'>



</head>
<body>
<div id='mainNewBoard'>
	게시글 작성 영역
	<%-- <c:import url="../main/newGeneralBoard.jsp"/> --%>
	<hr>
	
	<input type='button' value='일반게시물'>
	<input type='button' value='여행게시물' onclick="location.href='newGeneralBoard'">
</div>
<hr>
<div id='mainAllBoard'>
	<ul class="grow">
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
		<li>
			<div id='mainRecentBoard'>
				<p>
					<div class='profile'>미니 프로필 사진</div>
					<b>User ID</b> 12월 03일 오전 11:41
				</p>
					<div class='picture'>
					여기는 사진 영역
					</div>
				<div id='replys'>
					댓글 영역<br>
					<div class='profile'>미니 프로필 사진</div><b>User ID</b> 12월 03일 오전 11:41<br>
					-> 나도 놀러갈래!
				</div>
				<div>
					<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
				</div>
			</div>
		</li>
	</ul>
</div>	
<!-- Modal -->
  <div class="modal fade" id="image" role="dialog" tabindex='-1' >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">information</h4>
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Ok</button>
        </div>
      </div>
      
    </div>
  </div>
	
	
<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>	
<script>
	stroll.bind( '#mainAllBoard ul' );
	/* $(function(){
		$('#image').modal({
			backdrop: 'static',
			keyboard: false
		});		
	}) */
</script>
</body>
</html>