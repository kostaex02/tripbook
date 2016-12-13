	$(document).ready(function() {
		
		
		/* initialize the calendar
		-----------------------------------------------------------------*/
		var initialLocaleCode = 'ko';
		$('.calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,listMonth,listWeek',
			},
			defaultDate: moment(),
			locale: initialLocaleCode,
			buttonIcons: false, // show the prev/next text
			weekNumbers: true,
			navLinks: false, // can click day/week names to navigate views
			editable: true,
			aspectRatio: 1.9,
			dragRevertDuration: 100,
			droppable: true, // this allows things to be dropped onto the calendar
			eventLimit: true, // allow "more" link when too many events\
			eventClick: function(event, jsEvent, view) {               //작성된 이벤트 클릭시 일정내용 팝업으로 노출
						 var dt_start = moment(event.start).format('YYYY-MM-DD hh:mm');
						 var dt_end = moment(event.end).format('YYYY-MM-DD hh:mm');
				 		alert("시작날짜 : "+dt_start+" / 종료날짜 : "+dt_end);
				   },
			/*events: [
				{
					id: 11,
					title: 'All Day Event',
					start: '2016-12-01',
					color: 'red'
				},
				{
					title: 'Long Event',
					start: '2016-12-07',
					end: '2016-12-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-12-09'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-12-16'
				},
				{
					title: 'Conference',
					start: '2016-12-11',
					end: '2016-12-13'
				},
				{
					title: 'Meeting',
					start: '2016-12-12',
					end: '2016-12-12'
				},
				{
					title: 'Lunch',
					start: '2016-12-12'
				},
				{
					title: 'Meeting',
					start: '2016-12-12'
				},
				{
					title: 'Happy Hour',
					start: '2016-12-12'
				},
				{
					title: 'Dinner',
					start: '2016-12-12'
				},
				{
					title: 'Birthday Party',
					start: '2016-12-13'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-12-28'
				}
			],*/
			eventDragStop: function(event, jsEvent, ui, view) { 
				var trashEl = jQuery('.calendarTrash');
			    var ofs = trashEl.offset();
			    var x1 = ofs.left;
			    var x2 = ofs.left + trashEl.outerWidth(true);
			    var y1 = ofs.top;
			    var y2 = ofs.top + trashEl.outerHeight(true);
			    if (jsEvent.pageX >= x1 && jsEvent.pageX<= x2 &&
			        jsEvent.pageY >= y1 && jsEvent.pageY <= y2) {
			    	$.ajax({
			    		url:'/controller/calendar/delete',
			    		type : "post",
			    		data:"scheduleNo="+event.id,
						dataType : "json",
						success:function(data){
							if(data>0){
						        $('.calendar').fullCalendar('removeEvents', event.id);
							}else{
								alert(data);
							}
						},
						error:function(error){
							alert('error');
						}
			    	})
			    }
            },
		    selectable: true,
			selectHelper: true,
			select: function(start, end) {
				//alert(moment(start).format('YYYY-MM-DD hh:mm'));
				//var title = prompt('제목을 입력하세요');
				$('#addTravelBoard').modal();
				$('#fromDate').val(moment(start).format('YYYY-MM-DD'));
				var endDateDay=moment(end).format('DD')-1;
				$('#toDate').val(moment(start).format('YYYY-MM-')+endDateDay);
	
				/*var eventData;
				if (addSchedule) {
					eventData = {
						id: title,
						title: title,
						start: start,
						end: end
					};
					$('.calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				}*/
				$('.calendar').fullCalendar('unselect');
			}
		});
		//----------------------------------------------------

		//DB 읽어오기
		/*
		success:function(list){
			$.each(list,function(index, item){
				$('calendar').fullCalendar('renderEvent', item, true);
			})
		}
		*/
		
		
	});
