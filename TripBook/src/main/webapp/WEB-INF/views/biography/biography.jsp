<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/biography/font-awesome.min.css"/>" />
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/biography/style.css"/>" />
	<script src="<c:url value="/resources/js/biography/modernizr-custom.js"/>"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body style='overflow-y: scroll; overflow-x: hidden;'>
<div class="container" style='border: 1px solid black;'>

		<div class="content" style='border: 1px solid black;'>
			<div class="grid">
				<div class="grid__item" data-size="1280x853">
					<a href="<c:url value="/images/test/1.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/1.jpg"/>" alt="img01" /> </a>
				</div>
				<div class="grid__item" data-size="958x1280">
					<a href="<c:url value="/images/test/2.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/2.jpg"/>" alt="img02" /> </a>
				</div>
				<div class="grid__item" data-size="837x1280">
					<a href="<c:url value="/images/test/3.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/3.jpg"/>" alt="img03" /> </a>
				</div>
				<div class="grid__item" data-size="1280x961">
					<a href="<c:url value="/images/test/4.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/4.jpg"/>" alt="img04" /> </a>
				</div>
				<div class="grid__item" data-size="1280x1131">
					<a href="<c:url value="/images/test/5.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/5.jpg"/>" alt="img05" /> </a>
				</div>
				<div class="grid__item" data-size="1280x857">
					<a href="<c:url value="/images/test/6.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/6.jpg"/>" alt="img06" /> </a>
				</div>
				<div class="grid__item" data-size="1280x1280">
					<a href="<c:url value="/images/test/7.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/7.jpg"/>" alt="img07" /> </a>
				</div>
				<div class="grid__item" data-size="1280x853">
					<a href="<c:url value="/images/test/8.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/8.jpg"/>" alt="img08" /> </a>
				</div>
				<div class="grid__item" data-size="865x1280">
					<a href="<c:url value="/images/test/9.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/9.jpg"/>" alt="img09" /> </a>
				</div>
				<div class="grid__item" data-size="1280x1280">
					<a href="<c:url value="/images/test/10.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/10.jpg"/>" alt="img10" /> </a>
				</div>
				<div class="grid__item" data-size="1280x850">
					<a href="<c:url value="/images/test/11.jpg"/>" class="img-wrap"><img
						src="<c:url value="/images/test/11.jpg"/>" alt="img11" /> </a>
				</div>

			</div>
			<!-- /grid -->
			<div class="preview">
				<button class="action action--close">
					<i class="fa fa-times"></i><span class="text-hidden">Close</span>
				</button>
				<div class="description description--preview"></div>
			</div>
			<!-- /preview -->
		</div>
		<!-- /content -->
	
		
	</div>
	<!-- /container -->
	
	<script src="<c:url value="/resources/js/biography/imagesloaded.pkgd.min.js"/>"></script>
	<script src="<c:url value="/resources/js/biography/masonry.pkgd.min.js"/>"></script>
	<script src="<c:url value="/resources/js/biography/classie.js"/>"></script>
	<script src="<c:url value="/resources/js/biography/main.js"/>"></script>
	
	<script>
		(function() {
			// create SVG circle overlay and append it to the preview element
			function createCircleOverlay(previewEl) {
				var dummy = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
				dummy.setAttributeNS(null, 'version', '1.1');
				dummy.setAttributeNS(null, 'width', '100%');
				dummy.setAttributeNS(null, 'height', '100%');
				dummy.setAttributeNS(null, 'class', 'overlay');
				var g = document.createElementNS('http://www.w3.org/2000/svg', 'g');
				var circle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
				circle.setAttributeNS(null, 'cx', 0);
				circle.setAttributeNS(null, 'cy', 0);
				circle.setAttributeNS(null, 'r', Math.sqrt(Math.pow(previewEl.offsetWidth,2) + Math.pow(previewEl.offsetHeight,2)));
				dummy.appendChild(g);
				g.appendChild(circle);
				previewEl.appendChild(dummy);
			}
			
			new GridFx(document.querySelector('.grid'), {
				onInit : function(instance) {
					createCircleOverlay(instance.previewEl);
				},
				onResize : function(instance) {
					instance.previewEl.querySelector('svg circle').setAttributeNS(null, 'r', Math.sqrt(Math.pow(instance.previewEl.offsetWidth,2) + Math.pow(instance.previewEl.offsetHeight,2)));
				},
				onOpenItem : function(instance, item) {
					// item's image
					var gridImg = item.querySelector('img'),
						gridImgOffset = gridImg.getBoundingClientRect(),
						win = {width: document.documentElement.clientWidth, height: window.innerHeight},
						SVGCircleGroupEl = instance.previewEl.querySelector('svg > g'),
						SVGCircleEl = SVGCircleGroupEl.querySelector('circle');
						
					SVGCircleEl.setAttributeNS(null, 'r', Math.sqrt(Math.pow(instance.previewEl.offsetWidth,2) + Math.pow(instance.previewEl.offsetHeight,2)));
					// set the transform for the SVG g node. This will animate the circle overlay. The origin of the circle depends on the position of the clicked item.
					if( gridImgOffset.left + gridImg.offsetWidth/2 < win.width/2 ) {
						SVGCircleGroupEl.setAttributeNS(null, 'transform', 'translate(' + win.width + ', ' + (gridImgOffset.top + gridImg.offsetHeight/2 < win.height/2 ? win.height : 0) + ')');
					}
					else {
						SVGCircleGroupEl.setAttributeNS(null, 'transform', 'translate(0, ' + (gridImgOffset.top + gridImg.offsetHeight/2 < win.height/2 ? win.height : 0) + ')');
					}
				}
			});
		})();
	</script>
</body>
</html>