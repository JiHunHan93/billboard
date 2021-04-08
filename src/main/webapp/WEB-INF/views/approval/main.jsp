<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="Smarthr - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>Employee Dashboard - HRMS admin template</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/billbo/resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/billbo/resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="/billbo/resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet"
	href="/billbo/resources/hrtemp/css/line-awesome.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/style.css">

<!-- 지훈 CSS -->
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 모달 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 모달 끝 -->
</head>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Loader -->
		<div id="loader-wrapper">
			<div id="loader">
				<div class="loader-ellips">
					<span class="loader-ellips__dot"></span> <span
						class="loader-ellips__dot"></span> <span
						class="loader-ellips__dot"></span> <span
						class="loader-ellips__dot"></span>
				</div>
			</div>
		</div>
		<!-- /Loader -->

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
								<li class="notification-message"><a href="${pageContext.servletContext.contextPath}/apps/chat">
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
								<li class="notification-message"><a href="${pageContext.servletContext.contextPath}/apps/chat">
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
								<li class="notification-message"><a href="${pageContext.servletContext.contextPath}/apps/chat">
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
								<li class="notification-message"><a href="${pageContext.servletContext.contextPath}/apps/chat">
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
								<li class="notification-message"><a href="${pageContext.servletContext.contextPath}/apps/chat">
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
						<li class="submenu"><a href="#" class="sidebar-default">
								<i class="la la-home sidebar-icon"></i> <!-- <span class="menu-arrow"></span> -->
								<span class="sidebar-text">Home</span>
						</a> <!-- <ul style="display: none;">
									<li><a href="index.html">Admin Dashboard</a></li>
									<li><a class="active" href="employee-dashboard.html">Employee Dashboard</a></li>
								</ul> --></li>
						<div class="sidebar-line"></div>
						<li class="submenu"><a href="${pageContext.servletContext.contextPath}/apps" class="sidebar-default">
								<i class="la la-cube sidebar-icon"></i> <span
								class="sidebar-text"> Apps</span> <!-- <span class="menu-arrow"></span> -->
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
						<li class="submenu"><a href="#"
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
						<li><a href="#" class="sidebar-default"> <i
								class="la la-briefcase sidebar-icon"></i> <span
								class="sidebar-text">Attendance</span>
						</a></li>
						<div class="sidebar-line"></div>
						<li class="submenu"><a href="#" class="sidebar-default">
								<i class="la la-key sidebar-icon"></i> <span
								class="sidebar-text">Admin</span> <!-- <span class="menu-arrow"></span> -->
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
						<li><a href="#" class="sidebar-default"> <i
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
		
		<!-- 사이드 메뉴 안으로 들어감 -->
		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<!-- Page Content -->
			<div class="content container-fluid">
		
				<div class="go_body go_renew">
				    <div class="go_side" id="side" style="padding-bottom: 55px;"><!-- 사이드 바 기본 템플릿 -->
			    <section class="gnb_title">
			        <h1><a id="apprHome">전자결재</a></h1>
			    </section>
			<!-- 결재 진행을 위한 양식 선택 -->
			<section class="function">
			    <a href="drafting" rel="modal:open" class="btn_function" id="writeBtn" data-bypass=""><span class="ic_side ic_app_appr"></span><span class="txt">새 결재 진행</span></a>
			</section>
			
			<div>
			<a href="ajax.html" rel="modal:open">Click me!</a>
			</div>
			
			<!-- side : 전자결재 -->
			<!-- <section class="function"> -->
			<!--    <a class="btn_function" href="#"><span class="ic_side ic_app_bbs"></span><span class="txt">새 결재 등록</span></a> -->
			<!-- </section> -->
			<section id="apprSide" class="lnb">
			    <h1 class="approval ">
			        <ins class="ic"></ins>
			        <span class="ic_side ic_hide_up" title=" 접기" data-slide="true"></span>
			        <a class="txt" data-role="button" data-bypass="">결재하기</a>
			    </h1>
			    <ul class="side_depth">
			        <li class="appr_standby" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="todo" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="결재 대기 문서">결재 대기 문서</span> <span class="num"></span>
			                </a>
			            </p>
			        </li>               
			        <li class="appr_inbox" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="todoreception" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="결재 수신 문서">결재 수신 문서</span> <span class="num"></span>
			                </a>
			            </p>
			        </li>    
			        <li class="appr_cc" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="todoviewer" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="참조/열람 대기 문서">참조/열람 대기 문서</span> <span class="num"></span>
			                </a>
			            </p>
			        </li>               
			        <li class="appr_expected" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="upcoming" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="결재 예정 문서">결재 예정 문서</span> <span class="num">1</span>
			                </a>
			            </p>
			        </li>
			    </ul>   
			</section>
			 
			 <!-- 개인 문서함 -->
			<section id="userDocSide" class="lnb">
			    <h1 class="user ">
			        <ins class="ic"></ins>
			        <span class="ic_side ic_hide_up" title="접기" data-slide="true"></span>
			        <a class="txt" title="개인 문서함" data-role="button" data-bypass="">개인 문서함</a>
			        <span class="btn_wrap">
			            <span btn-type="userAdmin" class="ic_side ic_side_setting" title=""></span>
			        </span>
			    </h1>
			    <ul class="side_depth">
			
			    	<li class="delimiter">
						<p class="title">
						<ins class="ic"></ins><span class="txt" title="기본 문서함">&lt;기본 문서함&gt;</span>
						</p>
					</li>
			        <li class="appr_draft" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="draft" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="기안 문서함">기안 문서함</span>
			                </a>
			            </p>
			        </li>               
			        <li class="appr_sign" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="approve" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="결재 문서함">결재 문서함</span>
			                </a>
			            </p>
			        </li>
			        <li class="appr_cc" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="viewer" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="참조/열람 문서함">참조/열람 문서함</span>
			                </a>
			            </p>
			        </li>
			        <li class="appr_inbox" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="reception" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="수신 문서함">수신 문서함</span>
			                </a>
			            </p>
			        </li>
			        <li class="appr_send" data-writable="true">
			            <p class="title">
			                <a class="go_boards" data-navi="send" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="발송 문서함">발송 문서함</span>
			                </a>
			            </p>
			        </li>
			        
					
			    </ul>   
			</section>
			
			<!-- 부서 문서함  -->
			<section id="deptDocfolderSide" class="lnb">
			    <h1 class="org ">
			        <ins class="ic"></ins>
			        <span class="ic_side ic_hide_up" title="접기" data-slide="true"></span>
			        <a class="txt" title="부서 문서함" data-role="button" data-bypass="">부서 문서함</a>
			    </h1>
			    <ul class="side_depth"><!--data_display_control-->
			<li class="org" data-deptid="">
				<p class="title">
					<a>
						<ins class="ic"></ins><span class="txt" title="영업팀">영업팀</span>
					</a>
				</p>
				<span class="btn_wrap" title="">
					<span btn-type="deptAdmin" data-deptid="130" class="ic_side ic_side_setting" title="부서 문서함 관리"></span>
				</span>
				<ul class="data_set" data-deptid="130">
					<li class="delimiter">
						<p class="title">
						<ins class="ic"></ins><span class="txt" title="기본 문서함">&lt;기본 문서함&gt;</span>
						</p>
					</li>
					<li class="appr_compl">
			            <p class="title">
			                <a class="go_boards" data-deptid="130" data-navi="deptdraft" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="기안 완료함">기안 완료함</span>
			                </a>
			            </p>
			        </li>
			        <li class="appr_cc">
			            <p class="title">
			                <a class="go_boards" data-deptid="130" data-navi="deptreference" data-bypass="">
			                    <ins class="ic"></ins><span class="txt" title="부서 참조함">부서 참조함</span>
			                </a>
			            </p>
			        </li>
					
				</ul>
			</li>
			</ul>
			</section>
			<!-- //부서 문서함   -->
			<div class="bar"></div>
			<!-- // side : 전자결재 -->
			
			</div>
				    <div class="go_content go_renew" id="content"><header class="content_top"><h1>전자결재 홈</h1>
			<section class="combine_search">
				<div class="c_search_wrap"><!--focus되면 "search_focus" multi class로 추가해주세요.-->
					<select class="search_op" id="searchType">
						<option value="appSearch">전자결재</option>
						<option value="totalSearch">통합검색</option>
					</select>
					<input class="c_search" type="text" id="search-keyword" name="search_keyword" value="" placeholder="검색">
					<a class="c_btn_detail" id="btn_DetailSearch" title="상세검색"><span class="txt">상세</span><span class="ic ic_cs_detail_arrow  "></span></a>
					<input class="btn_c_search" type="button" id="btn-search" value="검색" title="검색">
				</div>
			</section>
			</header>
			<div class="content_page dashboard_survey">
			    <div class="dr_wrapper" id="home_approval_waiting_doclist">
			        <div class="dashboard_box"><p class="desc">결재할 문서가 없습니다.</p></div>
			    </div>
			
			    <div class="dr_wrapper" id="home_reception_waiting_doclist" style="display:none">
			        <h1 class="s_title">접수 대기 문서
			            <span class="btn_wrap">
			                 <span class="ic ic_info btn-toggle-desc">
			                     <span class="layer_tail tooltip-desc" style="display:none;">
			                         <i class="ic ic_tail"></i>
			                         <div>최근에 수신된 시간순서대로, 최대 5개의 목록을 표시합니다.</div>
			                     </span>
			                  </span>
			            </span>
			        </h1>
			        <div class="dataTables_wrapper">
			        <div><table class="type_normal list_approval">
				<thead>
					<tr>
			            <th id="header_received_at" class="sorting_disabled hp date"><span class="title_sort">수신일<ins class="ic"></ins><span class="selected"></span></span></th>
						<th id="header_form_name" class="sorting_disabled doc"><span class="title_sort">결재양식<ins class="ic"></ins></span></th>
			            <th id="header_emergency" class="sorting_disabled doc_emergency"><span class="title_sort">긴급<ins class="ic"></ins></span></th>
						<th id="header_title" class="sorting_disabled subject"><span class="title_sort">제목<ins class="ic"></ins></span></th>
						<th id="header_attach" class="sorting_disabled attach"><span class="title_sort">첨부</span></th>
						<th id="header_doc_status" class="sorting_disabled state_wrap"><span class="title_sort">결재상태</span></th>
					</tr>
				</thead>
				<tbody><tr style="display:">
			    <td colspan="6">
			        <p class="data_null">
				       <span class="ic_data_type ic_no_contents"></span>
				       <span class="txt">문서가 없습니다.</span>
			        </p>
			    </td>
			</tr></tbody>
			</table>
			</div></div>
			    </div>
			
			    <div class="dr_wrapper" id="home_drafted_doclist">
			        <h1 class="s_title">기안 진행 문서
			            <span class="btn_wrap">
			                 <span class="ic ic_info btn-toggle-desc">
			                     <span class="layer_tail tooltip-desc" style="display:none;">
			                         <i class="ic ic_tail"></i>
			                         <div>현재 진행중인 기안문서 5개를, 최근 등록 순서대로 표시합니다.</div>
			                     </span>
			                  </span>
			            </span>
			        </h1>
			        <div class="dataTables_wrapper">
			        <div><table class="type_normal list_approval">
				<thead>
					<tr>
						<th id="header_drafted_at" class="sorting_disabled hp date"><span class="title_sort">기안일<ins class="ic"></ins><span class="selected"></span></span></th>
						<th id="header_form_name" class="sorting_disabled doc"><span class="title_sort">결재양식<ins class="ic"></ins></span></th>
			            <th id="header_emergency" class="sorting_disabled doc_emergency"><span class="title_sort">긴급<ins class="ic"></ins></span></th>
						<th id="header_title" class="sorting_disabled subject"><span class="title_sort">제목<ins class="ic"></ins></span></th>
						<th id="header_attach" class="sorting_disabled attach"><span class="title_sort">첨부</span></th>
						<th id="header_doc_status" class="sorting_disabled state_wrap"><span class="title_sort">결재상태</span></th>
					</tr>
				</thead>
				<tbody><tr>
			<td class="date first"><span class="txt">2021-03-30</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">해외출장신청</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">해외출장신청</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			        <a><span class="wrap_ic" title="댓글">
			            <span class="ic_classic ic_reply"></span>
			            <span class="num">0</span>
			        </span></a>
			        <span class="space"></span>
			        <a><span class="wrap_ic" title="의견">
			            <span class="ic_classic ic_opinion"></span>
			            <span class="num">1</span>
			        </span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="state_wrap"><a><span class="state read">진행중</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2021-03-11</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">업무기안</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">12313</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="state_wrap"><a><span class="state read">진행중</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2021-02-26</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">(신규)연장근무신청-근태관리연동</span></td>
			<td class="doc_emergency">
			    <span class="state emergency">긴급</span>
			</td>
			<td class="subject">
			    <a><span class="txt">(신규)연장근무신청-근태관리연동</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			        <a><span class="wrap_ic" title="댓글">
			            <span class="ic_classic ic_reply"></span>
			            <span class="num">0</span>
			        </span></a>
			        <span class="space"></span>
			        <a><span class="wrap_ic" title="의견">
			            <span class="ic_classic ic_opinion"></span>
			            <span class="num">1</span>
			        </span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="state_wrap"><a><span class="state read">진행중</span></a></td>
			</tr></tbody>
			</table>
			</div></div>
			    </div>
			
			    <div class="dr_wrapper" id="home_completed_doclist">
			        <h1 class="s_title">완료 문서
			            <span class="btn_wrap">
			                 <span class="ic ic_info btn-toggle-desc">
			                     <span class="layer_tail tooltip-desc" style="display:none;">
			                         <i class="ic ic_tail"></i>
			                         <div>최근에 결재 완료된 순서대로, 최대 5개의 목록을 표시합니다.</div>
			                     </span>
			                  </span>
			            </span>
			        </h1>
			        <div class="dataTables_wrapper">
			        <div><table class="type_normal list_approval">
				<thead>
					<tr>
						<th id="header_drafted_at" class="sorting_disabled hp date"><span class="title_sort">기안일<ins class="ic"></ins><span class="selected"></span></span></th>
						<th id="header_form_name" class="sorting_disabled doc"><span class="title_sort">결재양식<ins class="ic"></ins></span></th>
			            <th id="header_emergency" class="sorting_disabled doc_emergency"><span class="title_sort">긴급<ins class="ic"></ins></span></th>
						<th id="header_title" class="sorting_disabled subject"><span class="title_sort">제목<ins class="ic"></ins></span></th>
						<th id="header_attach" class="sorting_disabled attach"><span class="title_sort">첨부</span></th>
						<th id="header_doc_no" class="sorting_disabled doc_num"><span class="title_sort">문서번호<ins class="ic"></ins></span></th>
						<th id="header_doc_status" class="sorting_disabled state_wrap"><span class="title_sort">결재상태</span></th>
					</tr>
				</thead>
				<tbody><tr>
			<td class="date first"><span class="txt">2021-02-26</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">(신규)연장근무신청-근태관리연동</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">(신규)연장근무신청-근태관리연동</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			        <a><span class="wrap_ic" title="댓글">
			            <span class="ic_classic ic_reply"></span>
			            <span class="num">0</span>
			        </span></a>
			        <span class="space"></span>
			        <a><span class="wrap_ic" title="의견">
			            <span class="ic_classic ic_opinion"></span>
			            <span class="num">1</span>
			        </span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="doc_num"><span class="txt">다우그룹-2021-00008</span></td>
			<td class="state_wrap"><a><span class="state finish">완료</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2021-01-10</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">자율 출퇴근 신청서</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">자율 출퇴근 신청서</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="doc_num"><span class="txt">다우그룹-2021-00001</span></td>
			<td class="state_wrap"><a><span class="state finish">완료</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2020-11-04</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">일반품의서</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">일반품의서</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			        <a><span class="wrap_ic" title="댓글">
			            <span class="ic_classic ic_reply"></span>
			            <span class="num">0</span>
			        </span></a>
			        <span class="space"></span>
			        <a><span class="wrap_ic" title="의견">
			            <span class="ic_classic ic_opinion"></span>
			            <span class="num">2</span>
			        </span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="doc_num"><span class="txt">다우그룹-2020-00026</span></td>
			<td class="state_wrap"><a><span class="state finish">완료</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2020-11-03</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">업무기안</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">111</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			        <a><span class="wrap_ic" title="댓글">
			            <span class="ic_classic ic_reply"></span>
			            <span class="num">0</span>
			        </span></a>
			        <span class="space"></span>
			        <a><span class="wrap_ic" title="의견">
			            <span class="ic_classic ic_opinion"></span>
			            <span class="num">1</span>
			        </span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="doc_num"><span class="txt">다우그룹-2020-00025</span></td>
			<td class="state_wrap"><a><span class="state finish">완료</span></a></td>
			</tr><tr>
			<td class="date first"><span class="txt">2020-11-03</span></td>
			
			
			
			
			
			<td class="division"><span class="txt">(신규)휴가신청-연차관리연동</span></td>
			<td class="doc_emergency">
			</td>
			<td class="subject">
			    <a><span class="txt">(신규)휴가신청-연차관리연동</span></a>
			    <span class="btn_wrap">
			        <a class="popup"><span class="ic_classic ic_blank" title="팝업보기"></span></a>
			    </span>
			</td>
			<td class="attach">
			</td>
			
			
			
			
			<td class="doc_num"><span class="txt">다우그룹-2020-00023</span></td>
			<td class="state_wrap"><a><span class="state finish">완료</span></a></td>
			</tr></tbody>
			</table>
			</div></div>
			    </div>
			</div>
			</div>
				</div>
			
			<!-- 04/07 aside 주석 -->
			<!-- <aside class="go_organogram" id="organogram" style="height: 30px; top: 658px;"><h1><ins class="ic"></ins><span class="txt">조직도</span><span class="btn_wrap" id="orgToggleWrap"><span id="orgToggle" class="ic_gnb ic_hide_up2" data-slide="true" title="열기"></span></span></h1><div class="search_wrap"><form name="orgSearch" onsubmit="return false;"><input class="search" type="text" placeholder="이름/아이디/부서/직위/직책/전화" title="이름/아이디/부서/직위/직책/전화"><input class="btn_search" type="submit" value="검색" title="검색"></form></div><div class="tab_wrap"></div></aside> -->
			<footer class="go_footer">
			    <section class="setting"></section>
			    <section class="meta">
			        <small class="copyright"></small>
			    </section>
			</footer>
			<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: none;"></div>
		
			</div>
			<!-- /Page Content -->
		
		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="/billbo/resources/hrtemp/js/jquery-3.5.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="/billbo/resources/hrtemp/js/popper.min.js"></script>
	<script src="/billbo/resources/hrtemp/js/bootstrap.min.js"></script>

	<!-- Slimscroll JS -->
	<script src="/billbo/resources/hrtemp/js/jquery.slimscroll.min.js"></script>

	<!-- Custom JS -->
	<script src="/billbo/resources/hrtemp/js/app.js"></script>
</body>

<script>
	$(function() {
		$(".modal-sub-text1").click(function() {

			const $t = $(this);

			$(".modal-sub-img2.on").removeClass("on")
			$(".modal-sub-img1").toggleClass("on");
		})
	})
	$(function() {
		$(".modal-sub-text2").click(function() {

			const $t = $(this);

			$(".modal-sub-img1.on").removeClass("on")
			$(".modal-sub-img2").toggleClass("on");
		})
	})
</script>
</html>