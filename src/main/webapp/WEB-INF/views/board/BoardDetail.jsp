<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="Smarthr - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>Project View - HRMS admin template</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/line-awesome.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/select2.min.css">

<!-- Datetimepicker CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/bootstrap-datetimepicker.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="${pageContext.servletContext.contextPath}" class="logo">
					<img src="/billbo/resources/hrtemp/img/Logo.png" width="40"
					height="40" alt="">
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
							src="/billbo/resources/hrtemp/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span></span> <span> <!-- 해당 사원 명 -->
					</span>
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">내 정보</a> <a
							class="dropdown-item" href="settings.html">환경설정</a> <a
							class="dropdown-item"
							href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a>
					</div></li>
			</ul>
			<!-- /Header Menu -->

			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="profile.html">내 정보</a> <a
						class="dropdown-item" href="settings.html">환경설정</a> <a
						class="dropdown-item" href="login.html">로그아웃</a>
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
						<!-- <li class="menu-title"> 
									<span>Main</span>
								</li> -->
						<!-- 사이드바 서브메뉴 안쓰는 방향으로 수정 -->
						<li><a href="${pageContext.servletContext.contextPath}"
							class="sidebar-default"> <i class="la la-home sidebar-icon"></i>
								<!-- <span class="menu-arrow"></span> --> <span
								class="sidebar-text">Home</span>
						</a> <!-- <ul style="display: none;">
										<li><a href="index.html">Admin Dashboard</a></li>
										<li><a class="active" href="employee-dashboard.html">Employee Dashboard</a></li>
									</ul> --></li>
						<div class="sidebar-line"></div>
						<li><a href="${pageContext.servletContext.contextPath}/apps"
							class="sidebar-default"> <i class="la la-cube sidebar-icon"></i>
								<span class="sidebar-text"> Apps</span> <!-- <span class="menu-arrow"></span> -->
						</a> <!-- <ul style="display: none;">
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
									</ul> --></li>
						<div class="sidebar-line"></div>
						<!-- <li class="menu-title"> 
									<span>Apps</span>
								</li> -->
						<li><a
							href="${pageContext.servletContext.contextPath}/employee"
							class="noti-dot sidebar-default"> <i
								class="la la-user sidebar-icon"></i> <span class="sidebar-text">
									Employees</span> <!-- <span class="menu-arrow"></span> -->
						</a> <!-- <ul style="display: none;">
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
									</ul> --></li>
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
						</a> <!-- <ul style="display: none;">
										<li><a href="projects.html">Projects</a></li>
										<li><a href="tasks.html">Tasks</a></li>
										<li><a href="task-board.html">Task Board</a></li>	
									</ul> --></li>
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

		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<!-- Page Content -->
			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title">게시판 상세</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Apps</a></li>
								<li class="breadcrumb-item"><a href="index.html">DashBoard</a></li>
								<li class="breadcrumb-item active">Detail</li>
							</ul>
						</div>
						<div class="col-auto float-right ml-auto">
							<a href="#" class="btn add-btn" data-toggle="modal"
								data-target="#edit_project"><i class="fa fa-plus"></i> 게시글
								수정</a> <a href="#" class="btn add-btn" data-toggle="modal"
								data-target="#edit_project1"><i class="fa fa-minus"></i> 게시글
								삭제</a>
						</div>
					</div>
				</div>
				<!-- /Page Header -->

				<div class="row">
					<div class="col-lg-8 col-xl-9">
						<div class="card">
							<c:forEach var="detailInfo" items="${requestScope.detailInfo }">
								<div class="card-body">
									<div class="project-title">
										<h5 class="card-title">
											<c:out value="${ detailInfo.title} " />
										</h5>
										<small class="block text-ellipsis m-b-15"><span
											class="text-xs"><c:out
													value="${ detailInfo.enrollDate} " /></span></small>
									</div>
									<div style="white-space: pre-line;">
										<c:out escapeXml="false" value="${ fn:replace( detailInfo.body, replaceChar, '<br>' ) }"/>
									</div>

								</div>
							</c:forEach>
						</div>
						<div class="card">
							<div class="card-body">
								<h5 class="card-title m-b-20">첨부한 이미지</h5>
								<div class="row">
									<div class="col-md-3 col-sm-4 col-lg-4 col-xl-3">
										<div class="uploaded-box">
											<div class="uploaded-img">
												<img src="../resources/hrtemp/img/placeholder.jpg"
													class="img-fluid" alt="">
											</div>
											<div class="uploaded-img-name">demo.png</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-lg-4 col-xl-3">
										<div class="uploaded-box">
											<div class="uploaded-img">
												<img src="../resources/hrtemp/img/placeholder.jpg"
													class="img-fluid" alt="">
											</div>
											<div class="uploaded-img-name">demo.png</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-lg-4 col-xl-3">
										<div class="uploaded-box">
											<div class="uploaded-img">
												<img src="../resources/hrtemp/img/placeholder.jpg"
													class="img-fluid" alt="">
											</div>
											<div class="uploaded-img-name">demo.png</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-lg-4 col-xl-3">
										<div class="uploaded-box">
											<div class="uploaded-img">
												<img src="../resources/hrtemp/img/placeholder.jpg"
													class="img-fluid" alt="">
											</div>
											<div class="uploaded-img-name">demo.png</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-body">
								<h5 class="card-title m-b-20">업로드한 파일</h5>
								<ul class="files-list">
									<li>
										<div class="files-cont">
											<div class="file-type">
												<span class="files-icon"><i class="fa fa-file-pdf-o"></i></span>
											</div>
											<div class="files-info">
												<span class="file-name text-ellipsis"><a href="#">AHA
														Selfcare Mobile Application Test-Cases.xls</a></span> <span
													class="file-author"><a href="#">최종 수정자</a></span> <span
													class="file-date">04/04/ 15:01</span>
												<div class="file-size">Size: 14.8Mb</div>
											</div>
											<ul class="files-action">
												<li class="dropdown dropdown-action"><a href=""
													class="dropdown-toggle btn btn-link" data-toggle="dropdown"
													aria-expanded="false"><i class="material-icons">more_horiz</i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="javascript:void(0)">다운로드</a>
														<a class="dropdown-item" href="#" data-toggle="modal"
															data-target="#share_files">공유</a> <a
															class="dropdown-item" href="javascript:void(0)">삭제</a>
													</div></li>
											</ul>
										</div>
									</li>
									<li>
										<div class="files-cont">
											<div class="file-type">
												<span class="files-icon"><i class="fa fa-file-pdf-o"></i></span>
											</div>
											<div class="files-info">
												<span class="file-name text-ellipsis"><a href="#">AHA
														Selfcare Mobile Application Test-Cases.xls</a></span> <span
													class="file-author"><a href="#">최종 수정자</a></span> <span
													class="file-date">월/일/시:분</span>
												<div class="file-size">Size: 14.8Mb</div>
											</div>
											<ul class="files-action">
												<li class="dropdown dropdown-action"><a href=""
													class="dropdown-toggle btn btn-link" data-toggle="dropdown"
													aria-expanded="false"><i class="material-icons">more_horiz</i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="javascript:void(0)">다운로드</a>
														<a class="dropdown-item" href="#" data-toggle="modal"
															data-target="#share_files">공유</a> <a
															class="dropdown-item" href="javascript:void(0)">삭제</a>
													</div></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-xl-3">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title m-b-15">업로드 정보</h6>
								<table class="table table-striped table-border">
									<tbody>
										<c:forEach var="detailInfo"
											items="${requestScope.detailInfo }">
											<tr>
												<td>작성자</td>
												<td class="text-right"><c:out
														value="${ detailInfo.writer }" /></td>
											</tr>
											<tr>
												<td>부서</td>
												<td class="text-right">부서명</td>
											</tr>
											<tr>
												<td>직급</td>
												<td class="text-right">직급</td>
											</tr>
											<tr>
												<td>전화번호</td>
												<td class="text-right">전화번호</td>
											</tr>
											<tr>
												<td>분류</td>
												<td class="text-right">
													<div class="btn-group">
													<c:if test="${ detailInfo.boardType eq '자유' }">
														<a href="#" class="badge badge-success dropdown-toggle" data-toggle="dropdown">자유</a>
													</c:if>
													<c:if test="${ detailInfo.boardType eq '인사' }">
														<a href="#" class="badge badge-info dropdown-toggle" data-toggle="dropdown">인사</a>
													</c:if>
													<c:if test="${ detailInfo.boardType eq '공지' }">
														<a href="#" class="badge badge-danger dropdown-toggle" data-toggle="dropdown">공지</a>
													</c:if>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-danger"></i> 공지</a> 
															<a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-info"></i> 인사</a> 
															<a class="dropdown-item" href="#"><i class="fa fa-dot-circle-o text-success"></i> 자유</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>만료일</td>
												<td class="text-right"><a href="profile.html"><c:out
															value="${detailInfo.endDate}" /></a></td>
											</tr>
											<tr>
												<td>유효 여부</td>
												<td class="text-right">유효/만료</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<p class="m-b-5">
									상태바 <span class="text-success float-right">40%</span>
								</p>
								<div class="progress progress-xs mb-0">
									<div class="progress-bar bg-success" role="progressbar"
										data-toggle="tooltip" title="70%" style="width: 40%"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Content -->

			<!-- Edit Board Modal -->
			<div id="edit_project" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog modal-dialog-centered modal-lg sub-modal"
					role="document">
					<form name="board5" action="${pageContext.servletContext.contextPath }/board/modify">
					<div class="modal-content sub-modal">
						<div class="modal-header">
							<h5 class="modal-title">게시글 수정</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body1">
							<c:forEach var="detailInfo" items="${ requestScope.detailInfo }">
								
								<div class="row">
								<div class="col-sm-6">
										<div class="form-group">
											<label>글번호</label> <input name="no" class="form-control" id="modifyTitle"
												value="<c:out value="${ detailInfo.no }"/>" type="text" readOnly>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>제목</label> <input name="title" class="form-control" id="modifyTitle"
												value="<c:out value="${ detailInfo.title }"/>" type="text">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>작성자</label> <input name="writer" class="form-control" readOnly
												value="<c:out value="${ detailInfo.writer }"/>" type="text">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>게시일</label>
											<div class="cal-icon">
												<!-- <input class="form-control datetimepicker"> --> 
												<input type="date"
													name="enrollDate" id="modifyEnrollDate"
													value="<c:out value="${ detailInfo.enrollDate }"/>">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>만료일</label>
											<div class="cal-icon">
												<!-- <input class="form-control datetimepicker"> -->
												<input type="date"
													name="endDate" id="modifyEndDate"
													value="<c:out value="${ detailInfo.endDate }"/>">
											</div>
										</div>
									</div>
									<div class="form-group" style="margin-left: 14px;" hidden="true">
											<label>상태</label> <input name="status" class="form-control" id="modifyTitle"
												value="<c:out value="${ detailInfo.status }"/>" type="text" readOnly>
										</div>
								</div>
								<div class="row">
									<div class="col-sm-3">
										<div class="form-group">
											<label>분류</label> <select class="select" name="boardType" id="modify-type-sel">
												<option value="공지" <c:if test="${ detailInfo.boardType eq '공지'}">selected</c:if>>공지</option>
												<option value="인사" <c:if test="${ detailInfo.boardType eq '인사'}">selected</c:if>>인사</option>
												<option value="자유" <c:if test="${ detailInfo.boardType eq '자유'}">selected</c:if>>자유</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group"></div>
									</div>
								</div>
								<div class="form-group">
									<label>내용</label>
									<textarea rows="4" class="form-control"	placeholder="Enter your message here" name="body" id="modifyBody" style="white-space: pre-line;">
									<c:out escapeXml="false" value="${ detailInfo.body }"/>
									</textarea>
								</div>
								<div class="form-group">
									<label>업로드한 파일</label> <input class="form-control" type="file"
										name="fileAttachment">
								</div>
								<div class="submit-section">
									<button class="btn btn-primary submit-btn" id="modify-btn" type="button" onclick="goModify(this.form)">수정
										완료</button>
								</div>

							</c:forEach>
						</div>
					</div>
					</form>
				</div>
			</div>
			<!-- /Edit Board Modal -->


			<!-- delete modal-->
			<div id="edit_project1" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog modal-dialog-centered modal-lg"
					role="document">
					<div class="modal-content">
						<div class="modal-header">
							<c:forEach var="detailInfo" items="${requestScope.detailInfo }">
								<h5 class="modal-title">
									<c:out value="${ detailInfo.no }" />
									번 게시물 삭제
								</h5>
							</c:forEach>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="submit-section">
								<button id="delete-btn" class="btn btn-primary submit-btn">삭제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
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

	<!-- Select2 JS -->
	<script src="../resources/hrtemp/js/select2.min.js"></script>

	<!-- Datetimepicker JS -->
	<script src="../resources/hrtemp/js/moment.min.js"></script>
	<script src="../resources/hrtemp/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Task JS -->
	<script src="../resources/hrtemp/js/task.js"></script>

	<!-- Custom JS -->
	<script src="../resources/hrtemp/js/app.js"></script>

</body>
<script type="text/javascript">
function goModify(frm){
	 var title = frm.title.value;
	 var name = frm.name.value;
	 var enrollDate = frm.enrollDate.value;
	 var endDate = frm.endDate.value;
	 var boardType = frm.boardType.value;
	 var body = frm.body.value;
	 var fileAttachment = frm.fileAttachment.value;
	 
	 frm.submit();
	 
	 
}
</script>

<script type="text/javascript">
	    $(function() {
			$("#delete-btn").click(function() {
	
				var no = <%= request.getParameter("no") %>;
				console.log(no);
				location.href = "${ pageContext.servletContext.contextPath }/board/delete?no=" + no;
			});
		});
    </script>



</html>