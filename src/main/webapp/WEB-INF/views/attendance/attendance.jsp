<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="Smarthr - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>Attendance - HRMS admin template</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="./resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="./resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet"
	href="./resources/hrtemp/css/line-awesome.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="./resources/hrtemp/css/select2.min.css">

<!-- Datetimepicker CSS -->
<link rel="stylesheet"
	href="./resources/hrtemp/css/bootstrap-datetimepicker.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="./resources/hrtemp/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="./resources/hrtemp/js/html5shiv.min.js"></script>
			<script src="./resources/hrtemp/js/respond.min.js"></script>
		<![endif]-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="employee-dashboard.html" class="logo"> <img
					src="./resources/hrtemp/img/Logo.png" width="40" height="40" alt="">
				</a>
			</div>
			<!-- /Logo -->

			<a id="toggle_btn" href="javascript:void(0);"> <span
				class="bar-icon"> <span></span> <span></span> <span></span>
			</span>
			</a>

			<!-- Header Title -->
			<div class="page-title-box">
				<h3>Bill-Board Employee Management</h3>
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
					role="button"> <img src="./resources/hrtemp/img/flags/us.png"
						alt="" height="20"> <span>English</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="javascript:void(0);" class="dropdown-item"> <img
							src="./resources/hrtemp/img/flags/us.png" alt="" height="16">
							English
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="./resources/hrtemp/img/flags/fr.png" alt="" height="16">
							French
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="./resources/hrtemp/img/flags/es.png" alt="" height="16">
							Spanish
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="./resources/hrtemp/img/flags/de.png" alt="" height="16">
							German
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
												src="./resources/hrtemp/img/profiles/avatar-02.jpg">
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
												src="./resources/hrtemp/img/profiles/avatar-03.jpg">
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
												src="./resources/hrtemp/img/profiles/avatar-06.jpg">
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
												src="./resources/hrtemp/img/profiles/avatar-17.jpg">
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
												src="./resources/hrtemp/img/profiles/avatar-13.jpg">
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
				<form name="update"
					action="${pageContext.servletContext.contextPath }/work/regist"
					method="post">
					<button class="btn btn-dark btn-lg" style="margin-left: -10px">출근
						등록</button>
				</form>
				<form name="update"
					action="${pageContext.servletContext.contextPath }/work/update"
					method="post">

					<button class="btn btn-success btn-lg" style="margin-left: 25px">퇴근
						등록</button>
				</form>
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
								<li class="notification-message"><a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="./resources/hrtemp/img/profiles/avatar-09.jpg">
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
								<li class="notification-message"><a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="./resources/hrtemp/img/profiles/avatar-02.jpg">
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
								<li class="notification-message"><a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="./resources/hrtemp/img/profiles/avatar-03.jpg">
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
								<li class="notification-message"><a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="./resources/hrtemp/img/profiles/avatar-05.jpg">
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
								<li class="notification-message"><a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="./resources/hrtemp/img/profiles/avatar-08.jpg">
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
							src="./resources/hrtemp/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span></span> <span>
							<!-- 해당 사원 명 -->
					</span>
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" data-toggle="modal"
							data-target="#Profile-Modal">내 정보</a> <a class="dropdown-item"
							href="settings.html">환경설정</a> <a class="dropdown-item"
							href="login.html">로그아웃</a>
					</div></li>
			</ul>



			<!-- /Header Menu -->

			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" data-toggle="modal" href="profile.html">내
						정보</a> <a class="dropdown-item" href="settings.html">환경설정</a> <a
						class="dropdown-item" href="login.html">로그아웃</a>
				</div>
			</div>

			<!-- /Mobile Menu -->

			<!-- /Header -->

			<!-- Sidebar -->
			<div class="sidebar" id="sidebar">
				<div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<!-- <li class="menu-title"> 
                        <span>Main</span>
                     </li> -->
							<!-- 사이드바 서브메뉴 안쓰는 방향으로 수정 -->
							<li class="submenu"><a href="employee-dashboard.html"
								class="sidebar-default"> <i class="la la-home sidebar-icon"></i>
									<!-- <span class="menu-arrow"></span> --> <span
									class="sidebar-text">Home</span>
							</a></li>
							<div class="sidebar-line"></div>
							<li class="submenu"><a href="#" class="sidebar-default">
									<i class="la la-cube sidebar-icon"></i> <span
									class="sidebar-text"> Apps</span> <!-- <span class="menu-arrow"></span> -->
							</a>
						</ul>
						-->
						</li>
						<div class="sidebar-line"></div>
						<!-- <li class="menu-title"> 
                        <span>Apps</span>
                     </li> -->
						<li><a href="category-Employee.html"
							class="noti-dot sidebar-default"> <i
								class="la la-user sidebar-icon"></i> <span class="sidebar-text">
									Employees</span> <!-- <span class="menu-arrow"></span> -->
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="category-Attendance.html"
							class="sidebar-default"> <i
								class="la la-briefcase sidebar-icon"></i> <span
								class="sidebar-text">Attendance</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="category-Admin.html" class="sidebar-default">
								<i class="la la-key sidebar-icon"></i> <span
								class="sidebar-text">Admin</span> <!-- <span class="menu-arrow"></span> -->
						</a> <!-- <ul style="display: none;">
                           <li><a href="projects.html">Projects</a></li>
                           <li><a href="tasks.html">Tasks</a></li>
                           <li><a href="task-board.html">Task Board</a></li>   
                        </ul> --></li>
						<div class="sidebar-line"></div>
						<li><a href="category-Payroll.html" class="sidebar-default">
								<i class="la la-money sidebar-icon"></i> <span
								class="sidebar-text">Payroll</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li><a href="category-Information.html"
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
												초과근무<strong>4</strong>
											</p>
											<div class="progress">
												<div class="progress-bar bg-info" role="progressbar"
													style="width: 22%" aria-valuenow="22" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card recent-activity">
								<div class="card-body" style="height: 460px">
									<h5 class="card-title">결재 알림</h5>
									<ul class="res-activity-list">
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 10.00 AM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 11.00 AM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 11.15 AM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 1.30 PM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 2.00 PM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 2.00 PM.
												</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
												<p class="res-activity-time">
													<i class="fa fa-clock-o"></i> 2.00 PM.
												</p>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</div>
					</div>
					<button onclick="showClock()">show clock</button>
					<input type="text" id="kk" size="30" readonly>

				</div>
				<!-- /Page Content -->

			</div>
			<!-- Page Wrapper -->

		</div>
		<!-- /Main Wrapper -->

		<!-- Profile Modal -->
		<div class="modal custom-modal fade" id="Profile-Modal" role="dialog">
			<div class="modal-dialog modal-dialog-centered modal-lg"
				role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">연차 신청 양식</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">


							<button class="btn btn-success modal-sub-submit-btn">작성하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Profile Modal -->
		<script>
     
 
        // 기준일 계산하는 웹페이지
        function clickBtn(){
            // 입력된 날짜 얻어오기
            var e= document.getElementById('ss');
            var s=e.value;
            document.write(s+'<br>');
 
            var a= new Date(s); // 입력된 날짜로 Date()객체 생성
            var b= new Date(); //현재 날짜
 
            // 입력된 날짜와 현재 날짜의 차이 계산
           /*  var diff= b-a;
            day= Math.floor(diff/(1000*60*60*24)); //floor 반올림을 안하고 없애버림.
  */
            if(day>0) document.write('오늘로 부터 :'+day+'일전 <br>');
            else if(day<0) document.write('오늘로 부터 :'+(-day)+'일후 <br>');
            else document.write('오늘 <br>');
        }
 
        // 디지털 시계... 일정시간(1초)마다 현재 날짜 출력
        function showClock(){
 
            var s =new Date(); //현재 시간
            var e= document.getElementById('kk');
            e.value=s.toLocaleString();
 
            // 1초 후에 showClock()함수를 실행하시오.
          //  setTimeout('showClock()', 1000); //JS에 이미 존재하는 함수
        }
 
    </script>
		<script type="text/javascript">

    setInterval("clock()",1000);
    function clock(){
       var now = new Date();
        hours = now.getHours();
        minutes = now.getMinutes();
        seconds = now.getSeconds();
 
        if (hours > 12){
            hours -= 12;
        ampm = "오후 ";
        }else{
            ampm = "오전 ";
        }
        if (hours < 10){
            hours = "0" + hours;
        }
        if (minutes < 10){
            minutes = "0" + minutes;
        }
        if (seconds < 10){
            seconds = "0" + seconds;
        }
document.getElementById("clock").innerHTML = ampm + hours + ":" + minutes + ":" + seconds;
    }

