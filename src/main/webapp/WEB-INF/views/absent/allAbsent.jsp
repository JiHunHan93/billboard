<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Employee Dashboard - HRMS admin template</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/part.css">
		<link rel="stylesheet" href="assets/css/part1.css">
        <link rel="stylesheet" href="assets/css/part2.css">
        <link rel="stylesheet" href="assets/css/part3.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Loader -->
			<div id="loader-wrapper">
				<div id="loader">
					<div class="loader-ellips">
					  <span class="loader-ellips__dot"></span>
					  <span class="loader-ellips__dot"></span>
					  <span class="loader-ellips__dot"></span>
					  <span class="loader-ellips__dot"></span>
					</div>
				</div>
			</div>
			<!-- /Loader -->
		
					<!-- 헤더 들어갈부분 -->
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
			 <a class="dropdown-item" href="profile.html">내 정보</a>
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
		  <a class="dropdown-item" href="profile.html">내 정보</a>
		  <a class="dropdown-item" href="settings.html">환경설정</a>
		  <a class="dropdown-item" href="login.html">로그아웃</a>
	   </div>
	</div>
	<!-- /Mobile Menu -->
	
	</div>
 <!-- /Header -->
		<!-- 헤더 끝 -->

		<!-- 사이드바시작 -->
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
					<!-- <ul style="display: none;">
					   <li><a href="index.html">Admin Dashboard</a></li>
					   <li><a class="active" href="employee-dashboard.html">Employee Dashboard</a></li>
					</ul> -->
				 </li>
				 <div class="sidebar-line"></div>
				 <li class="submenu">
					<a href="#" class="sidebar-default">
					   <i class="la la-cube sidebar-icon"></i> 
					   <span class="sidebar-text"> Apps</span> 
					   <!-- <span class="menu-arrow"></span> -->
					</a>
					<!-- <ul style="display: none;">
					   <li><a href="chat.html">Chat</a></li>
					   <li class="submenu">
						  <a href="#"><span> Calls</span> <span class="menu-arrow"></span></a>
						  <ul style="display: none;">
							 <li><a href="voice-call.html">Voice Call</a></li>
							 <li><a href="video-call.html">Video Call</a></li>
							 <li><a href="outgoing-call.html">Outgoing Call</a></li>
							 <li><a href="incoming-call.html">Incoming Call</a></li>
						  </ul>
					   </li>
					   <li><a href="events.html">Calendar</a></li>
					   <li><a href="contacts.html">Contacts</a></li>
					   <li><a href="inbox.html">Email</a></li>
					   <li><a href="file-manager.html">File Manager</a></li>
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
					<!-- <ul style="display: none;">
					   <li><a href="employees.html">All Employees</a></li>
					   <li><a href="holidays.html">Holidays</a></li>
					   <li><a href="leaves.html">Leaves (Admin) <span class="badge badge-pill bg-primary float-right">1</span></a></li>
					   <li><a href="leaves-employee.html">Leaves (Employee)</a></li>
					   <li><a href="leave-settings.html">Leave Settings</a></li>
					   <li><a href="attendance.html">Attendance (Admin)</a></li>
					   <li><a href="attendance-employee.html">Attendance (Employee)</a></li>
					   <li><a href="departments.html">Departments</a></li>
					   <li><a href="designations.html">Designations</a></li>
					   <li><a href="timesheet.html">Timesheet</a></li>
					   <li><a href="overtime.html">Overtime</a></li>
					</ul> -->
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
				 <!-- <li class="menu-title"> 
					<span>HR</span>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-files-o"></i> <span> Accounts </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="estimates.html">Estimates</a></li>
					   <li><a href="invoices.html">Invoices</a></li>
					   <li><a href="payments.html">Payments</a></li>
					   <li><a href="expenses.html">Expenses</a></li>
					   <li><a href="provident-fund.html">Provident Fund</a></li>
					   <li><a href="taxes.html">Taxes</a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-money"></i> <span> Payroll </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="salary.html"> Employee Salary </a></li>
					   <li><a href="salary-view.html"> Payslip </a></li>
					   <li><a href="payroll-items.html"> Payroll Items </a></li>
					</ul>
				 </li>
				 <li> 
					<a href="policies.html"><i class="la la-file-pdf-o"></i> <span>Policies</span></a>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-pie-chart"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="expense-reports.html"> Expense Report </a></li>
					   <li><a href="invoice-reports.html"> Invoice Report </a></li>
					</ul>
				 </li>
				 <li class="menu-title"> 
					<span>Performance</span>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-graduation-cap"></i> <span> Performance </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="performance-indicator.html"> Performance Indicator </a></li>
					   <li><a href="performance.html"> Performance Review </a></li>
					   <li><a href="performance-appraisal.html"> Performance Appraisal </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-crosshairs"></i> <span> Goals </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="goal-tracking.html"> Goal List </a></li>
					   <li><a href="goal-type.html"> Goal Type </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-edit"></i> <span> Training </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="training.html"> Training List </a></li>
					   <li><a href="trainers.html"> Trainers</a></li>
					   <li><a href="training-type.html"> Training Type </a></li>
					</ul>
				 </li>
				 <li><a href="promotion.html"><i class="la la-bullhorn"></i> <span>Promotion</span></a></li>
				 <li><a href="resignation.html"><i class="la la-external-link-square"></i> <span>Resignation</span></a></li>
				 <li><a href="termination.html"><i class="la la-times-circle"></i> <span>Termination</span></a></li>
				 <li class="menu-title"> 
					<span>Administration</span>
				 </li>
				 <li> 
					<a href="assets.html"><i class="la la-object-ungroup"></i> <span>Assets</span></a>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-briefcase"></i> <span> Jobs </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="jobs.html"> Manage Jobs </a></li>
					   <li><a href="job-applicants.html"> Applied Candidates </a></li>
					</ul>
				 </li>
				 <li> 
					<a href="knowledgebase.html"><i class="la la-question"></i> <span>Knowledgebase</span></a>
				 </li>
				 <li> 
					<a href="activities.html"><i class="la la-bell"></i> <span>Activities</span></a>
				 </li>
				 <li> 
					<a href="users.html"><i class="la la-user-plus"></i> <span>Users</span></a>
				 </li>
				 <li> 
					<a href="settings.html"><i class="la la-cog"></i> <span>Settings</span></a>
				 </li>
				 <li class="menu-title"> 
					<span>Pages</span>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-user"></i> <span> Profile </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="profile.html"> Employee Profile </a></li>
					   <li><a href="client-profile.html"> Client Profile </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-key"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="login.html"> Login </a></li>
					   <li><a href="register.html"> Register </a></li>
					   <li><a href="forgot-password.html"> Forgot Password </a></li>
					   <li><a href="otp.html"> OTP </a></li>
					   <li><a href="lock-screen.html"> Lock Screen </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-exclamation-triangle"></i> <span> Error Pages </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="error-404.html">404 Error </a></li>
					   <li><a href="error-500.html">500 Error </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-hand-o-up"></i> <span> Subscriptions </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="subscriptions.html"> Subscriptions (Admin) </a></li>
					   <li><a href="subscriptions-company.html"> Subscriptions (Company) </a></li>
					   <li><a href="subscribed-companies.html"> Subscribed Companies</a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-columns"></i> <span> Pages </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="search.html"> Search </a></li>
					   <li><a href="faq.html"> FAQ </a></li>
					   <li><a href="terms.html"> Terms </a></li>
					   <li><a href="privacy-policy.html"> Privacy Policy </a></li>
					   <li><a href="blank-page.html"> Blank Page </a></li>
					</ul>
				 </li>
				 <li class="menu-title"> 
					<span>UI Interface</span>
				 </li>
				 <li> 
					<a href="components.html"><i class="la la-puzzle-piece"></i> <span>Components</span></a>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-object-group"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="form-basic-inputs.html">Basic Inputs </a></li>
					   <li><a href="form-input-groups.html">Input Groups </a></li>
					   <li><a href="form-horizontal.html">Horizontal Form </a></li>
					   <li><a href="form-vertical.html"> Vertical Form </a></li>
					   <li><a href="form-mask.html"> Form Mask </a></li>
					   <li><a href="form-validation.html"> Form Validation </a></li>
					</ul>
				 </li>
				 <li class="submenu">
					<a href="#"><i class="la la-table"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li><a href="tables-basic.html">Basic Tables </a></li>
					   <li><a href="data-tables.html">Data Table </a></li>
					</ul>
				 </li>
				 <li class="menu-title"> 
					<span>Extras</span>
				 </li>
				 <li> 
					<a href="#"><i class="la la-file-text"></i> <span>Documentation</span></a>
				 </li>
				 <li> 
					<a href="javascript:void(0);"><i class="la la-info"></i> <span>Change Log</span> <span class="badge badge-primary ml-auto">v3.4</span></a>
				 </li>
				 <li class="submenu">
					<a href="javascript:void(0);"><i class="la la-share-alt"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
					   <li class="submenu">
						  <a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
						  <ul style="display: none;">
							 <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
							 <li class="submenu">
								<a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
								   <li><a href="javascript:void(0);">Level 3</a></li>
								   <li><a href="javascript:void(0);">Level 3</a></li>
								</ul>
							 </li>
							 <li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
						  </ul>
					   </li>
					   <li>
						  <a href="javascript:void(0);"> <span>Level 1</span></a>
					   </li>
					</ul>
				 </li> -->
			  </ul>
		   </div>
			</div>
		</div>
	 <!-- /Sidebar -->
		<!-- 사이드바 끝 -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
			
				<div class="go_content" id="content">
					<div>
						<header class="content_top">
					<h1>
							<span class="txt single_txt">부서 근태현황</span>
				
					</h1>
				</header>
						<!-- tool bar -->
				<div class="content_page">
				
						<div class="tool_bar calendar_tool_bar">
							<div class="current_date">
								<span class="btn_ic_prev2 btn_border" title="이전" id="prevDate"><span class="ic_ehr ic_date_prev"></span></span>
								<span class="date" id="searchDate">2021-02-01 ~ 2021-02-07</span>
								<span class="btn_ic_next2 btn_border" title="" id="nextDate"><span class="ic_ehr ic_date_next"></span></span>
								<input id="calendarDatepicker" type="text" style="border:0px;width:0px;height:0px;" class="hasDatepicker">
								<span class="btn_tool"><span class="txt" id="todayBtn">오늘</span></span>
								
				</div>
						<!-- //tool bar -->
						<!-- ehr datatable -->
						<div class="wrap_tb_box">
								<section class="tool_bar">
									<div class="critical" id="filter_parent"><div class="table_search table_search_ehr">                    <div id="filter_main" class="">
												<span class="wrap_select">
												<select id="filter_type" class="">
													<option value="none">검색조건 선택</option>
													<option value="totalTime">누적근무시간</option>
													<option value="userName">부서원</option>
													<option value="groupName">그룹명</option>
												</select>
												</span>
				
				
										</div></div></div>
										<div class="optional">
											<!--<a id="xlsxDownBtn" class="btn_tool"><span class="txt">목록 다운로드</span></a>-->
											<div id="timeline_list_length" class="dataTables_length"><label> 
					<select class="tb_paging select_box">
						<option value="20">20</option>
						<option value="40">40</option>
						<option value="60">60</option>
						<option value="80">80</option>
					</select>
				</label><div class="btn_submenu"><a class="btn_tool btn_tool_multi" id="downloadFile">    <span class="ic_toolbar download"></span>    </a><span class="btn_func_more" id="submenuBtn" backdrop-toggle="true" el-backdrop-link="" style="display: none;"><span class="ic ic_arrow_type3"></span></span><div class="array_option list_download" id="downloadSubMenu" style="display: none"><ul class="array_type"><li id="downloadFile_sub"><span>항목 모두 다운로드</span></li><li id="downloadFile_sub2"><span>출/퇴근 시간 다운로드</span></li><li id="downloadFile_sub3"><span>선택적 근무 다운로드</span></li></ul></div><a id="hiddenDownloadFile" data-role="button" href="" style="display:none"></a><form id="download_file_form" method="GET" style="display: none"><div id="download_file_form_div"> </div><input type="hidden" value="" name="downloadTokenId" id="downloadTokenId"></form><iframe name="ifm_download_file_form" id="ifm_download_file_form" style="border:0px;width:0px;height:0px;"></iframe></div></div>
										</div>
									</section>
				
							<div class="wrap_tb_shadow">
								<table class="type_normal type_white type_white_depart tb_ehr_flexible">
									<thead>
										<tr id="timeline_stat_title"><th class="sorting_disabled name"><span class="title_sort">이름</span></th><th class="sorting total_time"><span id="timeSort" class="title_sort">누적근무시간<ins class="ic"></ins></span></th><th class="sorting_disabled days">
				<span class="title_sort">01 월</span>
				</th><th class="sorting_disabled days">
				<span class="title_sort">02 화</span>
				</th><th class="sorting_disabled days">
				<span class="title_sort">03 수</span>
				</th><th class="sorting_disabled days">
				<span class="title_sort">04 목</span>
				</th><th class="sorting_disabled days">
				<span class="title_sort">05 금</span>
				</th><th class="sorting_disabled days day_sat">
				<span class="title_sort">06 토</span>
				</th><th class="sorting_disabled days day_sun">
				<span class="title_sort">07 일</span>
				</th></tr>
									</thead>
									<tbody id="timeline_stat_content"><tr user="[object Object]" dailylist="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]" workingtime="[object Object]" detailview="false" timelinegroup="[object Object]" requiredruleupdate="false" lastday="2021-02-07" normal="0" night="0" firstday="2021-02-01" extension="0" total="0"><td class="name">
					<div class="member2" data-id="29">
						<a class="photo">
							<img alt="구정모" 사장="" src="/thumb/user/small/1523-10812">
						</a>
						<a class="info">
							<span class="txt">구정모 </span>
							<span class="txt">사장 </span>
							<span class="txt">다우그룹 </span>
							<span class="txt">(기본근태) B형 </span>
						</a>
					</div>
				</td>
				<td class="total_time">
					<p class="txt ">0h 0m 0s</p>
					<ul class="time_detail">
						<li>기본:0h 0m 0s</li>
						<li>연장:0h 0m 0s</li>
						<li>야간:0h 0m 0s</li>
					</ul>
				</td>
				
				<td id="71590" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71734" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71878" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72022" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72166" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72310" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72454" detailday="[object Object]" workingtime="[object Object]" holiday="true" workingday="false" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="false" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td></tr><tr user="[object Object]" dailylist="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]" workingtime="[object Object]" detailview="false" timelinegroup="[object Object]" requiredruleupdate="false" lastday="2021-02-07" normal="0" night="0" firstday="2021-02-01" extension="0" total="0"><td class="name">
					<div class="member2" data-id="63">
						<a class="photo">
							<img alt="이재오" 전무="" src="/thumb/user/small/1096-34461">
						</a>
						<a class="info">
							<span class="txt">이재오 </span>
							<span class="txt">전무 </span>
							<span class="txt">다우그룹 </span>
							<span class="txt">(기본근태) B형 </span>
						</a>
					</div>
				</td>
				<td class="total_time">
					<p class="txt ">0h 0m 0s</p>
					<ul class="time_detail">
						<li>기본:0h 0m 0s</li>
						<li>연장:0h 0m 0s</li>
						<li>야간:0h 0m 0s</li>
					</ul>
				</td>
				
				<td id="71600" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71744" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71888" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72032" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72176" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72320" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72464" detailday="[object Object]" workingtime="[object Object]" holiday="true" workingday="false" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="false" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td></tr><tr user="[object Object]" dailylist="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]" workingtime="[object Object]" detailview="false" timelinegroup="[object Object]" requiredruleupdate="false" lastday="2021-02-07" normal="0" night="0" firstday="2021-02-01" extension="0" total="0"><td class="name">
					<div class="member2" data-id="232">
						<a class="photo">
							<img alt="김상후" 대표이사="" src="/thumb/user/small/4301-212117">
						</a>
						<a class="info">
							<span class="txt">김상후 </span>
							<span class="txt">대표이사 </span>
							<span class="txt">다우그룹 </span>
							<span class="txt">(기본근태) B형 </span>
						</a>
					</div>
				</td>
				<td class="total_time">
					<p class="txt ">0h 0m 0s</p>
					<ul class="time_detail">
						<li>기본:0h 0m 0s</li>
						<li>연장:0h 0m 0s</li>
						<li>야간:0h 0m 0s</li>
					</ul>
				</td>
				
				<td id="71603" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71751" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="71895" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72038" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72182" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72326" detailday="[object Object]" workingtime="[object Object]" holiday="false" workingday="true" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="true" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td><td id="72470" detailday="[object Object]" workingtime="[object Object]" holiday="true" workingday="false" clockoutauto="false" timelineapprovals="" timelinegroup="[object Object]" timelineviewmodels="" requiredruleupdate="false" early="false" hourtypeworkingtime="0" tardytime="0" earlytime="0" future="false" lateclockout="false" tardy="false" absence="false" normal="0" night="0" approvalsinfo="" commutecompleted="false" extension="0" total="0" class="days">    <p class="txt">
				
						<span class="txt normal"></span>
				
				
				
						<span class="txt date_wave">-</span><span class="txt"></span></p>
					<ul class="time_detail">
						<li>0h 0m 0s</li>
				
					</ul></td></tr></tbody>
								</table>
							</div>
						</div>
						<div class="tool_bar tool_absolute wrap_tb_box">
							<div class="critical">
								<section class="marker2">
									<ul>
										<li class="normal"><span></span>정상</li>
										<li class="late"><span></span>지각</li>
										<li class="modify"><span></span>수정</li>
									</ul>
								</section>
							</div>
				
							<div class="dataTables_length"><label> 
					<select class="tb_paging select_box">
						<option value="20">20</option>
						<option value="40">40</option>
						<option value="60">60</option>
						<option value="80">80</option>
					</select>
				</label></div>
				
						<!-- //ehr datatable --><div class="dataTables_paginate paging_full_numbers" style="padding-top: 40px;"><a id="first_page" tabindex="0" class="first paginate_button paginate_button_disabled" title="맨앞"></a>
				<a id="prev_page" tabindex="0" class="previous paginate_button paginate_button_disabled" title="이전"></a>
				<span id="pages">
				<a tabindex="0" data-page="0" class="paginate_button paginate_active">1</a></span>
				<a id="next_page" tabindex="0" class="next paginate_button paginate_button_disabled" title="다음"></a>
				<a id="last_page" tabindex="0" class="last paginate_button paginate_button_disabled" title="맨뒤"></a></div></div></div></div>
				</div></div>
			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
		
    </body>
</html>