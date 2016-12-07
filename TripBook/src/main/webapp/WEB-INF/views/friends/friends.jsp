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
.friendsList {
	margin-top: 20px;
}

.friendsProfile {
	width: 100%;
	display: inline-table;
}

.friendsPicture {
	display: table-cell;
	width: 70px;
}

.friendsNameId {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 70%;
}

.friendPictureImg {
	width: 70px;
	height: 70px;
	position: relative;
	float: left;
}

.friendsButton{
	display: table-cell;
	vertical-align: middle;
}

 /* 그룹 modal */
	.modal-header{
		background-color: #FAEBD7;
		vertical-align: middle;
		margin-bottom: 10px;
	}
	.modal-body{
		margin-left: 0;
		margin-right: 0;
		padding-left: 0;
		padding-right: 0;
		width: 100%;
	}
	.friendsNameDivOfGroup{
		padding-left:30px;
	}
	.friendsGroupListBind{
		height: 160px;
		width: 110%;
		overflow: auto;
		text-indent: 10px;
	}
	.friendsGroupList{
		height: 160px;
		width: 100%;
		overflow: hidden;
	}
	.friendsGroupMember > input{
		display:none;
	}

</style>
</head>
<body>
	<div class="friendsList">
		<ul class="grow">
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
			<li class="friendsProfile">
				<div class="friendsPicture">
					<img class="friendPictureImg" src='<c:url value="/images/img.jpg"/>'>
				</div>
				<div class="friendsNameId">김태희 <br> id는 히든<br></div>
				<div class="friendsButton">
					<input type="submit" value="message">
				</div>
			</li>
		</ul>
	</div>
	
	<!-- 그룹생성에 따른 Modal -->
	<div class="friendsGroupContainer">
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
         그룹추가
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
        	<div class="friendsNameDivOfGroup">
	        	<h2>그룹만들기</h2><br><br>
	        	<input type="text" class="nameOfGroup" size="75" >
	        	<br><br><br>
	        	<h4>멤버추가</h4>
	        </div>	
	        <div class="friendsGroupList">
	        	<div class="friendsGroupListBind" >
		         	<div id="friend1" class="friendsGroupMember" >
		         		<div>이미지 영역</div>  친구1 / 누구니 <input type="checkbox" value="1" />
		         	</div>
		         	<div id="friend2" class="friendsGroupMember" >
		         		<div>이미지 영역</div>  친구2 / 누구니 <input type="checkbox"  value="2" />
		         	</div>
		         	<div id="friend3" class="friendsGroupMember" >
		         		<div>이미지 영역</div>  친구3 / 누구니 <input type="checkbox" value="3" />
		         	</div>
		         	<div id="friend4" class="friendsGroupMember" >
		         		<div>이미지 영역</div>  친구4 / 누구니 <input type="checkbox" value="4" />
		         	</div>
	         	</div>
         	</div> 	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="submit" >등록</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
  </div>
	<script type="text/javascript">
	$(function() {
		$('.friendsGroupMember').click(function() {
			//체크 박스 셀렉터 지정				
			checkbox = $(this).children().last();
			//check박스 토글
			$(checkbox).prop('checked', function() {
				return !$(checkbox).prop('checked');
			});
			//check박스에 따라 div의 css변경
			if ($(checkbox).prop("checked")) {
				$(this).css("background-color", "#ffffb9");									
			} else {
				$(this).css("background-color", "#ffffff");	
			}
		})
		$('#submit').click(function() {
			var str = "";
			str = $(".nameOfGroup").val();
			$(".friendsGroupMember > :checkbox:checked").each(function(pi, po) {
				str += po.value+" / ";
			});
			alert(str)
		})
	})
	</script>
	
	
	
	
	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		stroll.bind('ul');
	</script>
</body>
</html>