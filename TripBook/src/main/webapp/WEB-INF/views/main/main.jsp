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
	border: 5px dashed grey;
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
	border: 1px solid blue;
	position: relative;
	float: left;
}

.picture {
	border: 1px solid red;
	height: 100px;
}

.newGeneralBoardContainer {
	border: 1px solid;
	width: 100%;
	display: inline-table;
}

.newGeneralBoardPicture {
	display: inline-table;
}

.newGeneralBoardPictureImg {
	width: 60px;
	height: 60px;
	margin: 10px;
	display: inline-table;
}

.newGeneralBoardTitle {
	vertical-align: middle;
	display: inline-block;
	width: 80%;
}

.newGeneralBoardTitle input[type="text"] {
	width: 100%;
	border: none;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.newGeneralBoardTitle label {
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.newGeneralBoardUpload {
	border: 1px solid pink;
	width: 100%;
	display: inline-table;
}

.newGeneralBoardUploadImg {
	width: 64px;
	margin-left: 0px;
	border: 1px solid pink;
	display: inline-table;
	cursor: pointer;
	vertical-align: middle;
}

.newGeneralBoardMap {
	width: 64px;
	margin-left: 10px;
	display: inline-table;
}

.newGeneralBoardSelect {
	display: inline-block;
	color: #999;
	font-size: inherit;
	line-height: normal;
	background-color: #fdfdfd;
	border: 1px solid pink;
}

.newGeneralBoardMultiList {
	border: 2px solid #c9c9c9;
	min-width: 80px;
	min-height: 50px;
	display: inline-block;
}

hr {
	margin-top: 0px;
}

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

#pac-input {
  background-color: #fff;
  font-family: Roboto;
  font-size: 15px;
  font-weight: 300;
  margin-left: 12px;
  padding: 0 11px 0 13px;
  text-overflow: ellipsis;
  width: 300px;
}

#pac-input:focus {
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

.modal{
    z-index: 20;   
}
.modal-backdrop{
    z-index: 10;        
}​

</style>

<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>



</head>
<body>
	<div id='mainNewBoard'>
		게시글 작성 영역
		<hr>
		<input class="btn btn-primary btn-sm" type='button' value='일반게시물' data-toggle="modal" data-target="#addGeneralBoard" data-keyboard="false">
		<input class="btn btn-primary btn-sm" type='button' value='여행게시물'>
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
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
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<!-- 일반게시물 modal -->
	<div class="modal fade" id="addGeneralBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="#" method="post" enctype="multipart/form-data" onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						일반게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newGeneralBoardContainer">
							<div class="newGeneralBoardPicture">
								<img class="newGeneralBoardPictureImg"
									src='<c:url value="/images/img.jpg"/>'>
							</div>
							<div class="newGeneralBoardTitle">
								<textarea name="title" class="form-control" rows="5" id="mainExclusive_input"></textarea>
							</div>
							<hr>
							<div class="newGeneralBoardSelect">
								<div class="input-group-btn">
									<button class="btn btn-default btn-sm" type="button" id="newGeneralBoardUploadImg">
										<i><img src='<c:url value="/images/icon_upload.png"/>' width="64px" height="64px"></i>
									</button>
									<button class="btn btn-default btn-sm" type="button" id="newGeneralBoardMap">
										<i><img src='<c:url value="/images/icon_map.png"/>' width="64px" height="64px"></i>
									</button>
								</div>
								<input type="file" class="newGeneralBoardMulti with-preview" style="display:none" multiple/>
								<div class="btn-group groupMap" role="group" style="display:none">
									<button type="button" class="btn btn-default btn-sm" id="insideDaumMap">국내</button>
									<button type="button" class="btn btn-default btn-sm" id="insideGoogleMap" onclick="displayMap()">해외</button>
								</div>
								<div class="newGeneralBoardMultiList"></div>
								<div class="newGeneralMap"></div>
								
							</div>
							<div id="newGeneralBoardGMap"class="newGeneralBoardGMap" style="width:90%; display:none">
								<!-- map부분 -->
								<input id="pac-input" class="controls" type="text" placeholder="Search Box">
    							<div id="map" style="width:90%; height:300px;"></div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<select>
							<option value="전체보기">전체보기</option>
							<option value="친구보기">친구보기</option>
							<option value="그룹보기">그룹보기</option>
							<option value="비공개">비공개</option>
						</select>
						<button type="submit" class="btn btn-default btn-sm">등록</button>
						<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 이미지 Modal -->

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
						<!-- class="active" 첫번째로 나오는 화면. -->
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src='<c:url value="/images/img.jpg"/>' class="img-rounded"
									alt="Chania">
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
 	<script src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	
	<script>
	//enter키 금지
	function captureReturnKey(e) { 
	    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
	    return false; 
	} 
	
	
	//구글 map API
	function initAutocomplete() {
		
		  var map = new google.maps.Map(document.getElementById('map'), {
		    center: {lat: -33.8688, lng: 151.2195},
		    zoom: 13,
		    mapTypeId: google.maps.MapTypeId.ROADMAP
		  });

		  var infowindow = new google.maps.InfoWindow(); // 정보 상세창 올리기
		  // Create the search box and link it to the UI element.
		  var input = document.getElementById('pac-input');
		  var searchBox = new google.maps.places.SearchBox(input);
		  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

		  // Bias the SearchBox results towards current map's viewport.
		  map.addListener('bounds_changed', function() {
		    searchBox.setBounds(map.getBounds());
		  });

		  var markers = [];
		  // [START region_getplaces]
		  // Listen for the event fired when the user selects a prediction and retrieve
		  // more details for that place.
		  searchBox.addListener('places_changed', function() {
		    var places = searchBox.getPlaces();
			if (places.length == 0) {
		      return;
		    }
			// Clear out the old markers.
		    markers.forEach(function(marker) {
		      marker.setMap(null);
		    });
		    markers = [];

		    // For each place, get the icon, name and location.
		    var bounds = new google.maps.LatLngBounds();
		    places.forEach(function(place) {
		      alert(place.geometry.location);
		        
		      // Create a marker for each place.
		      markers.push(new google.maps.Marker({
		        map: map,
		        title: place.name,
		        position: place.geometry.location
		      }));
		      
		      google.maps.event.addListener(markers,'click',function(){
		    	 infowindow.setContent(place.name);
		    	 infowindow.open(map, this);
		      });
		      
		      if (place.geometry.viewport) {
		        // Only geocodes have viewport.
		        bounds.union(place.geometry.viewport);
		      } else {
		        bounds.extend(place.geometry.location);
		      }
		    });
		    map.fitBounds(bounds);
		  });
		  // [END region_getplaces]
		} 
	/* 스크롤 효과 */
	stroll.bind('.mainAllBoard ul');
		/* 타이틀 포커스 효과 */
		$(document)
				.ready(
						function() {
							var placeholderTarget = $('.newGeneralBoardTitle input[type="text"]');

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

		/* 멀티파일 설정 */
		$(function() {
			$('.newGeneralBoardMulti').MultiFile({
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
					list : ".newGeneralBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
				 
			
			$('#newGeneralBoardUploadImg').click(function() {
				$('.groupMap').hide();		
				$('.newGeneralBoardMulti').show();
			});
			$('#newGeneralBoardMap').click(function(){
				$('.newGeneralBoardMulti').hide();
				$('.groupMap').show();	
			})
			
		}); 
		
		function displayMap(){  
			document.getElementById('newGeneralBoardGMap').style.display="block";
			google.maps.event.trigger(map, "resize");
		}
		
		
		
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7i1sbKKdVRfbilHi8obuYThFnE3P9ZA&libraries=places&callback=initAutocomplete"
         async defer></script>
</body>
</html>