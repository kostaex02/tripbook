<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.2.4.js"/>"></script>

<script type="text/javascript">
		$(document).ready(function() {
		  var placeholderTarget = $('.jbText input[type="text"]');
		  
		  //포커스시
		  placeholderTarget.on('focus', function(){
		    $(this).siblings('label').fadeOut('fast');
		  });

		  //포커스아웃시
		  placeholderTarget.on('focusout', function(){
		    if($(this).val() == ''){
		      $(this).siblings('label').fadeIn('fast');
		    }
		  });
		});
	</script>
<title>Insert title here</title>
<style type="text/css">
.jbTable {
	display: table;
	width: 100%;
}

.jbTableRow {
	display: table-row;
}

.jbTableCell {
	display: table-cell;
}

.jbText {
	width: 80%;
}

.jbSubmit {
	width: 20%;
}

.jbText input[type="text"] {
	width: 99%;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border: 1px solid #999;
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.jbText label{
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.calendarTrash{
	position:absolute;
	top:20%;
	left:90%;
	width:50px;
	height:50px;
}

</style>
</head>
<body>
	<div class="jbTable">
		<div class="jbTableRow">
			<form action="<c:url value="/search/list"/>">
			<div class="jbTableCell jbText">
				<label for="exclusive_input">검색을 입력하세요</label> <input type="text" id="exclusive_input" name="keyword">
			</div>
			<div class="jbTableCell jbSubmit">
				<input type="submit" value="Search">
			</div>
			</form>
		</div>
		<div class="calendarTrash"><img src='<c:url value="/images/trash.png"/>'></div>
		
	</div>
</body>
</html>