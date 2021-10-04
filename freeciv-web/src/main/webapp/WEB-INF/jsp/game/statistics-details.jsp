<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/jsp/fragments/i18n.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="/WEB-INF/jsp/fragments/head.jsp"%>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="/css/morris.css" />
<script src="/javascript/libs/raphael-min.js"></script>
<script src="/javascript/libs/morris.min.js"></script>
<style>
	.chart {
		background-color: #fcf1e0;
	}
</style>

</head>
<body>
	<%@include file="/WEB-INF/jsp/fragments/header.jsp" %>
	<div class="container">
		<h2>Type of games played</h2>
		<div class="row chart">
			<div id="chart" style="height: 90%;"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel-freeciv">
					<p>Shows the number of started new games Freeciv each day in the following categories:</p>
					<ul>
						<li>Freeciv-TnT singleplayer 2D</li>
						<li>Freeciv-TnT multiplayer</li>
						<li>Freeciv desktop multiplayer: games reported by meta.freeciv.org</li>
						<li>Freeciv-TnT hotseat games</li>
					</ul>
				</div>
			</div>
		</div>


		<script>
			var data = ${data};
		    try {
		 	 Morris.Line({
			  element: 'chart',
			  data: data,
			  xkey: 'date',
			  pointSize: 0,
			  lineWidth: 1,
			  ykeys: ['webSinglePlayer', 'webMultiPlayer', 'desktopMultiplayer', 'webHotseat'],
			  labels: ['Freeciv-TnT 2D singleplayer', 'Freeciv-TnT multiplayer', 'Freeciv desktop multiplayer', 'Freeciv-TnT hotseat']
			});
            } catch(err) {
              console.log("Problem showing score log graph: " + err);
            }
		</script>

		<!-- Site footer -->
		<%@include file="/WEB-INF/jsp/fragments/footer.jsp"%>
	</div> <!-- container -->
</body>
</html>