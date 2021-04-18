
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="Smarthr - Bootstrap Admin Template">
<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>Events - HRMS admin template</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/line-awesome.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/select2.min.css">

<!-- Datetimepicker CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap-datetimepicker.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/style.css">

<!-- Calender CSS -->
<link href="../resources/hrtemp/lib/main.css" rel='stylesheet' />
<link rel="stylesheet" href="../resources/hrtemp/lib/main.min.css">

<!-- Calendal JS  -->
<script src="../resources/hrtemp/lib/main.min.js"></script>
<script src="../resources/hrtemp/lib/main.js"></script>
<script src="../resources/hrtemp/lib/locales/ko.js"></script>
	
<!-- jQuery -->
<script src="../resources/hrtemp/js/jquery-3.5.1.min.js"></script>

<!-- Moment.js -->
<script src="../resources/hrtemp/js/moment.min.js"></script>
<script src="../resources/hrtemp/js/moment.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js" integrity="sha512-LGXaggshOkD/at6PFNcp2V2unf9LzFq6LE+sChH7ceMTDP0g2kn6Vxwgg7wkPP7AAtX+lmPqPdxB47A0Nz0cMQ==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/ko.min.js" integrity="sha512-3kMAxw/DoCOkS6yQGfQsRY1FWknTEzdiz8DOwWoqf+eGRN45AmjS2Lggql50nCe9Q6m5su5dDZylflBY2YjABQ==" crossorigin="anonymous"></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var Calendar = FullCalendar.Calendar;
		var Draggable = FullCalendar.Draggable;

		var containerEl = document.getElementById('external-events');
		var calendarEl = document.getElementById('calendar');
		var checkbox = document.getElementById('drop-remove');

		// initialize the external events
		// -----------------------------------------------------------------

		new Draggable(containerEl, {
			itemSelector : '.fc-event',
			eventData : function(eventEl) {
				return {
					title : eventEl.innerText
				};
			}
		});

		// initialize the calendar
		// -----------------------------------------------------------------

		var calendar = new Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			dateClick : function(info) {
				alert(info.dateStr + '날짜 클릭');
			},
			eventClick : function() {
				alert('일정 클릭');
			},
			editable : true,
			droppable : true,
			drop : function(info) {
				if (checkbox.checked) {
					info.draggedEl.parentNode.removeChild(info.draggedEl);
				}
			},
			
			locale : 'ko'
		});

		calendar.on('dateClick', function(info) {
			calendar.addEvent({
				'title' : '이벤트 추가',
				'start' : info.dateStr,
				'end' : info.dateStr
			});
			alert('날짜 정보 콘솔에 출력됨');
			console.log('clicked on ' + info.dateStr);
		});

		calendar.render();
 		var arrCal = calendar.getEvents();
		/*$.each(arrCal, function(index, item) {
			for (let i = 0; i < arrCal.length; i++) {
				alert(arrCal[i].title + "이벤트 조회됨");
				alert("일정정보 콘솔에 출력됨");
				console.log(arrCal[i].title);
			}
		}); */
		
		var arrTest = getCalendarDataInDB();
		$.each(arrTest, function(index, item) {
			console.log('outer loop_in_cal' + index + ' : ' + item);
			$.each(item, function(iii, ttt) {
				console.log('inner loop_in_cal => ' + iii + ' : ' + ttt);
			});

		});

		$("#btnAddTest").click(
				function() {
					alert('버튼입력');
					var arr = getCalendarDataInDB();
					$.each(arr, function(index, item) {
						calendar.addEvent(item);
						console.log('click evt loop_in_cal' + index + ' : '	+ item);
						$.each(item, function(iii, ttt) {
							console.log('click evt inner loop_in_cal => ' + iii + ' : ' + ttt);
						});
					});
					calendar.render();
				});
		$(".asdfasdf").click(
				function() {
/* 					var arr2 = [];
					var arr = [];
					var arr1 = [['title', $('.modal-sub-text').val()], ['start', $('.start-date').val()], ['end', $('.end-date').val()]]; */
					var events_array = [
				        {
				        title: $('.modal-sub-text').val(),
				        start: $('.start-date').val(),
				        end: $('.end-date').val()
				        }
				    ];
/* 					
					console.log($('.modal-sub-text').val());
					arr1.push( $('.modal-sub-text').val());
					
					console.log($('.start-date').val());
					arr1.push($('.start-date').val());
					
					console.log($('.end-date').val());
					arr1.push($('.end-date').val()); */
/* 					arr.push(arr1);
					console.log(arr1); */
					$.each(events_array, function(index, item) {
						console.log("이거아이템" + item);
						calendar.addEvent(item);
						console.log('click evt loop_in_cal' + index + ' : '	+ item);
						$.each(item, function(iii, ttt) {
							console.log(iii + ' : ' + ttt);
							console.log('click evt inner loop_in_cal => ' + iii + ' : ' + ttt);
						});
					});
					calendar.render();
				});
	});

	function getCalendarEvent() {
		var arr = [];
		return arr;
	}
	
	function getCalendarDataInDB(){
	    var arr = [];
	    
	    //배열 초기화
	    var viewData = {};
	    //data[키] = 밸류
	    viewData["id"] = $("#currId").text().trim();
	    viewData["title"] = $("#title").val();
	    viewData["content"] = $("#content").val();
	    
	    $.ajax({
	        contentType:'application/json',
	        dataType:'json',
	        url:'getMain',
	        type:'post',
	        async: false,
	        data:JSON.stringify(viewData),
	        success:function(resp){
	            $.each(resp, function(index, item){
	                console.log('맵??' + index + ' : ' + item);
	                $.each(item, function(iii, ttt){
	                    console.log('inner loop => ' + iii + ' : ' + ttt);
	                    if(iii == 'start' || iii == 'end') {
	                    	formatDate(ttt);
	                    	/* console.log(formatDate(ttt)); */
	                    	console.log('if 문 통과');
	                    }
	                	/* console.log('index_in_arr' + iii == 'start'); */
	                    arr.push(ttt);
	                    console.log(arr);
	                });
	            });
	            arr = resp;
	        },
	        error:function(){
	            alert('저장 중 에러가 발생했습니다. 다시 시도해 주세요.');
	        }
	    });
	    console.log('arrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr' + arr);
	    return arr;
	}
	
	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) 
	        month = '0' + month;
	    if (day.length < 2) 
	        day = '0' + day;

	    return [year, month, day].join('-');
	}
