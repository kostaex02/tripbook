<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
	.mainNewBoard{
		border:1px solid black;
		text-align: center;
		margin: 10px 0px;
	}
	.grow{
		-ms-overflow-style: none;
	}
	
	.mainRecentBoard{
		border:5px dashed grey;
		margin: 10px 0px;
	}
	
	.replys{
		border:3px solid pink;
	}
	
	.mainRecentBoard > *{
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
	
	<input type='button' value='일반게시물' onclick="location.href='<c:url value="/main/newGeneralBoard"/>'">
	
	<input type='button' value='여행게시물'>
</div>
<hr>
<div class='mainAllBoard'>
	<div class='mainScrollHidden'>
		<ul class="grow">
			<li>
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
				<div class='mainRecentBoard'>
					<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
					</p>
						<div class='picture'>
						<a href="#" data-toggle="modal" data-target="#image"><img src='<c:url value="/images/img.jpg"/>' style="width:100px"></a>
						</div>
					<div class='replys'>
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
        	<a href="#detailPicture" data-toggle="modal" data-keyboard="true"><img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Cinque Terre" width="260" height="200"></a>
          	<a href="#detailPicture" data-toggle="modal"><img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Cinque Terre" width="260" height="200"></a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Ok</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <!-- Modal -->
  <div class="modal fade" id="detailPicture" role="dialog" tabindex='-1'>
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">detail information</h4>
        </div>
        <div class="modal-body">
        	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
    		<!-- Indicators -->
    			<ol class="carousel-indicators">
      				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    				<li data-target="#myCarousel" data-slide-to="1"></li>
      				<li data-target="#myCarousel" data-slide-to="2"></li>
      				<li data-target="#myCarousel" data-slide-to="3"></li>
    			</ol>

   			<!-- Wrapper for slides -->
    		<div class="carousel-inner" role="listbox">
      			<div class="item active">
        			<img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Chania">
      			</div>

      			<div class="item">
        			<img src='<c:url value="/images/img.jpg"/>' alt="Chania">
      			</div>
    
      			<div class="item">
        			<img src='<c:url value="/images/img.jpg"/>' alt="Flower">
      			</div>

      			<div class="item">
       				<img src='<c:url value="/images/img.jpg"/>' alt="Flower">
      			</div>
    		</div>

    		<!-- Left and right controls -->
    		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      			<span class="sr-only">Previous</span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      			<span class="sr-only">Next</span>
    		</a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Ok</button>
        </div>
      </div>
      
    </div>
  </div>
	
	
<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>	
	
<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>	
<script>
	
	stroll.bind( '.mainAllBoard ul' );
	/* $(function(){
		$('#image').modal({
			backdrop: 'static',
			keyboard: false
		});		
	}) */
	
</script>
</body>
</html>