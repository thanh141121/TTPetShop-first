<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "FY07"); map.put("y", 188); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY08"); map.put("y", 213); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY09"); map.put("y", 213); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY10"); map.put("y", 219); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY11"); map.put("y", 207); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY12"); map.put("y", 167); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY13"); map.put("y", 136); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY14"); map.put("y", 152); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY15"); map.put("y", 129); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FY16"); map.put("y", 155); list.add(map);
 
String dataPoints = gsonObj.toJson(list);

Gson gsonObj1 = new Gson();
Map<Object,Object> map1 = null;
List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
 
map1 = new HashMap<Object,Object>(); map1.put("label", "Health"); map1.put("y", 35); map1.put("exploded", true); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Finance"); map1.put("y", 20); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Career"); map1.put("y", 18); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Education"); map1.put("y", 15); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Family"); map1.put("y", 5); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Real Estate"); map1.put("y", 7); list1.add(map1);
 
String dataPoints1 = gsonObj1.toJson(list1);
%>



 
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>Dashboard - Ace Admin</title>

	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "light2",
		title: {
			text: "Iron Ore Production in India"
		},
		axisX: {
			title: "Fiscal Year"
		},
		axisY: {
			title: "Production ( in million tonnes )",
			includeZero: true
		},
		data: [{
			type: "line",
			yValueFormatString: "#,##0mn tonnes",
			dataPoints : <%out.print(dataPoints);%>
		}]
	});
	var chart1 = new CanvasJS.Chart("chartContainer1", {
			theme: "light2",
			animationEnabled: true,
			exportFileName: "New Year Resolutions",
			exportEnabled: true,
			title:{
				text: "Top Categories of New Year's Resolution"
			},
			data: [{
				type: "pie",
				showInLegend: true,
				legendText: "{label}",
				toolTipContent: "{label}: <strong>{y}%</strong>",
				indexLabel: "{label} {y}%",
				dataPoints : <%out.print(dataPoints1);%>
			}]
		});
	chart.render();
	chart1.render();
 
}
</script>



	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

	<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->

	<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="assets/js/ace-extra.min.js"></script>
	<!-- pagiantion -->
	<link rel="stylesheet" href="assets/BS/assets/bootstrap.css" />
