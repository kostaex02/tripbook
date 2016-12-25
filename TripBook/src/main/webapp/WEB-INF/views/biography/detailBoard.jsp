<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
.mainNewBoard {
	border: 1px solid black;
	text-align: center;
	margin: 10px 0px;
}

.grow {
	-ms-overflow-style: none;
}


.mainRecentBoard {
	margin: 10px 0px;
}

.replys {
	border: 3px solid pink;
}

.mainRecentBoard>* {
	margin: 10px;
}

a {
	text-decoration: none;
}

.profile {
	position: relative;
	border-radius: 10px;
}

.picture {
	height: auto;
	min-height: 100px;
	width:100%;
	margin:auto;
	text-align: center;
}

.picture span{
	font-size:30px;
	line-height: 2;
	
}

.picture div{
	width:100px;
	height:100px;
	float:left;
}

.mainScrollHidden{
	width: 70%;
}

.mainScrollHidden li {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	border-radius: 10px;
	height: auto;
}

.newBoardContainer {
	width: 100%;
	display: inline-table;
}

.newBoardPicture {
	display: inline-table;
}

.newBoardPictureImg {
	width: 60px;
	height: 60px;
	margin: 10px;
	display: inline-table;
}

.newBoardTitle {
	vertical-align: middle;
	display: inline-block;
	width: 100%;
}

.newBoardTitle input[type="text"] {
	width: 100%;
	border: none;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.newBoardTitle label {
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.mainAllBoard {
	height: 500px;
	width:100%;
	overflow: hidden;
}

.newBoardSelect {
	display: inline-block;
	color: #999;
	font-size: inherit;
	line-height: normal;
	background-color: #fdfdfd;
	width: 100%;
}

.newBoardMultiList {
	height: auto;
	width: 100%;
	display: inline-block;
	margin-bottom: 20px;
}

hr {
	margin-top: 0px;
	visibility: hidden;
}

/* 구글 지도 관련 CSS */
.controls {
	margin-top: 10px;
	border: 1px solid transparent;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 32px;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

.pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

.pac-input:focus {
	border-color: #4d90fe;
}

.pac-container {
	font-family: Roboto;
	background-color: #FFF;
	z-index: 20;
	position: fixed;
	display: inline-block;
	float: left;
}

#type-selector {
	color: #fff;
	background-color: #4d90fe;
	padding: 5px 11px 0px 11px;
}

#type-selector label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}

#target {
	width: 345px;
}

/* 다음지도 CSS */
.menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	margin: 10px 30px 0 10px;
	padding: 5px;
	width: 200px;
	height: 30px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.5);
	z-index: 2;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

.menu_wrap .option {
	text-align: center;
}

.menu_wrap .option p {
	margin: 10px 0;
}

.menu_wrap .option button {
	margin-left: 5px;
}

/* 모달 CSS */
.modal-content {
	background: #00AAC1;
}

.modal-body {
	background: white;
}

.modal-footer {
	padding-bottom: 0;
}

.userName {
	color: white;
}

.select {
	width: 100px;
	height: 25px;
}

.text-resize {
	resize: none;
}

.modal {
	z-index: 20;
}

.modal-backdrop {
	z-index: 10;
}

.likeCount, .heart {
	float: left;
	top: -15px;
	z-index:9;
	margin-right: 10px;
}

.MultiFile-title {
	display: none;
}

.MultiFile-preview {
	float: left;
}

.MultiFile-remove {
	float: left;
}

.modal-header {
	height: 100px;
}

.newBoardPicture {
	float: left;
	margin-top: -10px;
}

.form-group {
	margin-top: 20px;
}

.newBoardMap {
	float: left;
}

.writerProfileImage {
	width: 60px;
	height: 60px;
	border-radius: 100%;
}

.boardPicture {
	width: 100%;
	height: 100px;
	max-width: 100px;
	position: relative;
	
}

.replysCount {
	text-align: right;
}