</script>
<style type="text/css">
#external-events {
	position: absolute;
	z-index: 2;
	top: 20px;
	left: 20px;
	width: 150px;
	padding: 0 10px;
	border: 1px solid #ccc;
	background: #eee;
}

#external-events .fc-event {
	cursor: move;
	margin: 3px 0;
}

#calendar-container {
	position: relative;
	z-index: 1;
	margin-left: 200px;
}

#calendar {
	max-width: 1100px;
	margin: 20px auto;
}
</style>
</head>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="index.html" class="logo"> <img
					src="/billbo/resources/hrtemp/img/Logo.png" width="40" height="40"
					alt="">
				</a>
			</div>
			<!-- /Logo -->

			<a id="toggle_btn" href="javascript:void(0);"> <span
				class="bar-icon"> <span></span> <span></span> <span></span>
			</span>
			</a>

			<!-- Header Title -->
			<div class="page-title-box">
				<h3>Dreamguy's Technologies</h3>
			</div>
			<!-- /Header Title -->

			<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i
				class="fa fa-bars"></i></a>

			<!-- Header Menu -->
			<ul class="nav user-menu">

				<!-- Search -->
				<li class="nav-item">
					<div class="top-nav-search">
						<a href="javascript:void(0);" class="responsive-search"> <i
							class="fa fa-search"></i>
						</a>
						<form action="search.html">
							<input class="form-control" type="text" placeholder="Search here">
							<button class="btn" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
				</li>
				<!-- /Search -->

				<!-- Flag -->
				<li class="nav-item dropdown has-arrow flag-nav"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button"> <img
						src="/billbo/resources/hrtemp/img/flags/us.png" alt="" height="20">
						<span>English</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="javascript:void(0);" class="dropdown-item"> <img
							src="/billbo/resources/hrtemp/img/flags/us.png" alt=""
							height="16"> English
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="/billbo/resources/hrtemp/img/flags/fr.png" alt=""
							height="16"> French
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="/billbo/resources/hrtemp/img/flags/es.png" alt=""
							height="16"> Spanish
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="/billbo/resources/hrtemp/img/flags/de.png" alt=""
							height="16"> German
						</a>
					</div></li>
				<!-- /Flag -->

				<!-- Notifications -->
				<li class="nav-item dropdown"><a href="#"
					class="dropdown-toggle nav-link" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="badge badge-pill">3</span>
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="activities.html">
										<div class="media">
											<span class="avatar"> <img alt=""
												src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">John Doe</span> added new task <span
														class="noti-title">Patient appointment booking</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media">
											<span class="avatar"> <img alt=""
												src="/billbo/resources/hrtemp/img/profiles/avatar-03.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Tarah Shropshire</span> changed
													the task name <span class="noti-title">Appointment
														booking with payment gateway</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media">
											<span class="avatar"> <img alt=""
												src="/billbo/resources/hrtemp/img/profiles/avatar-06.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Misty Tison</span> added <span
														class="noti-title">Domenic Houston</span> and <span
														class="noti-title">Claire Mapes</span> to project <span
														class="noti-title">Doctor available module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media">
											<span class="avatar"> <img alt=""
												src="/billbo/resources/hrtemp/img/profiles/avatar-17.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Rolland Webber</span> completed
													task <span class="noti-title">Patient and Doctor
														video conferencing</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media">
											<span class="avatar"> <img alt=""
												src="/billbo/resources/hrtemp/img/profiles/avatar-13.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Bernardo Galaviz</span> added new
													task <span class="noti-title">Private chat module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">2 days ago</span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="activities.html">View all Notifications</a>
						</div>
					</div></li>
				<!-- /Notifications -->

				<!-- Message Notifications -->
				<li class="nav-item dropdown"><a href="#"
					class="dropdown-toggle nav-link" data-toggle="dropdown"> <i
						class="fa fa-comment-o"></i> <span class="badge badge-pill">8</span>
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Messages</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a
									href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="/billbo/resources/hrtemp/img/profiles/avatar-09.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">Richard Miles </span> <span
													class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a
									href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">John Doe</span> <span
													class="message-time">6 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a
									href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="/billbo/resources/hrtemp/img/profiles/avatar-03.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Tarah Shropshire </span> <span
													class="message-time">5 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a
									href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="/billbo/resources/hrtemp/img/profiles/avatar-05.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">Mike Litorus</span> <span
													class="message-time">3 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a
									href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="/billbo/resources/hrtemp/img/profiles/avatar-08.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Catherine Manseau </span> <span
													class="message-time">27 Feb</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="chat.html">View all Messages</a>
						</div>
					</div></li>
				<!-- /Message Notifications -->

				<li class="nav-item dropdown has-arrow main-drop"><a href="#"
					class="dropdown-toggle nav-link" data-toggle="dropdown"> <span
						class="user-img"><img
							src="../resources/hrtemp/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span></span> <span>Admin</span>
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">My Profile</a> <a
							class="dropdown-item" href="settings.html">Settings</a> <a
							class="dropdown-item" href="login.html">Logout</a>
					</div></li>
			</ul>
			<!-- /Header Menu -->

			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="profile.html">My Profile</a> <a
						class="dropdown-item" href="settings.html">Settings</a> <a
						class="dropdown-item" href="login.html">Logout</a>
				</div>
			</div>
			<!-- /Mobile Menu -->

		</div>
		<!-- /Header -->

		<!-- Sidebar -->
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li><a href="${pageContext.servletContext.contextPath}"
							class="sidebar-default"> <i class="la la-home sidebar-icon"></i>
								<!-- <span class="menu-arrow"></span> --> <span
								class="sidebar-text">Home</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="${pageContext.servletContext.contextPath}/apps"
							class="sidebar-default"> <i class="la la-cube sidebar-icon"></i>
								<span class="sidebar-text"> Apps</span> <!-- <span class="menu-arrow"></span> -->
						</a></li>
						<div class="sidebar-line"></div>
						<li><a
							href="${pageContext.servletContext.contextPath}/employee"
							class="noti-dot sidebar-default"> <i
								class="la la-user sidebar-icon"></i> <span class="sidebar-text">
									Employees</span> <!-- <span class="menu-arrow"></span> -->
						</a></li>
						<div class="sidebar-line"></div>
						<li><a
							href="${pageContext.servletContext.contextPath}/attendance"
							class="sidebar-default"> <i
								class="la la-briefcase sidebar-icon"></i> <span
								class="sidebar-text">Attendance</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="${pageContext.servletContext.contextPath}/admin"
							class="sidebar-default"> <i class="la la-key sidebar-icon"></i>
								<span class="sidebar-text">Admin</span> <!-- <span class="menu-arrow"></span> -->
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="#" class="sidebar-default"> <i
								class="la la-money sidebar-icon"></i> <span class="sidebar-text">Payroll</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li><a
							href="${pageContext.servletContext.contextPath}/information"
							class="sidebar-default"> <i
								class="la la-building sidebar-icon"></i> <span
								class="sidebar-text">Information</span>
						</a></li>
						<div class="sidebar-line"></div>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Sidebar -->

		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<!-- Page Content -->
			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님의
								Schedule</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">BB_Schedule</a></li>
								<li class="breadcrumb-item active">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님</li>
							</ul>
						</div>
						<div class="col-auto float-right ml-auto">
							<a href="#" class="btn add-btn" data-toggle="modal"
								data-target="#add_event"><i class="fa fa-plus"></i> Add
								Schedule</a>
						</div>
					</div>
				</div>
				<!-- /Page Header -->

				<div class="row">
					<div class="col-lg-12">
						<div class="card mb-0">
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">

										<!-- Calendar -->
										<div id='external-events'>
											<p>
												<strong>Draggable Events</strong>
											</p>

											<div
												class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
												<div class='fc-event-main'>My Event 1</div>
											</div>
											<div
												class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
												<div class='fc-event-main'>My Event 2</div>
											</div>
											<div
												class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
												<div class='fc-event-main'>My Event 3</div>
											</div>
											<div
												class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
												<div class='fc-event-main'>My Event 4</div>
											</div>
											<div
												class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
												<div class='fc-event-main'>My Event 5</div>
											</div>

											<p>
												<input type='checkbox' id='drop-remove' /> <label
													for='drop-remove'>remove after drop</label>
											</p>
										</div>

										<div id='calendar-container'>
											<div id='calendar'></div>
										</div>
										<input type="button" id="btnAddTest" value="추가">
										<!-- /Calendar -->

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Content -->

			<!-- Add Event Modal -->
			<div id="add_event" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Add Event</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label>일정 이름 <span class="text-danger">*</span></label> <input
										class="form-control modal-sub-text" type="text">
								</div>
								<div class="form-group">
									<label>일정 기간 <span class="text-danger">*</span></label>
									<div>
										<input class="form-control datetimepicker start-date" type="date">
									</div>
									<label>종료 기간 <span class="text-danger">*</span></label>
									<div>
										<input class="form-control datetimepicker end-date" type="date">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">Category</label> <select
										class="select form-control">
										<option>개인일정</option>
										<option>부서일정</option>
										<option>Purple</option>
										<option>Primary</option>
										<option>Pink</option>
										<option>Info</option>
										<option>Inverse</option>
										<option>Orange</option>
										<option>Brown</option>
										<option>Teal</option>
										<option>Warning</option>
									</select>
								</div>
								<div class="submit-section">
									<button class="btn btn-primary submit-btn">Submit</button>
									<button type="button" class="asdfasdf">textBtn</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /Add Event Modal -->

			<!-- Event Modal -->
			<div class="modal custom-modal fade" id="event-modal">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">일정추가</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body"></div>
						<div class="modal-footer text-center">
							<button type="button"
								class="btn btn-success submit-btn save-event">Create
								event</button>
							<button type="button"
								class="btn btn-danger submit-btn delete-event"
								data-dismiss="modal">Delete</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /Event Modal -->

			<!-- Add Category Modal-->
			<div class="modal custom-modal fade" id="add-category">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Add a category</h4>
						</div>
						<div class="modal-body p-20">
							<form>
								<div class="row">
									<div class="col-md-6">
										<label class="col-form-label">Category Name</label> <input
											class="form-control" placeholder="Enter name" type="text"
											name="category-name">
									</div>
									<div class="col-md-6">
										<label class="col-form-label">Choose Category Color</label> <select
											class="form-control" data-placeholder="Choose a color..."
											name="category-color">
											<option value="success">개인</option>
											<option value="danger">부서</option>
											<option value="info">Info</option>
											<option value="pink">Pink</option>
											<option value="primary">Primary</option>
											<option value="warning">Warning</option>
											<option value="orange">Orange</option>
											<option value="brown">Brown</option>
											<option value="teal">Teal</option>
										</select>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-danger save-category"
								data-dismiss="modal">Save</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /Add Category Modal-->

		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="../resources/hrtemp/js/jquery-3.5.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="../resources/hrtemp/js/popper.min.js"></script>
	<script src="../resources/hrtemp/js/bootstrap.min.js"></script>


	<!-- Slimscroll JS -->
	<script src="../resources/hrtemp/js/jquery.slimscroll.min.js"></script>

	<!-- Datatable JS -->
	<script src="../resources/hrtemp/js/jquery.dataTables.min.js"></script>
	<script src="../resources/hrtemp/js/dataTables.bootstrap4.min.js"></script>

	<!-- Custom JS -->
	<!-- 	<script src="../resources/hrtemp/js/app.js"></script> -->

	<!-- Datetimepicker JS -->
	<script src="../resources/hrtemp/js/bootstrap-datetimepicker.min.js"></script>

</body>
</html>