</script>
		<script type="text/javascript">
  todayIs();
 
    function todayIs() {
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; // Jan is 0
        var yyyy = today.getFullYear();
 
        if(dd<10){
            dd = '0'+dd
        }
        if(mm<10){
            mm = '0'+mm
        }
 
        today = yyyy + '-' + mm + '-' + dd;
        //alert(today);
        document.getElementById("date").innerHTML = today;
        //$('#date').text(today);
    }
    </script>

		<!-- jQuery -->
		<script src="./resources/hrtemp/js/jquery-3.5.1.min.js"></script>

		<!-- Bootstrap Core JS -->
		<script src="./resources/hrtemp/js/popper.min.js"></script>
		<script src="./resources/hrtemp/js/bootstrap.min.js"></script>

		<!-- Slimscroll JS -->
		<script src="./resources/hrtemp/js/jquery.slimscroll.min.js"></script>

		<!-- Select2 JS -->
		<script src="./resources/hrtemp/js/select2.min.js"></script>

		<!-- Datetimepicker JS -->
		<script src="./resources/hrtemp/js/moment.min.js"></script>
		<script src="./resources/hrtemp/js/bootstrap-datetimepicker.min.js"></script>

		<!-- Custom JS -->
		<script src="./resources/hrtemp/js/app.js"></script>

		<script type="text/javascript">
 
 function showTime(){
  var dd=new Date();
  var str = dd.getHours()+"시" +
      dd.getMinutes()+"분"+
      dd.getSeconds()+"초";
  var span=document.getElementById("today");
  span.innerHTML=str;
 }
 
 

</script>
</body>
</html>