</head>
<body class="no-skin">
	<div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {}
		</script>

		<div class="navbar-container" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span>

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index.html" class="navbar-brand">
					<small>
						<i class="fa fa-leaf"></i>
						Trang chủ
					</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
							<span class="user-info">
								<small>Welcome,</small>
								Jason
							</span>

							<i class="ace-icon fa fa-caret-down"></i>
						</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li>
								<a href="#">
									<i class="ace-icon fa fa-cog"></i>
									Settings
								</a>
							</li>

							<li>
								<a href="profile.html">
									<i class="ace-icon fa fa-user"></i>
									Profile
								</a>
							</li>

							<li class="divider"></li>

							<li>
								<a href="#">
									<i class="ace-icon fa fa-power-off"></i>
									Logout
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.navbar-container -->
	</div>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>

		<div id="sidebar" class="sidebar                  responsive">
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script>
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span>

					<span class="btn btn-info"></span>

					<span class="btn btn-warning"></span>

					<span class="btn btn-danger"></span>
				</div>
			</div><!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class="active">
					<a href='<c:url value="/adminListUserByPage"/>'>
						<i class="menu-icon fa fa-list-alt"></i>
						<span class="menu-text"> Danh Sách Users </span>
					</a>

					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<c:url value="/adminListProduct"/>'>
						<i class="menu-icon fa fa-list-alt"></i>
						<span class="menu-text"> Danh Sách Sản Phẩm </span>
					</a>

					<b class="arrow"></b>
				</li>
			</ul><!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
			</script>
		</div>
		
				<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="adminListUserByPage">Danh sách Users </a>
						</li>
					</ul>
				</div>

				<div class="page-content">
					<div class="widget-box table-filter">
						<div class="table-btn-controls">
							<div class="pull-right tableTools-container">
								<div class="dt-buttons btn-overlap btn-group">
									<a flag="info"
									   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle-"tooltip"
									   title='Thêm User' href='<c:url value="/admin-new?type=edit"/>'>
												<span>
												   <i class="fa fa-plus-circle bigger-110 purple"></i>
												</span>
									</a>
									<button id="btnīelete" type="button" class="dt-button buttons-htm15 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title="Xóa User">
													<span>
													   <i class="fa fa-trash-o bigger-110 pink"></i>
													</span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row" >
						<div class="col-xs-12">
							<input class="form-control" id="myInput" type="text" placeholder="Search..">
  							<br>
							   <div class="row">
										<div class="col-xs-12">
											<table class="table table-condensed">
												<thead>
												  <tr>
													<th>userID</th>
													<th>password</th>
													<th>fullname</th>
													<th>pic</th>
													<th>address</th>
													<th>phone</th>
													<th>coins</th>
													<th>Actions</th>
												  </tr>
												</thead>
												<tbody id="myTable">
												    <c:forEach items="${userList}" var="us" >
												       <tr>
												          <td>${us.userID}</td>
												          <td>${us.password}</td>
												          <td>${us.fullname}</td>
												          <td>${us.pic}</td>
												          <td>${us.address}</td>
												          <td>${us.phone}</td>
												          <td>${us.coins}</td>
														  <td>
															<c:url var="editURL" value="/admin-new">
																<c:param name="type" value="edit"/>
																<c:param name="id" value="${us.userID}"/>
														  	</c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
															   title="Edit" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															</a>
														</td>
												       </tr>
												    </c:forEach>												
												</tbody>
											</table>
											<nav aria-label="Page navigation example">
												<ul class="pagination justify-content-end">
												  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
												  <!-- <li class="page-item"><a class="page-link" href="#">1</a></li>
												  <li class="page-item"><a class="page-link" href="#">2</a></li>
												  <li class="page-item"><a class="page-link" href="#">3</a></li> -->
												  <c:forEach begin="1" end="${total}" var="i">
														<li class="page-item"><a class="page-link" href="adminListUserByPage?page=${i}">${i}</a></li>													
												  </c:forEach>
												  <li class="page-item"><a class="page-link" href="#">Next</a></li>
												</ul>
											  </nav>
										</div>
							   </div>
						</div>
					</div>
       						<div class = "col-md-6">
          						<div id="chartContainer" style="height: 370px; width: 100%;"></div>
						    </div>
							<div class = "col-md-6">
								<div id="chartContainer1" style="height: 370px; width: 100%;"></div>
							</div>
				</div><!-- /.page-content -->
			</div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</div><!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="assets/js/jquery.2.1.1.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="assets/js/jquery.1.11.1.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement) document.write(
			"<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/jquery.sparkline.min.js"></script>
	<script src="assets/js/jquery.flot.min.js"></script>
	<script src="assets/js/jquery.flot.pie.min.js"></script>
	<script src="assets/js/jquery.flot.resize.min.js"></script>
	<!-- paging -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function ($) {
			$('.easy-pie-chart.percentage').each(function () {
				var $box = $(this).closest('.infobox');
				var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') :
					'rgba(255,255,255,0.95)');
				var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
				var size = parseInt($(this).data('size')) || 50;
				$(this).easyPieChart({
					barColor: barColor,
					trackColor: trackColor,
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: parseInt(size / 10),
					animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
					size: size
				});
			})

			$('.sparkline').each(function () {
				var $box = $(this).closest('.infobox');
				var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
				$(this).sparkline('html', {
					tagValuesAttribute: 'data-values',
					type: 'bar',
					barColor: barColor,
					chartRangeMin: $(this).data('min') || 0
				});
			});


			//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			//but sometimes it brings up errors with normal resize event handlers
			$.resize.throttleWindow = false;

			var placeholder = $('#piechart-placeholder').css({
				'width': '90%',
				'min-height': '150px'
			});
			var data = [{
					label: "social networks",
					data: 38.7,
					color: "#68BC31"
				},
				{
					label: "search engines",
					data: 24.5,
					color: "#2091CF"
				},
				{
					label: "ad campaigns",
					data: 8.2,
					color: "#AF4E96"
				},
				{
					label: "direct traffic",
					data: 18.6,
					color: "#DA5430"
				},
				{
					label: "other",
					data: 10,
					color: "#FEE074"
				}
			]

			function drawPieChart(placeholder, data, position) {
				$.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt: 0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne",
						labelBoxBorderColor: null,
						margin: [-30, 15]
					},
					grid: {
						hoverable: true,
						clickable: true
					}
				})
			}
			drawPieChart(placeholder, data);

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			*/
			placeholder.data('chart', data);
			placeholder.data('draw', drawPieChart);


			//pie chart tooltip example
			var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo(
				'body');
			var previousPoint = null;

			placeholder.on('plothover', function (event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top: pos.pageY + 10,
						left: pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			/////////////////////////////////////
			$(document).one('ajaxloadstart.page', function (e) {
				$tooltip.remove();
			});




			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([i, Math.sin(i)]);
			}

			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([i, Math.cos(i)]);
			}

			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([i, Math.tan(i)]);
			}


			var sales_charts = $('#sales-charts').css({
				'width': '100%',
				'height': '220px'
			});
			$.plot("#sales-charts", [{
					label: "Domains",
					data: d1
				},
				{
					label: "Hosting",
					data: d2
				},
				{
					label: "Services",
					data: d3
				}
			], {
				hoverable: true,
				shadowSize: 0,
				series: {
					lines: {
						show: true
					},
					points: {
						show: true
					}
				},
				xaxis: {
					tickLength: 0
				},
				yaxis: {
					ticks: 10,
					min: -2,
					max: 2,
					tickDecimals: 3
				},
				grid: {
					backgroundColor: {
						colors: ["#fff", "#fff"]
					},
					borderWidth: 1,
					borderColor: '#555'
				}
			});


			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement: tooltip_placement
			});

			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
				return 'left';
			}


			$('.dialogs,.comments').ace_scroll({
				size: 300
			});


			//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
			//so disable dragging when clicking on label
			var agent = navigator.userAgent.toLowerCase();
			if ("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				$('#tasks').on('touchstart', function (e) {
					var li = $(e.target).closest('#tasks li');
					if (li.length == 0) return;
					var label = li.find('label.inline').get(0);
					if (label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation();
				});

			$('#tasks').sortable({
				opacity: 0.8,
				revert: true,
				forceHelperSize: true,
				placeholder: 'draggable-placeholder',
				forcePlaceholderSize: true,
				tolerance: 'pointer',
				stop: function (event, ui) {
					//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
					$(ui.item).css('z-index', 'auto');
				}
			});
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click', function () {
				if (this.checked) $(this).closest('li').addClass('selected');
				else $(this).closest('li').removeClass('selected');
			});


			//show the dropdowns on top or bottom depending on window height and menu position
			$('#task-tab .dropdown-hover').on('mouseenter', function (e) {
				var offset = $(this).offset();

				var $w = $(window)
				if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
					$(this).addClass('dropup');
				else $(this).removeClass('dropup');
			});

		})
	</script>

	<script type="text/javascript">
		$(function () {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages: 35,
				visiblePages: 10,
				onPageClick: function (event, page) {
					console.info(page + ' (from options)');
				}
			}).on('page', function (event, page) {
				console.info(page + ' (from event listening)');
			});
		});
	</script>
	
	<script>
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
</script>
</body>
</html>       