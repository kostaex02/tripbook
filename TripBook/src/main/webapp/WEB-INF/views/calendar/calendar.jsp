<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href='<c:url value="/resources/css/calendar/fullcalendar.css"/>' rel='stylesheet' />
<link href='<c:url value="/resources/css/calendar/fullcalendar.print.css"/>' rel='stylesheet' media='print' />
<script src='<c:url value="/resources/js/calendar/lib/moment.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/fullcalendar.min.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/locale-all.js"/>'></script>
<script src='<c:url value="/resources/js/calendar/fullcalendar.js"/>'></script>
<title>달!력!</title>
<style type="text/css">

</style>
</head>
<body>
	<div id='top'>
		<div id='locale-top'>
			Locales:
			<select id='locale-selector'></select>
		</div>
	</div>
	<div id='calendar'></div>
	<div style='clear:both'></div>
	<div id="calendarTrash" class="calendar-trash"><img src="<c:url value='/resources/trash.png'/>"></div>
</body>
</html>