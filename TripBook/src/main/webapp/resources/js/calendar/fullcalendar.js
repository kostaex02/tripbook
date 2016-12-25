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
				sessionStorage.setItem("pageName", "scheduleDetail"); 		
				location.href="/controller/biography/detail?scheduleNo="+event.id;
				   },
			/*events: [
				{
					id: 11,
					title: 'All Day Event',
					start: '2016-12-01',
					color: calendarColor
				},
				{
					title: 'Long Event',
					start: '2016-12-07',
					end: '2016-12-10',
					color: 'pink'
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
            eventDrop: function(event, delta, revertFunc) {
            	$.ajax({
		    		url:'/controller/calendar/update',
		    		type : "post",
		    		data:"scheduleNo="+event.id+"&startDate="+moment(event.start).format('YYYY-MM-DD')+"&endDate="+moment(event.end).format('YYYY-MM-DD'),
					dataType : "json",
					success:function(data){
						if(data==0){
							revertFunc();
						}
					},
					error:function(error){
						revertFunc();
					}
		    	})

            },
		    selectable: true,
			selectHelper: true,
			select: function(start, end) {
				//alert(moment(start).format('YYYY-MM-DD hh:mm'));
				//var title = prompt('제목을 입력하세요');
				$('#addTravelBoard').modal();
				$('#fromDate').val(moment(start).format('YYYY-MM-DD'));
				$('#toDate').val(moment(end-(24*60*60*1000)).format('YYYY-MM-DD'));
				$('#hiddenToDate').val(moment(end).format('YYYY-MM-DD'));
	
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
