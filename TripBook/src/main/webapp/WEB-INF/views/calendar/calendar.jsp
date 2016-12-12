<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href='<c:url value="/resources/css/calendar/fullcalendar.css"/>' rel='stylesheet' />
<link href='<c:url value="/resources/css/calendar/fullcalendar.print.css"/>' rel='stylesheet' media='print' />
<link href='<c:url value="/resources/js/calendar/lib/cupertino/jquery-ui.min.css"/>' rel='stylesheet' />
<script src='<c:url value="/resources/js/calendar/lib/moment.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/fullcalendar.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/locale-all.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/fullcalendar.js"/>'></script>

<title>달!력!</title>
<style>
	img{
		width:60px;
		height:60px;
	}
</style>
</head>
<body>
	<div class='calendar' style='height:1000px;'></div>
	
	<!-- 여행게시물 modal -->
	<div class="modal fade" id="addTravelBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="generalForm" action="#" method="post" enctype="multipart/form-data" onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						여행게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newTravelBoardContainer">
							<div class="newGeneralBoardPicture">
								<img class="newGeneralBoardPictureImg"
									src='<c:url value="/images/img.jpg"/>'>
							</div>
							<div class="newGeneralBoardTitle">
								<textarea name="title" class="form-control" rows="5" id="mainExclusive_input"></textarea>
							</div>
							<hr>
							<label for="fromDate">From</label>
							<input type="text" id="fromDate" name="fromDate">
							<label for="toDate">to</label>
							<input type="text" id="toDate" name="toDate">
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
	
	<script>
		$(function(){
			//여행게시물 달력 기능
			var dateFormat = "yy/mm/dd/",
		      from = $( "#fromDate" )
		        .datepicker({
		          minDate:-1,
		          maxDate:"+1D",
		          defaultDate: new Date("2016/12/19"),
		          changeMonth: true,
		        })
		        .on( "change", function() {
		          to.datepicker( "option", "minDate", getDate( this ) );
		        }),
		      to = $( "#toDate" ).datepicker({
		    	maxDate:"+1D",
		        defaultDate: +7,
		        changeMonth: true,
		      })
			    .on( "change", function() {
			      from.datepicker( "option", "maxDate", getDate( this ) );
			    });
			 
			    function getDate( element ) {
			      	var date;
			     	try {
			        	date = $.datepicker.parseDate( dateFormat, element.value );
			      	} catch( error ) {
			        	date = null;
			      	}
			 		return date;
			    }
			})
			
	
	</script>
	
</body>
</html>