.pictureDiv{
	width:310px;
	height:300px;
	margin:5px;
}
.boardFooter{
	margin-top:10px;
}
.replyArea{
	display: none;
}
.replyText{
	width:85%
}
.main-submit{
	text-align:right;
}
.main-schedule{
	color:black;
}
.mainboardMap{
	float:right;
}
.map img {
	max-width: none;
	height: auto;
	border: 0
}
.mapArea{
	position:fixed;
	left:75%;
	top:35px;

	 border:1px black solid; 
	 width:23%;
	 height:250px
}
.mapSwitch{
	position: fixed;
	left: 85%;
	top:6.5%;
	z-index: 5;
}
.jbText{
	width: 71%;
}
</style>


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
		<div class='mapArea'>
			<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		</div>
		<div class='mainScrollHidden'>
			<ul class="grow">
				<c:forEach items="${detailBiographyList}" var="item" varStatus="boardNum">
							<li>
								<div class='mainRecentBoard'>
									<div class='profile'>
										<img class='writerProfileImage'
											src='<c:url value="/tripbook/user/${item.user.id }/${item.user.fileName}"/>'>
										<b>${item.writer }</b> ${item.tripDate }
										
									</div>
									<div class="boardContent">${item.content }</div>
										<c:if test="${item.boardPictures.size() != 0}">
											<div class='picture'>
												<input class='detailViewPictures'type='hidden' value="${item.boardNo}">
												<input type="hidden" name="region" value=${item.location }>
												<input type="hidden" name="lat" value=${item.locationLat }>
												<input type="hidden" name="lng" value=${item.locationLng }>
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
			</ul>
		</div>
	</div>
	

	<!-- 게시판 사진 modal -->
	<div class="modal fade" id="detailPicture" role="dialog" tabindex='-1'>
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">detail information</h4>
				</div>
				<div class="modal-body">
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						data-interval="0">
						<!-- Indicators -->
						<ol class="carousel-indicators">
						
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
	<script src='<c:url value="/resources/js/main/jquery.form.js"/>'></script>
	<script
		src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>

	<!-- 달력 -->
	<script
		src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>

	<!-- date -->
	<script src='<c:url value="/resources/js/bootstrap/moment.js"/>'></script>
	<script
		src='<c:url value="/resources/js/bootstrap/bootstrap-datetimepicker.min.js"/>'></script>

	<script>
	
	/* 하트 효과 */
	$(document).ready(function(){
		$('body').on("click",'.heart',function(){
	    	var A=$(this).attr("id");
	    	var B=A.split("like");
	        var messageID=B[1];
	        var C=parseInt($("#likeCount"+messageID).html());
	    	$(this).css("background-position","")
	        var D=$(this).attr("rel");
	       
	        if(D === 'like'){
		        $("#likeCount"+messageID).html(C+1);
		        $(this).addClass("heartAnimation").attr("rel","unlike");
	        }else{
		        $("#likeCount"+messageID).html(C-1);
		        $(this).removeClass("heartAnimation").attr("rel","like");
		        $(this).css("background-position","left");
	        }
	    });
		
		 
	});
	
	
	
	//enter키 금지
	function captureReturnKey(e) { 
	    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
	    return false; 
	} 

	
	/* 스크롤 효과 */
	stroll.bind('.mainAllBoard ul');
	
		/* 타이틀 포커스 효과 */
		$(document)
				.ready(
						function() {
							var placeholderTarget = $('.newBoardTitle input[type="text"]');
							
							//포커스시
							placeholderTarget.on('focus', function() {
								$(this).siblings('label').fadeOut('fast');
							});

							//포커스아웃시
							placeholderTarget.on('focusout', function() {
								if ($(this).val() == '') {
									$(this).siblings('label').fadeIn('fast');
								}
							});
						});

		
		$(function() {
			
			// 시간.
			$('.datetimepicker').datetimepicker({
				sideBySide : true,
				ignoreReadonly: true
			}).attr('readonly','readonly');
			/* 멀티파일 설정 */
			$('#newGeneralBoardMulti').MultiFile({
					//max : 3, //업로드 최대 파일 갯수 (지정하지 않으면 무한대)
					accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
					//maxfile : 1024, //각 파일 최대 업로드 크기
					//maxsize : 3024, //전체 파일 최대 업로드 크기
					STRING : { //Multi-lingual support : 메시지 수정 가능
						remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
 						duplicate : "$file 은 이미 선택된 파일입니다.",
						denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
						selected : '$file 을 선택했습니다.',
					//toomuch : "업로드할 수 있는 최대크기를 초과하였습니다.($size)",
					//toomany : "업로드할 수 있는 최대 갯수는 $max개 입니다.",
					//toobig : "$file 은 크기가 매우 큽니다. (max $size)"
					},
					list : "#newGeneralBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
			
			$('#newEditTravelBoardMulti').MultiFile({
				accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
				STRING : { //Multi-lingual support : 메시지 수정 가능
					remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
					duplicate : "$file 은 이미 선택된 파일입니다.",
					denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
					selected : '$file 을 선택했습니다.',
				},
				list : "#newEditTravelBoardMultiList" //파일목록을 출력할 요소 지정가능
			});

			$('#newAddTravelBoardMulti').MultiFile({
				accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
				STRING : { //Multi-lingual support : 메시지 수정 가능
					remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
					duplicate : "$file 은 이미 선택된 파일입니다.",
					denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
					selected : '$file 을 선택했습니다.',
				},
				list : "#newAddTravelBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
			
			$('.newBoardUploadImg').click(function() {
				$('.groupMap').hide();		
				$('.newBoardMulti').show();
			});
			$('.newBoardMap').click(function(){
				$('.newBoardMulti').hide();
				$('.groupMap').show();	
			});
			
			$('.modal').on('hidden.bs.modal', function(){
			    $(this).find('form')[0].reset();
			});
			
			//여행게시물 달력 기능
			var dateFormat = "mm/dd/yy",
		      editFrom = $( "#fromDate1" ).datepicker({
		    	  defaultDate: "+1w",
		          changeMonth: true,
		          dateFormat: "yy/mm/dd"
		        })
		        .on( "change", function() {
		        	editTo.datepicker( "option", "minDate", getDate( this ) );
		        }),
		      editTo = $( "#toDate1" ).datepicker({
		    	  defaultDate: "+1w",
		          changeMonth: true,
		          dateFormat: "yy/mm/dd"
		      })
		      .on( "change", function() {
		    	  editFrom.datepicker( "option", "maxDate", getDate( this ) );
		    	});
		      	
		 
		    function getDate( element ) {
		      	var date = element.value;
		     	
		      	alert(date);
		      	return date;
		    }
		    
		    $.ajax({
		    	url : "/controller/calendar/init",
				type : "post",
				dataType : "json",
				success : function(data) {
					$('#chooseScheduleNo').val(data[0].scheduleNo);
					$('#fromDate2').val(data[0].startDate);
					$('#toDate2').val(data[0].endDate);
					$('#subject2').val(data[0].subject);
					$('#stateTravel').val(data[0].state);
					$.each(data, function(index, item) {
						$('#scheduleList').append('<option value="'+item.scheduleNo+'">'+item.subject+'</option>');
					});
				},
				error : function() {
					alert('error')
				}
		    })
		    
		    $('#addSchedule').on('change','#scheduleList',function(){
		    	$.ajax({
			    	url : "/controller/calendar/select",
					type : "post",
					data : "scheduleNo="+$('#scheduleList').val(),
					dataType : "json",
					success : function(data) {
						$('#chooseScheduleNo').val($('#scheduleList').val());
						$('#fromDate2').val(data.startDate);
						$('#toDate2').val(data.endDate);
						$('#subject2').val(data.subject);
						$('#stateTravel').val(data.state);
					},
					error : function() {
						alert('error');
					}
			    })
		    })
		  	//state값
			$('#state').on("change",function(){
				var state = $('#state').val();
				$('#stateEdit').val(state);
			});
		    
		    $('.replyButton').click(function(){
		    	if($(this).siblings('.replyText').val()==""){
		    		alert("댓글 내용을 입력하시오");	
		    	}else{
		    		$.ajax({
				    	url : "/controller/reply/insert",
						type : "post",
						data : "boardNo="+$(this).siblings('input').val()+"&content="+$(this).siblings('.replyText').val(),
						dataType : "json",
						success : function(data) {
							alert(data);
						},
						error : function() {
							alert('error');
						}
				    })	
		    	}
		    });
		})
		
		
	</script>
	<!-- google API Key -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7i1sbKKdVRfbilHi8obuYThFnE3P9ZA&libraries=places"
		async defer></script>
	<!-- daum API Key -->
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=0090a85072e4ede25e4ac7424b7f9d98&libraries=services"></script>

	<script>
	var map;
	searchMap();
	//위도 경도를 통해 지도 찾는 기능
	function searchMap(){
		var container, options;
		
		var allLocation = document.getElementsByName('region');
		var allLat = document.getElementsByName('lat');
		var allLng = document.getElementsByName('lng');
		
		var area = allLocation[0].value;
		var basicLat = allLat[0].value;
		var basicLng = allLng[0].value;
		
		if(area==0){
			
			container = document.getElementById('map');
			options = {
					center : new daum.maps.LatLng(basicLat, basicLng),
					level : 3
			}
			//지도 생성
			map = new daum.maps.Map(container, options);
			//마커 생성
			
			var markers=[];
			var marker;
			for(var i=0;i<allLat.length;i++){
				marker = new daum.maps.Marker({
					map : map,
					position : new daum.maps.LatLng(allLat[i].value, allLng[i].value)
				});
				//마커 입력
				marker.setMap(map);
				markers.push(marker);
					
			}
			
        	
		}else if(area==1){
			container = document.getElementById('map');
			alert(basicLat);
			alert(basicLng);
			var center = new google.maps.LatLng(basicLat,basicLng);
			options = {
					center: center,
					zoom : 16,
					mapTypeControl: false
			}
			map = new google.maps.Map(container, options);
			
			//마커 생성
			var markers = [];
			
			var marker;
			
			for(var i=0;i<allLat.length;i++){
				marker = new google.maps.Marker({
				    position: new google.maps.LatLng(allLat[i].value,allLng[i].value),
				    map: map
				  });
				//마커 입력
				markers.push(marker);
			}
		}
		
	}
	
	/* 리플 슬라이드 효과 */
	
	$(".replysCount").mousedown(function() {
		$('.replyArea').slideUp(500);
		$(this).next().slideToggle(500);
	});
	
	/* 게시물 사진 보기 */
	$(".boardPicture").click(function(){
		var pictureBoardNo = $(".detailViewPictures").val();
		$.ajax({
	    	url : "/controller/picture/detail",
			type : "post",
			data : "boardNo="+pictureBoardNo,
			dataType : "json",
			success : function(list) {
				var indexStr="";
				var pictureStr="";
				$.each(list,function(index,item){
					if(index==0){
						indexStr = indexStr + "<li data-target='#myCarousel' data-slide-to='"+index+"'class='active'></li>";
						pictureStr = pictureStr + "<div class='item active'><img src='<c:url value='/tripbook/board/"+pictureBoardNo+"/"+item.fileName+"'/>' alt='"+item.fileName+"'></div>";
					}else{
						indexStr = indexStr + "<li data-target='#myCarousel' data-slide-to='"+index+"'></li>";
						pictureStr = pictureStr + "<div class='item'><img src='<c:url value='/tripbook/board/"+pictureBoardNo+"/"+item.fileName+"'/>' alt='"+item.fileName+"'></div>";
					}
				});
				$(".carousel-indicators").empty();
				$(".carousel-indicators").append(indexStr);
				$(".carousel-inner").empty();
				$(".carousel-inner").append(pictureStr);
			},
			error : function() {
				alert('error');
			}
	    });
		
	});
	
	</script>
</body>
</html>