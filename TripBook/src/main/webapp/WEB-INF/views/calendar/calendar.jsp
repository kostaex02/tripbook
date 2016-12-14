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

</head>
<body>
	<div class='calendar' style='height:1000px;'></div>
	
	<!-- 여행게시물 modal -->
	<div class="modal fade" id="addTravelBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="generalForm" name="generalForm" action="calendar/add" method="post" enctype="multipart/form-data" onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						여행 일정
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newTravelBoardContainer">
							<div class="newGeneralBoardTitle">
								<textarea name="subject" class="form-control" rows="5" id="mainExclusive_input"></textarea>
							</div>
							<hr>
							<label for="fromDate">From</label>
							<input type="text" id="fromDate" name="startDate">
							<label for="toDate">to</label>
							<input type="text" id="toDate" name="endDate">
						</div>
					</div>
					<div class="modal-footer">
						<select name = "state">
							<option value="0">전체보기</option>
							<option value="1">친구보기</option>
							<option value="2">비공개</option>
							<c:forEach items="${groupList }" var="item">
								<option value="${item.groupNo }">${item.groupName }</option>
							</c:forEach>
						</select>
						<button id="calenderSubmit" type="button" class="btn btn-default btn-sm">등록</button>
						<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			//여행게시물 달력 기능
			
	      from = $( "#fromDate" )
	        .datepicker({
	        	dateFormat: "yy-mm-dd",
		        defaultDate: $('#fromDate').val(),
	      		changeMonth: true
	        })
	        .on( "change", function() {
	          to.datepicker( "option", "minDate", getDate( this ) );
	        }),
	      to = $( "#toDate" ).datepicker({
	    	  dateFormat: "yy-mm-dd",
	    	  defaultDate: $('#toDate').val(),
	          changeMonth: true
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
		    
		    initCalendar();
		    
		    $("#calenderSubmit").click(function(){
		    	$.ajax({
		    		url : "/controller/calendar/add",
					type : "post",
					data : $('#generalForm').serialize(),
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert('일정 등록 성공');
							initCalendar();
							$('#addTravelBoard').modal('hide');
						}else{
							alert('일정 등록 실패');
						}
					},
					error : function() {
						alert('error')
					}
		    	});
		    });
		})
			
		function captureReturnKey(e) { 
		    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
		    return false; 
		} 
		
		function initCalendar(){
	        $('.calendar').fullCalendar('removeEvents');
			$.ajax({
	    		url : "/controller/calendar/init",
				type : "post",
				dataType : "json",
				success : function(data) {
					 var scheduleColor;
					 
					 $.each(data, function(index, item) {
						 if(item.state=='0'){
							 scheduleColor="blue";
						 }else if(item.state=='1'){
							 scheduleColor="pink";
						 }else if(item.state=='2'){
							 scheduleColor="red";
						 }else{
							 scheduleColor="green";
						 };
						 
						eventData = {
								id: item.scheduleNo,
								title: item.subject,
								start: item.startDate,
								end: item.endDate,
								color:scheduleColor
						};		 
					
						$('.calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				     });
				},
				error : function() {
					alert('error')
				}
	    	});
		}
	</script>
	
</body>
</html>