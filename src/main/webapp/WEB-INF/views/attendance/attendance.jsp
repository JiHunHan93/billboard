<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Attendance - HRMS admin template</title>
        	<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
		<link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="assets/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
         
				<!-- Logo -->
					<div class="header-left">
						<a href="employee-dashboard.html" class="logo">
					  <img src="assets/img/Logo.png" width="40" height="40" alt="">
				   </a>
					</div>
				<!-- /Logo -->
				
				<a id="toggle_btn" href="javascript:void(0);">
				   <span class="bar-icon">
					  <span></span>
					  <span></span>
					  <span></span>
				   </span>
				</a>
				
				<!-- Header Title -->
					<div class="page-title-box">
				   <h3>Bill-Board Employee Management</h3>
					</div>
				<!-- /Header Title -->
				
				<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars"></i></a>
				
				<!-- Header Menu -->
				<ul class="nav user-menu">
				
				   <!-- Search -->
				   <li class="nav-item">
					  <div class="top-nav-search">
						 <a href="javascript:void(0);" class="responsive-search">
							<i class="fa fa-search"></i>
						 </a>
						 <form action="search.html">
							<input class="form-control" type="text" placeholder="Search here">
							<button class="btn" type="submit"><i class="fa fa-search"></i></button>
						 </form>
					  </div>
				   </li>
				   <!-- /Search -->
				
				   <!-- Flag -->
				   <li class="nav-item dropdown has-arrow flag-nav">
					  <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button">
						 <img src="assets/img/flags/us.png" alt="" height="20"> <span>English</span>
					  </a>
					  <div class="dropdown-menu dropdown-menu-right">
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="assets/img/flags/us.png" alt="" height="16"> English
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="assets/img/flags/fr.png" alt="" height="16"> French
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="assets/img/flags/es.png" alt="" height="16"> Spanish
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="assets/img/flags/de.png" alt="" height="16"> German
						 </a>
					  </div>
				   </li>
				   <!-- /Flag -->
				
				   <!-- Notifications -->
				   <li class="nav-item dropdown">
					  <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
						 <i class="fa fa-bell-o"></i> <span class="badge badge-pill">3</span>
					  </a>
					  <div class="dropdown-menu notifications">
						 <div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span>
							<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
						 </div>
						 <div class="noti-content">
							<ul class="notification-list">
							   <li class="notification-message">
								  <a href="activities.html">
									 <div class="media">
										<span class="avatar">
										   <img alt="" src="assets/img/profiles/avatar-02.jpg">
										</span>
										<div class="media-body">
										   <p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
										   <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="activities.html">
									 <div class="media">
										<span class="avatar">
										   <img alt="" src="assets/img/profiles/avatar-03.jpg">
										</span>
										<div class="media-body">
										   <p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
										   <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="activities.html">
									 <div class="media">
										<span class="avatar">
										   <img alt="" src="assets/img/profiles/avatar-06.jpg">
										</span>
										<div class="media-body">
										   <p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
										   <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="activities.html">
									 <div class="media">
										<span class="avatar">
										   <img alt="" src="assets/img/profiles/avatar-17.jpg">
										</span>
										<div class="media-body">
										   <p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
										   <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="activities.html">
									 <div class="media">
										<span class="avatar">
										   <img alt="" src="assets/img/profiles/avatar-13.jpg">
										</span>
										<div class="media-body">
										   <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
										   <p class="noti-time"><span class="notification-time">2 days ago</span></p>
										</div>
									 </div>
								  </a>
							   </li>
							</ul>
						 </div>
						 <div class="topnav-dropdown-footer">
							<a href="activities.html">View all Notifications</a>
						 </div>
					  </div>
				   </li>
				   <!-- /Notifications -->
				   
				   <!-- Message Notifications -->
				   <li class="nav-item dropdown">
					  <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
						 <i class="fa fa-comment-o"></i> <span class="badge badge-pill">8</span>
					  </a>
					  <div class="dropdown-menu notifications">
						 <div class="topnav-dropdown-header">
							<span class="notification-title">Messages</span>
							<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
						 </div>
						 <div class="noti-content">
							<ul class="notification-list">
							   <li class="notification-message">
								  <a href="chat.html">
									 <div class="list-item">
										<div class="list-left">
										   <span class="avatar">
											  <img alt="" src="assets/img/profiles/avatar-09.jpg">
										   </span>
										</div>
										<div class="list-body">
										   <span class="message-author">Richard Miles </span>
										   <span class="message-time">12:28 AM</span>
										   <div class="clearfix"></div>
										   <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="chat.html">
									 <div class="list-item">
										<div class="list-left">
										   <span class="avatar">
											  <img alt="" src="assets/img/profiles/avatar-02.jpg">
										   </span>
										</div>
										<div class="list-body">
										   <span class="message-author">John Doe</span>
										   <span class="message-time">6 Mar</span>
										   <div class="clearfix"></div>
										   <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="chat.html">
									 <div class="list-item">
										<div class="list-left">
										   <span class="avatar">
											  <img alt="" src="assets/img/profiles/avatar-03.jpg">
										   </span>
										</div>
										<div class="list-body">
										   <span class="message-author"> Tarah Shropshire </span>
										   <span class="message-time">5 Mar</span>
										   <div class="clearfix"></div>
										   <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="chat.html">
									 <div class="list-item">
										<div class="list-left">
										   <span class="avatar">
											  <img alt="" src="assets/img/profiles/avatar-05.jpg">
										   </span>
										</div>
										<div class="list-body">
										   <span class="message-author">Mike Litorus</span>
										   <span class="message-time">3 Mar</span>
										   <div class="clearfix"></div>
										   <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
										</div>
									 </div>
								  </a>
							   </li>
							   <li class="notification-message">
								  <a href="chat.html">
									 <div class="list-item">
										<div class="list-left">
										   <span class="avatar">
											  <img alt="" src="assets/img/profiles/avatar-08.jpg">
										   </span>
										</div>
										<div class="list-body">
										   <span class="message-author"> Catherine Manseau </span>
										   <span class="message-time">27 Feb</span>
										   <div class="clearfix"></div>
										   <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
										</div>
									 </div>
								  </a>
							   </li>
							</ul>
						 </div>
						 <div class="topnav-dropdown-footer">
							<a href="chat.html">View all Messages</a>
						 </div>
					  </div>
				   </li>
				   <!-- /Message Notifications -->
	   
				   <li class="nav-item dropdown has-arrow main-drop">
					  <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
						 <span class="user-img"><img src="assets/img/profiles/avatar-21.jpg" alt="">
						 <span class="status online"></span></span>
						 <span><!-- 해당 사원 명 --></span>
					  </a>
					  <div class="dropdown-menu">
						 <a class="dropdown-item" data-toggle="modal" data-target="#Profile-Modal">내 정보</a>
						 <a class="dropdown-item" href="settings.html">환경설정</a>
						 <a class="dropdown-item" href="login.html">로그아웃</a>
					  </div>
				   </li>
				</ul>

				

				<!-- /Header Menu -->
				
				<!-- Mobile Menu -->
				<div class="dropdown mobile-user-menu">
				   <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
				   <div class="dropdown-menu dropdown-menu-right">
					  <a class="dropdown-item" data-toggle="modal" href="profile.html">내 정보</a>
					  <a class="dropdown-item" href="settings.html">환경설정</a>
					  <a class="dropdown-item" href="login.html">로그아웃</a>
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
                     <li class="submenu">
                        <a href="employee-dashboard.html" class="sidebar-default">   
                           <i class="la la-home sidebar-icon"></i>                        
                           <!-- <span class="menu-arrow"></span> -->
                           <span class="sidebar-text">Home</span>
                        </a>
                       
                     </li>
                     <div class="sidebar-line"></div>
                     <li class="submenu">
                        <a href="#" class="sidebar-default">
                           <i class="la la-cube sidebar-icon"></i> 
                           <span class="sidebar-text"> Apps</span> 
                           <!-- <span class="menu-arrow"></span> -->
                        </a>
                       
                        </ul> -->
                     </li>
                     <div class="sidebar-line"></div>
                     <!-- <li class="menu-title"> 
                        <span>Apps</span>
                     </li> -->
                     <li>
                        <a href="category-Employee.html" class="noti-dot sidebar-default">
                           <i class="la la-user sidebar-icon"></i>
                           <span class="sidebar-text"> Employees</span>
                           <!-- <span class="menu-arrow"></span> -->
                        </a>
                       
                     </li>
                     <div class="sidebar-line"></div>
                     <li> 
                        <a href="category-Attendance.html" class="sidebar-default">
                           <i class="la la-briefcase sidebar-icon"></i>
                           <span class="sidebar-text">Attendance</span>
                        </a>
                     </li>
                     <div class="sidebar-line"></div>
                     <li>
                        <a href="category-Admin.html" class="sidebar-default">
                           <i class="la la-key sidebar-icon"></i>
                           <span class="sidebar-text">Admin</span>
                           <!-- <span class="menu-arrow"></span> -->
                        </a>
                        <!-- <ul style="display: none;">
                           <li><a href="projects.html">Projects</a></li>
                           <li><a href="tasks.html">Tasks</a></li>
                           <li><a href="task-board.html">Task Board</a></li>   
                        </ul> -->
                     </li>
                     <div class="sidebar-line"></div>
                     <li> 
                        <a href="category-Payroll.html" class="sidebar-default">
                           <i class="la la-money sidebar-icon"></i>
                           <span class="sidebar-text">Payroll</span>
                        </a>
                     </li>
                     <div class="sidebar-line"></div>
                     <li> 
                        <a href="category-Information.html" class="sidebar-default">
                           <i class="la la-building sidebar-icon"></i>
                           <span class="sidebar-text">Information</span>
                        </a>
                     </li>
                     <div class="sidebar-line"></div>
                     
                  </ul>
               </div>
                </div>
            </div>
         <!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">출결관리</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">김태헌</a></li>
									<li class="breadcrumb-item active">님 환영합니다</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-4">
							<div class="card punch-status">
								<div class="card-body" style="height : 460px">
									<h5 class="card-title">오늘의 근무</h5> <small class="text-muted">
										<h1 class="poscenter white alignleft">
											<span id="clock"></span>
										</h1>
										<h3>
											<span id="date"></span>
										</h3>
										</small>
										
 
									<div class="punch-det">
						
										<h6>출근시간:</h6><!--출근버튼 클릭시 기입-->
										<h6>퇴근시간:</h6><!--퇴근버튼 클릭시 기입 -->
										<h6>주간 누적 근무 시간:</h6>									</div>
									<div class="punch-info">
										<div class="punch-hours">
											<span>0.00 hrs</span>
										</div>
									</div>
									<div class="custom-punch-btn-section">
										<button type="button" class="btn btn-primary custom-punch-btn">출근</button>
									</div>
									<div class="custom-punch-btn-section">
										<button type="button" class="btn btn-primary custom-punch-btn">퇴근</button>
									</div>
									<div class="statistics">
										<div class="row">
											<div class="col-md-6 col-6 text-center">
												<!-- <div class="stats-box">
													<p>출근</p>
													
												</div> -->
											</div>
											<!-- <div class="col-md-6 col-6 text-center1">
												<div class="stats-box">
													<p>Overtime</p>
													<h6>3 hrs</h6>
												</div> 필요없을듯
											</div> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card att-statistics">
								<div class="card-body" style="height : 460px">
									<h5 class="card-title">총 근무 시간</h5><!--총근무시간제목부분 -->
									<div class="stats-list">
										<div class="stats-info">
											<p>오늘 <strong>3.45 <small>/ 8 hrs</small></strong></p>
											<div class="progress">
												<div class="progress-bar bg-primary" role="progressbar" style="width: 31%" aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<div class="stats-info">
											<p>이번주 <strong>28 <small>/ 40 hrs</small></strong></p>
											<div class="progress">
												<div class="progress-bar bg-warning" role="progressbar" style="width: 31%" aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<div class="stats-info">
											<p>이번달 <strong>90 <small>/ 160 hrs</small></strong></p>
											<div class="progress">
												<div class="progress-bar bg-success" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<div class="stats-info">
											<p>남은시간 <strong>90 <small>/ 160 hrs</small></strong></p>
											<div class="progress">
												<div class="progress-bar bg-danger" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<div class="stats-info">
											<p>초과근무<strong>4</strong></p>
											<div class="progress">
												<div class="progress-bar bg-info" role="progressbar" style="width: 22%" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card recent-activity">
								<div class="card-body" style="height : 460px">
									<h5 class="card-title"> 결재 알림 </h5>
									<ul class="res-activity-list" >
										<li>
											<div class="punch-det-small"> 
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												10.00 AM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												11.00 AM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												11.15 AM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												1.30 PM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												2.00 PM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												2.00 PM.
											</p>
											</div>
										</li>
										<li>
											<div class="punch-det-small">
											<p class="res-activity-time">
												<i class="fa fa-clock-o"></i>
												2.00 PM.
											</p>
											</div>
										</li>
										
									</ul>
								</div>
							</div>
						</div>
					</div>

				
                </div>
				<!-- /Page Content -->
				
            </div>
			<!-- Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->

		<!-- Profile Modal -->
		<div class="modal custom-modal fade" id="Profile-Modal" role="dialog">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			   <div class="modal-content">
				  <div class="modal-header">
					 <h5 class="modal-title">연차 신청 양식</h5>
					 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		
		<!-- Select2 JS -->
		<script src="assets/js/select2.min.js"></script>
		
		<!-- Datetimepicker JS -->
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
	


</body>
</html>