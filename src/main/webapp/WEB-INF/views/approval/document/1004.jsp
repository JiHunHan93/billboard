<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval0.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval1.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval2.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval3.css">
<!-- 추가 -->
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval6.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval5.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval4.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval1004.css">

<!-- 최신모델 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- 모달 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- JS -->
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval1004.css">
<style>
.modal-dialog.modal-fullsize {
  width: 0%;
  height: 0%;
  margin: 0;
  padding: 0;
}
.modal-content.modal-fullsize {
  height: auto;
  min-height: 50%;
  border-radius: 0; 
}
</style>
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


${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username }
${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }
${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }


   <div class="go_content go_renew" id="content"><header class="content_top"><h1><span class="txt single_tit" title="휴가신청서">휴가신청서</span><span class="meta"><span id="processMessageWrap" class="num" style="display: none;"><strong id="processMessageContent">자동 저장 하였습니다.(3분)</strong></span></span></h1>
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
<!-- 결재문서 상세-->
<div class="content_page report_detail">
    <!-- 툴바 -->
    <div class="tool_bar"><div class="critical">

    <!-- 접수대기 -->
    
    <!-- 접수완료 -->
    
    <!-- 수신문서의 반려 -->
    
       <a id="act_draft" class="btn_tool" data-role="button">
            <span class="ic_toolbar approval"></span>
            <span class="txt">결재요청</span>
        </a>
        <span class="btn_tool_group">
           <a id="act_temp_save" class="btn_tool" data-role="button">
                <span class="ic_toolbar save"></span>
                <span class="txt">임시저장</span>
            </a>
           <a id="act_document_preview" class="btn_tool" data-role="button">
                <span class="ic_toolbar preview"></span>
                <span class="txt">미리보기</span>
            </a>
           <a id="act_cancel_draft" class="btn_tool" data-role="button">
                <span class="ic_toolbar cancel"></span>
                <span class="txt">취소</span>
            </a>
        </span>
          
  	<!-- 04/17(토) 결재 양식 선택 Moda -->
       <a id="act_edit_apprflow" class="btn_tool" data-role="button" data-toggle="modal" data-target="#exampleModal">
          <span class="ic_toolbar info"></span>
          <span class="txt">결재 정보</span>
      </a>
        
        <!-- <a id="post_regist" class="btn_tool" data-role="button"><span class="txt">게시판 게시</span></a> -->
<a id="hiddenDownloadDoc" data-role="button" href="" style="display:none"></a><form id="download_doc_form" method="POST"><input type="hidden" value="" name="downloadTokenId" id="downloadTokenId"></form><iframe name="ifm_download_doc_form" id="ifm_download_doc_form" style="border:0px;width:0px;height:0px;"></iframe></div>

<ul class="optional">
    <li class="sel_r">
        <label> 
            <select id="autoSaveSelect" evt-rol="auto-save">
                <option value="0">자동저장안함</option>
                <option value="30">자동저장(30초)</option>
                <option value="60">자동저장(1분)</option>
                <option value="180" selected="selected">자동저장(3분)</option>
            </select>
        </label>
    </li>
    <li>
       <a id="act_list" class="btn_tool" data-role="button">
            <span class="ic_toolbar list" title="목록"></span>
            <span class="txt">목록</span>
       </a>
    </li>
</ul></div>
    <div class="wrap_container">
       <!-- 3단 레이아웃 멀티클래스 -->
       <section class="content_wrapper">
            <!--전자결제 상세-->
            <div class="report_type approval_type"><!--전자결재 내용-->
            
            
   <!-- 04/08(목) 결재 정보 입력 FORM -->
   <div class="approval_import ie9-scroll-fix">
   
       <!-- 문서 내용 표시 테스트 -->
       <form id="document_content" name="vacation01" action="1004" method="post" class="form_doc_editor editor_view">
       <span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
      	 <span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
       		<span style="line-height: normal; font-family: 맑은 고딕; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;"></span>
       	 </span>
       
       <!-- Header : 연차신청서 --> 
       <table class="__se_tbl" style="background: white; border: 0px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic,dotum,arial,tahoma; font-size: 12px; border-collapse: collapse !important;">
             
            <tbody>
            <tr><td style="padding: 3px !important; border: 0px solid black; border-image: none; width: 300px; height: 90px !important; text-align: center; font-size: 22px; font-weight: bold; vertical-align: middle;" colspan="2" class="">
            
            연차신청서
            </td></tr>
            
            <tr>
            
            <td style="padding: 0px !important; border: 0px currentColor; border-image: none; width: 300px;" class=""><table class="__se_tbl" style="background: white; margin: 0px; border: 1px solid black; border-image: none; color: black; font-family: malgun gothic,dotum,arial,tahoma; font-size: 12px; border-collapse: collapse !important;"><!-- User --> 
                 
            <tbody><tr><td style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
            
            기안자
            </td>
            
            <!-- 기안자 -->
            <td style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
            <input type="text" readonly="" style="vertical-align: middle; width: 200px; text-align: center; border: 0px; box-shadow: rgba(150, 150, 150, 0.2) 0px 0px 0px inset;" data-dsl="{{label:draftUser}}" name="memberName" id="memberName" value="" data-id="draftUser" data-name="draftUser" data-require="false" data-maxlength="" data-width="" data-defaultstr="" data-editable="false" data-value="김지연" placeholder=""> 
            </td></tr>
            
            <tr><td style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
            기안부서
            </td><td style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input type="text" readonly="" style="vertical-align: middle; width: 200px; text-align: center; border: 0px; box-shadow: rgba(150, 150, 150, 0.2) 0px 0px 0px inset;" data-dsl="{{label:draftDept}}" name="draftDept" id="draftDept" value="영업팀" data-id="draftDept" data-name="draftDept" data-require="false" data-maxlength="" data-width="" data-defaultstr="" data-editable="false" data-value="영업팀" placeholder=""> 
            </td></tr><tr><td style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
            
            기안일
            </td>
            
            <td style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
            <input type="text" style="vertical-align: middle; width: 200px; text-align: center; border: 0px; box-shadow: rgba(150, 150, 150, 0.2) 0px 0px 0px inset;" data-dsl="{{label:draftDate}}" readonly="" name="draftDate" id="draftDate" value="" data-id="draftDate" data-name="draftDate" data-require="false" data-maxlength="" data-width="" data-defaultstr="" data-editable="false" data-value="2021-04-08(목)" placeholder=""> 
            </td></tr>
            
            <tr><td style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
            
            문서번호
            </td><td style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input type="text" readonly="" style="vertical-align: middle; width: 200px; text-align: center; border: 0px; box-shadow: rgba(150, 150, 150, 0.2) 0px 0px 0px inset;" data-dsl="{{label:docNo}}" name="docNo" id="docNo" value="" data-id="docNo" data-name="docNo" data-require="false" data-maxlength="" data-width="" data-defaultstr="" data-editable="false" data-value="" placeholder=""> 
            </td></tr></tbody></table>
             
            </td>
                
       <!-- Start : 결재 승인 선  -->
            <td style="padding: 0px !important; border: 0px currentColor !important; border-image: none !important !important; width: 500px; text-align: right; vertical-align: top !important;" class=""><!-- 결재선 기본값으로 신청 1명, 승인 7명으로 설정--> 
	            <span id="admissionTr" class="sign_type1_inline" style="line-height: normal; font-family: malgun gothic,dotum,arial,tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;" data-group-seq="0" data-group-name="승인" data-group-max-count="7" data-group-type="type1" data-is-reception="">
	            	<span class="sign_tit_wrap">
	            		<span class="sign_tit"><strong>승인</strong></span>
	            	</span>
	           		<span class="sign_member_wrap" id="activity_16049">
	           			<span class="sign_member">
			            	<span class="sign_rank_wrap">
			            		<span class="sign_rank">${ requestScope.spot.spotName }</span>
			            	</span>
				            <span class="sign_wrap">
				            	<span class="sign_name">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }</span>
				            </span>
				            <span class="sign_date_wrap">
				            	<span class="sign_date" id="date_16049"></span>
				            </span>
			            </span>
		            </span>
	            </span>
            </td>
      <!-- End : 결재 승인 선  -->      
            </tr>
            </tbody></table>
            
            <br>
             
            <table class="__se_tbl" style="background: white; border: 1px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic,dotum,arial,tahoma; font-size: 12px; margin-top: 0px; border-collapse: collapse !important;"><tbody><tr><td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
            
            휴가&nbsp;종류
            </td><td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"><span id="vacationTypeArea" style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;" name="select"><!-- SELECT  -->
            <select class="editor_slt" data-dsl="{{cSel_연차_조퇴_지각_경조_공가_질병휴가}}" name="annualType">
                 <option value="연차">연차</option>
                 <option value="조퇴">조퇴</option>
                 <option value="지각">지각</option>
                 <option value="경조">경조</option>
                 <option value="공가">공가</option>
                 <option value="질병휴가">질병휴가</option>
                 <option value="반차">반차</option>
            </select>
            </span> 
            </td></tr>
            
            <tr><td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
            기간&nbsp;및&nbsp;일시
            </td>
            <td style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
            <input type="date" class="ipt_editor ipt_editor_date hasDatepicker" id="startDate"  name="startDate" value="" style="width: 200px;">&nbsp;~&nbsp; 
            <input type="date" class="ipt_editor ipt_editor_date hasDatepicker" id="endDate" name="endDate" value="" style="width: 200px;"> 
            
            <!-- <span id="usingPointArea" style="line-height: normal; font-family: malgun gothic,dotum,arial,tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;">
            <b>사용일수 : </b>
            <input type="text" class="ipt_editor ipt_editor_num" data-dsl="{{number:usingPoint}}" name="usingPoint" id="usingPoint" data-require="false" data-editable="true" value="1">
            <b id="usingPoint_Comment" style="font-weight:bold; color:red">신청가능일을 초과하였습니다.</b>
            </span>  -->
            </td></tr><tr><td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
            
            반차&nbsp;시점
            </td><td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
            <span id="vacationHalfArea" style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;">
	            <span class="halfArea">
	                <input type="radio" class="editor_opt" data-dsl="{{radio_오전_오후}}" name="halfDayPoint" id="startAMHalf" value="오전" data-autotype="false" data-require="false" data-label="오전">
	                <label class="editor_label" data-type="removeSpan">오전</label>
	            
	                <input type="radio" class="editor_opt" data-dsl="{{radio_오전_오후}}" name="halfDayPoint" id="startPMHalf" value="오후" data-autotype="false" data-require="false" data-label="오후">
	                <label class="editor_label" data-type="removeSpan">오후</label>
	            </span>
            </span> 
            </td></tr><tr><td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
            
            연차&nbsp;일수
            </td><td style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
            <span id="applyPointArea" style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;">
            <b>신청연차 : </b>
            <input type="text" class="ipt_editor ipt_editor_num" data-dsl="{{number:applyPoint}}" name="annualCount" id="annualCount" data-require="false" data-editable="true" value="1">
            <b id="applyPoint_Comment" style="font-weight:bold; color:red"></b>
            </span> 
            </td></tr><tr><td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 80px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;"><b style="color: rgb(255, 0, 0);">*</b>&nbsp;휴가&nbsp;사유 
            </td><td style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 100px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: top;"><textarea class="txta_editor" data-dsl="{{textarea:description}}" name="annualReason" id="annualReason" value="" data-id="description" data-name="description" data-require="false" data-maxlength="" data-width="" data-defaultstr="" data-editable="false" data-value="" placeholder=""></textarea> 
            </td></tr><tr><td style="background: rgb(221, 221, 221); padding: 20px !important; border: 1px solid black; border-image: none; width: 800px; height: 22px; text-align: left; vertical-align: middle;" colspan="2">
            
            <span id="hiddenInput"></span>
            
            
             1. 연차의 사용은 근로기준법에 따라 전년도에 발생한 개인별 잔여 연차에 한하여 사용함을 원칙으로 한다. 단, 최초 입사시에는 근로 기준법에 따라 발생 예정된 연차를 차용하여 월 1회 사용 할 수 있다.<br> 2. 경조사 휴가는 행사일을 증명할 수 있는 가족 관계 증명서 또는 등본, 청첩장 등 제출<br> 3. 공가(예비군/민방위)는 사전에 통지서를, 사후에 참석증을 반드시 제출 
            </td></tr></tbody>
            </table>
            </span>
         </form>
      </div>
      <!-- End : 결재 정보 입력 Form  --> 
      
      
      <div id="attachView" style="display: none;"><div class="add_file" style="display:">
         <div class="add_file_header">
            <span class="subject">
               <span class="ic ic_file_s"></span>
               <strong>첨부파일</strong>
               <span class="num">0</span>개
               <span class="size">(0.0Byte)</span>
            </span>
         </div>
         <ul class="file_wrap" id="file_wrap"></ul>
         <ul class="img_wrap" id="img_wrap" style="margin-bottom: 10px; margin-left: 10px; margin-right: 10px; margin-top: 0px;"></ul>
      </div></div>
      <div id="editView">
          <form name="vacation02">
              <fieldset>
                  <table class="form_type form_report_nonscheduled">
                      <tbody>
                      <tr id="attachPart">
                          <th>
                              <span class="title">파일첨부</span>
                          </th>
                          <td>
                              <!-- 첨부파일 default -->
                              <div id="dropZone" class="dd_attach">
                                  <p class="drag_txt">이 곳에 파일을 드래그 하세요.</p>
                                  <div class="area_txt">
                                      <span class="ic_attach ic_upload"></span>
                                      <span class="msg">이 곳에 파일을 드래그 하세요. 또는
                                          <span class="btn_file" '=""><span class="txt">파일선택</span><input type="file" name="file" title="파일선택" multiple="" accept="undefined"></span>
                                          <span id="total_size" class="size"></span>
                                      </span>
                                  </div>
                                  <div class="progress" style="display: none;"><img id="93369_pbImage" title=" 0%" alt=" 0%" src="/resources/images/progressbar.gif" width="200" style="width: 200px; height: 12px; background-image: url(&quot;/resources/images/progressbg_green_100.gif&quot;); background-position: -200px 50%; padding: 0px; margin: 0px;"><span id="93369_pbText" style="vertical-align: top;"> 0%</span><a><span class="ic_classic ic_del" title="삭제"></span></a><a></a></div>
                                  <div class="wrap_attach">
                                      <!-- 파일 첨부 스타일  -->
                                      <ul class="file_wrap" id="fileWrap"></ul>
                                      <!-- 이미지 첨부 스타일  -->
                                      <ul class="img_wrap" id="imgWrap"></ul>
                                  </div>
                              </div>
                          </td>
                      </tr>
                      <tr id="refDocPart">
                          <th class="title"><span class="txt">관련문서</span></th>
                          <td>
                           <span class="wrap_btn wrap_file_upload">
                              <span class="btn_minor_s fileinput-button" id="addRelatedDocument">
                                 <span class="buttonText">문서 검색</span>
                              </span>                           
                           </span>
                              <div class="file_wrap feed">
                                  <ul class="file_wrap">
                                  </ul>
                              </div>
                          </td>
                      </tr>
      
                      </tbody>
                  </table>
              </fieldset>
       </form>
   </div>
   <!-- END 결재 정보 입력 FORM -->
   

<section class="article_reply" style="display: none;"></section></div>
       </section>
       <!-- aside : right-->
      <section class="aside_wrapper article_reply">
          <div class="doc-meta-container reply_wrap">
             <!--tab1 :  결재선 -->
              <header>
                 <div class="wrap_swipe">
                  <div id="prev" class="tab_control tab_btn_prev tab_disabled">
                     <span class="btn_wrap">
                        <span class="ic_prev" title="이전"></span>
                     </span>
                  </div>
                  <div class="swipe">
                     <ul id="slideLayer" class="tab_nav tab_nav_approval" style="left:0">
                            <li id="tab_apprflow" class="first on">
                                <span class="txt" title="결재선">결재선</span>
                            </li>
                            <li id="tab_docinfo" class="last">
                                 <span class="txt" title="문서정보">문서정보</span>
                             </li>
                            <li id="tab_dochistory" style="display: none;">
                                <span class="txt" title="변경이력">변경이력</span>
                            </li>
                            <li id="tab_readerhistory" style="display: none;">
                                <span class="txt" title="열람기록">열람기록</span>
                            </li>
                            <li id="tab_receptiondocument" style="display: none;">
                                <span class="txt" title="수신">수신</span>
                            </li>
                              <li id="tab_officialdocreceiver" style="display: none;">
                                  <span class="txt" title="공문발송">공문발송</span>
                              </li>
                        </ul>
                  </div>
                  <div id="next" class="tab_control tab_btn_next tab_disabled">
                     <span class="btn_wrap">
                        <span class="ic_next" title="다음"></span>
                     </span>
                  </div>
               </div>
              </header>
          <div class="aside_wrapper_body" style="display: block;"><form onsubmit="return false;">
    <!-- 결재 진행 상황 -->
    <ul class="reply" id="apprflow">
   <input type="hidden" class="activityGroup" data-groupseq="0" data-groupid="7301" data-groupcount="1">
          <li class="current">
             <span class="photo"><a data-userid="234"><img alt="초상화" src="/thumb/user/small/3493-17799"></a></span>
            <div class="msg_wrap">
                <div class="info" data-userid="234" data-username="김지연" data-userposition="부장" data-userdeptid="130" data-userdeptname="영업팀" data-useractivitytype="DRAFT" data-useractivityname="기안">
                   <a data-userid="234"><span class="name">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername } ${ requestScope.spot.spotName }</span></a>
                   
                   <span class="department">${ requestScope.dept.deptName }</span>
                   <div class="doc"><span class="status ">기안</span></div>
                </div>
                
             </div>     
                <div class="bar_current"></div><!-- 현재 결재 위치 표시 -->                                       
          </li>
</ul>
<!-- // 결재 진행 상황 -->
</form></div><div class="aside_wrapper_body" style="display: none;"><form onsubmit="return false;">
    <fieldset>
        <table class="form_type tb_doc_info">
            <tbody>
               <tr>
                    <th><span class="title">문서번호</span></th>
                    <td><span class="txt"></span></td>
                </tr>
               <tr>
                  <th><span class="title">공개여부</span></th>
                  <td>
                     <span class="option_wrap"><input id="openType_true" type="radio" name="openType" value="true" disabled=""><label for="openType_true">공개</label></span>
                     <span class="option_wrap"><input id="openType_false" type="radio" name="openType" value="false" checked="" disabled=""><label for="openType_false">비공개</label></span>
                  </td>
               </tr>
                <tr id="companyDocFolderUse">
                    <th><span class="title">전사문서함</span></th>
                    <td>
                        <ul class="name_tag" id="addFolder">
                        </ul>
                    </td>
                </tr>
                <tr style="display:none;">
                    <th><span class="title">보안등급</span></th>
                    <td>
                        <select id="infoSecurityLevel">
                            <option value="32" selected="">1</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th><span class="title">보존연한</span></th>
                    <td>
                        <select id="docYear">
                           <option value="5" selected="">5년</option>
                        </select>
                    </td>
                </tr>
                   <tr>
                       <th><span class="title">기안부서</span></th>
                       <td>
                          <select id="drafter_draftDeptId">
                           <option value="130" selected="">영업팀</option>
                     </select>
                  </td>
                   </tr>
                   <tr>
                       <th><span class="title">부서문서함</span></th>
                       <td>
                          <select id="drafter_deptFolderId">
                             <option value="">미지정</option>
                          </select>
                         </td>
                   </tr>
                <tr>
                    <th><span class="title">문서참조</span></th>
                    <td>
                        <div class="wrap_name_tag">
                           <ul class="name_tag" id="addReference">
                           </ul>      
                        </div>                                                                 
                    </td>
                </tr>
            <tr>
                    <th><span class="title">문서열람</span></th>
                    <td>
                        <ul class="name_tag" id="addReading">
                        </ul>                                                                       
                    </td>
                </tr> 
                
                <tr>
                    <th><span class="title">긴급문서</span></th>
                    <td>
                       <span class="option_wrap opt_emergency">
                          <input id="emergency" type="checkbox" name="emergency" value="true">
                          <label for="emergency">긴급</label>
                          <p class="desc">결재자의 대기문서 가장 상단에 표시됩니다.</p>
                       </span>
                    </td>
                </tr>
            </tbody>
        </table>
    </fieldset>
</form></div><div class="aside_wrapper_body" style="display: none;"><div class="aside_wrapper_body">
   <div class="tit_type1"><span class="txt">결재선 변경</span></div>
   <table class="tb_in_table_type1 tb_change_history">
       <thead>
         <tr>
            <th class="date">날짜</th>
            <th class="user">사용자</th>
            <th class="func"></th>
         </tr>
       </thead>
       <tbody id="apprflow_history"><tr>
    <td colspan="3"></td>
</tr>
</tbody>                                
   </table>
</div>
<div class="aside_wrapper_body">
   <div class="tit_type1"><span class="txt">결재문서 변경</span></div>
   <table class="tb_in_table_type1 tb_change_history">
       <thead>
           <tr>
               <th class="date">날짜</th>
               <th class="func">내역</th>
               <th class="user">사용자</th>
           </tr>
       </thead>
       <tbody id="docbody_history"><tr>
    <td colspan="3"></td>
</tr>
</tbody>                                
   </table>
</div></div><div class="aside_wrapper_body" style="display: none;"><ul class="reply">    <li class="inactive last" style="margin-left: 10px">열람기록이 존재하지 않습니다.</li></ul></div><div class="aside_wrapper_body" style="display: none;"><ul class="reply">    <li class="inactive last" style="margin-left: 10px">수신처의 진행상태는 결재 완료된 이후 확인할 수 있습니다.</li></ul></div><div class="aside_wrapper_body" style="display: none;"><ul class="list_line list_officialDoc">    <li class="inactive last" style="margin-left: 10px">공문수신처로 지정된 곳이 없습니다.</li></ul></div></div>
       </section>

       <!--[if IE 8]>
       <style>
          /* IE8 hack */
         @media \0screen {
            div.wrap_swipe div.tab_control {display: none!important}
            div.wrap_swipe div.swipe {margin-left: 0!important}
            div.wrap_swipe ul.tab_nav li {width: auto;}
         } /* // IE8 hack */
       </style>
       <![endif]-->

      <section class="article_reply"></section>
    </div>
   <div class="tool_bar"><div class="critical">

    <!-- 접수대기 -->
    
    <!-- 접수완료 -->
    
    <!-- 수신문서의 반려 -->
    
       <a id="act_draft" class="btn_tool" data-role="button">
            <span class="ic_toolbar approval"></span>
            <span class="txt">결재요청</span>
        </a>
        <span class="btn_tool_group">
           <a id="act_temp_save" class="btn_tool" data-role="button">
                <span class="ic_toolbar save"></span>
                <span class="txt">임시저장</span>
            </a>
           <a id="act_document_preview" class="btn_tool" data-role="button">
                <span class="ic_toolbar preview"></span>
                <span class="txt">미리보기</span>
            </a>
           <a id="act_cancel_draft" class="btn_tool" data-role="button">
                <span class="ic_toolbar cancel"></span>
                <span class="txt">취소</span>
            </a>
        </span>
        
        
        <!-- Start : 결재 정보 Modal, a태그 id : act_edit_apprflow -->
    
           <a id="act_edit_apprflow" class="btn_tool" data-role="button">
                <span class="ic_toolbar info"></span>
                <span class="txt">결재 정보</span>
            </a>
    
        <!-- END : 결재 정보 Modal, a태그 id : act_edit_apprflow -->
        
        
        <!-- <a id="post_regist" class="btn_tool" data-role="button"><span class="txt">게시판 게시</span></a> -->
<a id="hiddenDownloadDoc" data-role="button" href="" style="display:none"></a><form id="download_doc_form" method="POST"><input type="hidden" value="" name="downloadTokenId" id="downloadTokenId"></form><iframe name="ifm_download_doc_form" id="ifm_download_doc_form" style="border:0px;width:0px;height:0px;"></iframe></div>

<ul class="optional">
    <li class="sel_r">
        <label> 
            <select id="autoSaveSelect" evt-rol="auto-save">
                <option value="0">자동저장안함</option>
                <option value="30">자동저장(30초)</option>
                <option value="60">자동저장(1분)</option>
                <option value="180" selected="selected">자동저장(3분)</option>
            </select>
        </label>
    </li>
    <li>
       <a id="act_list" class="btn_tool" data-role="button">
            <span class="ic_toolbar list" title="목록"></span>
            <span class="txt">목록</span>
       </a>
    </li>
</ul></div>
    <section class="tool_bar">
      <ul class="critical">
      </ul>
      <ul class="optional">
      </ul>
   </section>
</div>
</div>

			</div>
			<!-- /Page Content -->
		
		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="/billbo/resources/hrtemp/js/jquery-3.5.1.min.js"></script>

	<!-- Bootstrap Core JS -->

	<!-- Slimscroll JS -->
	<script src="/billbo/resources/hrtemp/js/jquery.slimscroll.min.js"></script>

	<!-- Custom JS 지훈버전으로 수정 -->
	<script src="/billbo/resources/jihunhan/js/approval/approapp.js"></script>

    	<!-- 04/19(월) 결재 정보 Modal -->
    	
    	
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-fullsize" role="document">
			    <div class="modal-content modal-fullsize" style="width:1px;">
			      
			      <!-- 모달 몸통 -->
			      <div class="modal-body">
			      
			      <!-- go_popup -->
			      <div class="go_popup layer_normal detail_search_wrap layer_approval_line ui-draggable" id="gpopupLayer" data-id="19ab247a-1136-4643-b157-c300cf74d916" data-close="false" style="width: 900px; top: 100px; position: absolute; left: 501.5px; z-index: 99;" data-layer="">
				      <header>
					      <h1>결재 정보</h1>
					      <a id="go_popup_close_icon" class="btn_layer_x" style="" data-bypass="" title="닫기">
					      <span class="ic"></span><span class="txt"></span>
					      </a>
				      </header>
				      
				      
				      <!-- content apprflow-editor -->
			      	<div class="content apprflow-editor">
			      	
			      	<!-- tab : 결재선, 참조가, 열람자 -->
			      	<div class="tab_menu_wrap">
						<ul class="maintab tab_menu"><li data-role="tab" data-tabid="apprline" class="active"><span class="ic_txt_change">*</span><span class="txt">결재선</span></li><li data-role="tab" data-tabid="referer"><span class="ic_txt_change">*</span><span class="txt">참조자</span></li><li data-role="tab" data-tabid="reader"><span class="ic_txt_change">*</span><span class="txt">열람자</span></li></ul>
						<div class="alert-modified alert_help_wrap">
							<ins class="ic_con ic_alert"></ins>
							<span class="txt">* 저장되지 않은 정보가 있습니다.</span>
						</div>
					</div><!-- //tab -->

						<div class="set_wrap wrap_approval_agree">
						
						    <div class="aside-apprline set_nav" style="display: block;">
						
						        
						        <ul class="sidetab tab_type3 tab_type3_column2"><li data-role="tab" data-tabid="orgtree" class="selected first"><a href="#" data-bypass=""><span class="txt">조직도</span></a></li><li data-role="tab" data-tabid="myapprline" class="last"><a href="#" data-bypass=""><span class="txt">나의 결재선</span></a></li></ul>
						       	
						       	<!-- Start sidetab -->
						        <div class="sidetab-item"><div id="aside-dept-orgtree" class="tabview-depttree" style="display: none;">
						        <div class="orgTree_wrap">	
						        
						        <!-- 04/20 이거 필요없음 -->
						        <!-- <div class="orgTree content_tab_wrap">
						        <div id="aside-dept-orgtree-tree" class="jstree jstree-7 jstree-default jstree_depth" style="min-height: 306px; max-height: 306px;"><ul><li title="다우그룹" rel="company" nodeid="10" id="company_10" class="jstree-open jstree-last jstree-company depth0"><ins class="jstree-icon">&nbsp;</ins>
						        <a title="" rel="company" nodeid="10" id="company_10" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon company"></ins>다우그룹</a>
						        <ul><li title="영업본부" rel="org" nodeid="123" id="org_123" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="123" id="org_123" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>영업본부</a></li><li title="개발본부" rel="org" nodeid="178" id="org_178" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins>
						        <a title="" rel="org" nodeid="178" id="org_178" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>개발본부</a></li><li title="경영지원본부" rel="org" nodeid="124" id="org_124" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="124" id="org_124" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>경영지원본부</a></li>
						        <li title="서비스본부" rel="org" nodeid="182" id="org_182" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="182" id="org_182" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>서비스본부</a></li><li title="(주)애드픽션" rel="org" nodeid="221" id="org_221" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="221" id="org_221" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>(주)애드픽션</a>
						        </li></ul></li></ul></div>	
						        </div> -->
						         
						        <div id="aside-dept-orgtree-search" class="content_tab_wrap" style="display: none;border:none;padding:5px 0px 5px 0px">	</div></div></div>
						        
						       	<!-- Start aside-orgtree -->
						        <div id="aside-orgtree" class="tabview-orgtree" style="display: block;">
						        
							        <section class="search">    
							      	  <div class="search_wrap">    	<form onsubmit="return false;">        <input id="org_tree_tab_search_input" class="search" type="text" placeholder="이름/아이디/부서/직위/직책/전화" title="이름/아이디/부서/직위/직책/전화">        <input class="btn_search" type="button" value="" title="" evt-rol="mail-search"> 		</form>    </div>    
							       	  <div id="detailSearchLayerWrap" style="position:relative;display:none;z-index:60"></div>
							       	</section>
							       	
							       	<!-- Start orgTree_wrap -->
							       	<div class="orgTree_wrap">	
							       	<div class="orgTree content_tab_wrap">
							       	
							       	<!-- Start aside-orgtree-tree -->		
							       	<div id="aside-orgtree-tree" class="jstree jstree-9 jstree-focused jstree-default jstree_depth" style="min-height: 306px; max-height: 306px;">
							         <ul id="firstList" >
							       	 <li title="Billbo" rel="company" nodeid="10" id="company_10" class="jstree-open jstree-last jstree-company depth0"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="company" nodeid="10" id="company_10" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon company"></ins>BillBo</a>
								      <ul>
								        		<li>테스트를 위한 li 생성함</li>
								      </ul>
								        <li title="영업본부" rel="org" nodeid="123" id="org_123" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="123" id="org_123" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>영업본부</a></li>
								        <li title="마지막본부" rel="org" nodeid="124" id="org_124" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="124" id="org_124" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>마지막본부</a>
									        <ul>
									        <li title="한성준 과장" rel="MASTER" nodeid="476" id="MASTER_476" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MASTER" nodeid="476" id="MASTER_476" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>한성주니 과장</a></li>
									        <li title="유수연 상무" rel="MODERATOR" nodeid="191" id="MODERATOR_191" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MODERATOR" nodeid="191" id="MODERATOR_191" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>유수연 상무</a></li>
									        <li title="전병헌 차장" rel="MODERATOR" nodeid="334" id="MODERATOR_334" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MODERATOR" nodeid="334" id="MODERATOR_334" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>전병헌 차장</a></li>
									        <li title="이다우 감사" rel="MEMBER" nodeid="344" id="MEMBER_344" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MEMBER" nodeid="344" id="MEMBER_344" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>이다우 감사</a></li>
									        </ul>
								        </li>
								        <li title="서비스본부" rel="org" nodeid="182" id="org_182" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="182" id="org_182" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>서비스본부</a></li>
								      </ul>
								     </li>
								     </ul>
								    </div>
								    <!-- End aside-orgtree-tree -->
								    
								    </div>	
								    <div id="aside-orgtree-search" class="content_tab_wrap" style="display: none;border:none;padding:5px 0px 5px 0px"></div>
							        
							        </div>
							        <!-- End orgTree_wrap -->
						        
						        </div>
						       	<!-- End aside-orgtree -->
						        
						        </div>
						       	<!-- End sidetab -->
						
						    </div>
						    
						    <div class="maintab-item wrap_tab_data"><div class="set_data wrap_approvalLine_set tabview-apprline" style="display: block;"><table class="type_normal tb_approval_line">
						    <thead>
						        <tr>
						            <th class="btn"></th>
						            <th class="name">이름</th>
						            <th class="depart">부서</th>
						            <th class="state">상태</th>
						        </tr>
						    </thead>
						</table>        
						<div id="activity_groups" class="list_approval_line_wrap"><div class="activity_group ui-sortable" data-index="0"><div class="approval_line"> 
						    <div class="tit_type3"><span class="txt">승인</span></div>
						    
						    
						    <div class="list_approval_line">
						        <div class="btn_langth add_activity" title="추가" data-id=""><span class="ic_con ic_arrow_type4"></span></div>
						        <div class="tb_approval_line_wrap">
						            <table id="resultTable" class="appr-activity-table type_normal tb_approval_line">
						                <tbody>
						                        <tr data-userid="235" data-deptid="124" class="appr-activity activity inactive  ui-droppable">
						                            <td class="kind">
						                                기안
						                            </td>
						                            <td class="name">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }</td>
						                            <td class="depart">${ requestScope.dept.deptName }</td>
						                            <td class="state"></td>
						                            <td class="func"></td>
						                        </tr>
						                        <!-- <tr data-userid="236" data-deptid="124" class="appr-activity activity   ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">한성준</td>
						                            <td class="depart">경영지원본부</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr>
						                        <tr data-userid="55" data-deptid="124" class="appr-activity activity  last ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">유수연</td>
						                            <td class="depart">경영지원본부</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr> -->
						                </tbody>
						            </table>
						        </div>
						    </div>
						</div>
						</div><div class="activity_group hidden_and_empty_group" style="height: 78px;">     <div class="empty_approval_line" style="height: 100%">
						         <table style="height: 100%">
						             <tbody style="height: 100%">
						                 <tr class="appr-activity activity ui-droppable" data-isnullactivity="true" style="height: 100%">
						                     <td style="width: 100%; height: 100%"></td>
						                 </tr>
						             </tbody>
						         </table>
						     </div>
						</div></div>
						
						<div class="tit_type2">
							<a class="save-myapprline-btn btn_fn6" href="#" data-bypass="">개인 결재선으로 저장</a>
							<span class="horspace1"></span>
						    <span class="tit">합의방식 : </span>
						    <span class="option_wrap">
						    	<input id="series" type="radio" name="useParallelAgreement" value="false" checked="">
						    	<label for="series">순차합의</label>
						   	</span>
						    <span class="option_wrap">
						    	<input id="parallel" type="radio" name="useParallelAgreement" value="true">
						    	<label for="parallel">병렬합의</label>
						   	</span>
						</div></div></div>
						</div>
				</div>
				<!-- content apprflow-editor -->

				<footer class="btn_layer_wrap">
					<a class="btn_major_s" data-dismiss="modal" data-bypass="" style="margin-right:5px" title="확인"><span class="ic"></span><span class="txt">확인</span></a>
					<a class="btn_minor_s" data-dismiss="modal" data-bypass="" style="margin-right:5px" title="취소"><span class="ic"></span><span class="txt">취소</span></a>
				</footer>
					</div>
					<!-- go_popup -->
			      </div>
			      <!-- 모달 몸통 -->
	<script type="text/javascript">
		
		var lineList = [];
		var memNo = 0;
		var memNo2 = 0;
		var memNo3 = 0;
		
		const $ul = $("#firstList")
		
		$("#act_edit_apprflow").click(function() {
			console.log('이건 결재 정보를 눌러승ㄹ 때');
			var test = '테스트다 이거지';
			
			$.ajax({
				   url: "${ pageContext.servletContext.contextPath }/approval/document/1004LineCheck",
				   type: 'POST',
		           dataType: 'json',
		           data: {
		        	   test : test
		           },
		           success : function(data, textStatus, xhr) {
		        	   
		        	
		        	/* 1. Controller에서 넘겨받은 data 출력하기 */
		           	console.table(data);
		           	console.log(data[2]);
		           	console.log(data[2].memberNameLine);
		           	
		        	/* 2. 배열 변수를 만들어서 받아온 List를 담기 */
		           	lineList = data;
		           	
		        	/* 2-1. 배열 변수를 index와 value를 이용하여 출력하기 */
		           	$.each(lineList, function(index, value) {
		           		console.log( index + " : " + value.memberNameLine);
		           	});
		           	
		        	/* 2-2. 배열 변수 출력2 */
		           	console.log(lineList[0]);
		           	
					$.each(lineList, function(index, value) {
						$firstInput = $("<li value='" + value.memberNoLine + "' title='사번' class='jstree-leaf'> <span value='child로 접근 실패'> <input name='jihun' type='hidden' value='" + value.memberNoLine + "'> </span> <a title='첫번째a' id='firstA'>" + value.memberNameLine + " " + value.spotNameLien + "</a> </li>")
						$ul.append($firstInput);
					});
					
					/* 사원을 클릭해서 결재선에 등록하기 */
					$("#firstList > li").click(function() {
						
						/* 1. this : 내용 */
						console.log(this);
						
						/* 2. $(this).html() : li 안의 내용이 나온다. */
						console.log($(this).html());
						
						/* 3. $(this).attr('value') : 사번 */
						console.log('memNo에 담기 전 순수 값 : ' + $(this).attr('value'));
						
						/* 4. 해당 사번으로 변수 */
						memNo = $(this).attr('value');	//3번 사원 기준 값 4
						memNo2 = memNo - 1;				//3번 사원 기준 값 3
						memNo3 = memNo2 - 1;			//3번 사원 기준 값 2
						
						console.log(lineList[memNo2]);
						
						const $table = $("#resultTable");
						$tr = $("<tr>")
						$tdValue1 = $("<td> <select> <option name='type' value='APPROVAL' selected=''>결재</option> </select> </td>");	//타입
						$tdValue2 = $("<td>").text(lineList[memNo2].memberNameLine);	//이름
						$tdValue3 = $("<td>").text(lineList[memNo2].deptNameLine);	//부서
						
						$tr.append($tdValue1);
						$tr.append($tdValue2);
						$tr.append($tdValue3);
						$table.append($tr);
						
						/* 5. 결재 승인 담기 */
						const $span = $("#admissionTr")
						
						/* $admission1 = $("<td style='padding: 0px !important; border: 0px currentColor !important; border-image: none !important !important; width: 500px; text-align: right; vertical-align: top !important;' class=''> <span class='sign_type1_inline' style='line-height: normal; font-family: malgun gothic,dotum,arial,tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;' data-group-seq='0' data-group-name='승인' data-group-max-count='7' data-group-type='type1' data-is-reception=''>");	//타입
						$admission2 = $("<span class='sign_tit_wrap'> <span class='sign_tit'><strong>승인</strong></span></span>");	//타입
						$admission3 = $("<span class='sign_member_wrap' id='activity_16049'> <span class='sign_member'> <span class='sign_rank_wrap'> <span class='sign_rank'> ${ requestScope.spot.spotName }</span></span> <span class='sign_wrap'>	<span class='sign_name'>${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }</span></span> <span class='sign_date_wrap'> <span class='sign_date' id='date_16049'></span></span></span></span></span></td>"); */	//타입
						
						$admission1 = $("<span class='sign_tit_wrap'> <span class='sign_tit'><strong>승인</strong></span></span><span class='sign_member_wrap' id='activity_16049'> <span class='sign_member'> <span class='sign_rank_wrap'> <span class='sign_rank'>" + lineList[memNo2].deptNameLine + "</span></span> <span class='sign_wrap'>	<span class='sign_name'>" + lineList[memNo2].memberNameLine + "</span></span> <span class='sign_date_wrap'> <span class='sign_date' id='date_16049'></span></span></span></span>");	//타입
						
						$span.append($admission1);
						
						/* 6. form태그에 input 담기 List 타입*/
						const $span3 = $("#hiddenInput");
						
						console.log('memNo : ' + memNo);	//3번 사원 기준 값 4
						console.log('memNo2 : ' + memNo2);	//3번 사원 기준 값 3
						/* console.log('memNo3 : ' + memNo3);	//3번 사원 기준 값 2 */
						/* console.log('lineList[memNo].memberNoLine : ' + lineList[memNo].memberNoLine);
						console.log('lineList[memNo2].memberNoLine : ' + lineList[memNo2].memberNoLine);
						console.log("<input name='memberNoLine[ + 3 + ] : " + "<input name='memberNoLine[" + 3 + "]"); */	//3번 사원 기준 값 4
 						$hiddenInputMemListLine = $("<input name='lineMem[" + memNo3 + "].memberNoLine' type='hidden' value='" + lineList[memNo2].memberNoLine + "'> <input name='lineMem[" +memNo3 + "].memberNameLine' type='hidden' value='" + lineList[memNo2].memberNameLine + "'> <input name='lineMem[" + memNo3 + "].deptCodeLine' type='hidden' value='" + lineList[memNo2].deptCodeLine + "'> <input name='lineMem[" + memNo3 + "].deptNameLine' type='hidden' value='" + lineList[memNo2].deptNameLine + "'> <input name='lineMem[" + memNo3 + "].spotCodeLine' type='hidden' value='" + lineList[memNo2].spotCodeLine + "'> <input name='lineMem[" + memNo3 + "].spotNameLien' type='hidden' value='" + lineList[memNo2].spotNameLien + "'> ");
 						/* $hiddenInputMemListLine1 = $("<input name='lineMem[" + memNo3 + "].memberNoLine' type='hidden' value='" + lineList[memNo2].memberNoLine + "'> <input name='lineMem[" + memNo3 + "].memberNameLine' type='hidden' value='" + lineList[memNo2].memberNameLine + "'>"); */
 						$span3.append($hiddenInputMemListLine);
 						/* $span3.append($hiddenInputMemListLine1); */
 						
						/* $hiddenInputMemListLine = $("<input name='" + lineMem[memNo3].memberNoLine + "' type='hidden' value='" + lineList[memNo2].memberNoLine + "'> <input name='" + lineMem[memNo3].memberNameLine + "' type='hidden' value='" + lineList[memNo2].memberNameLine + "'>")
						console.log("<input name='" + lineMem[memNo3].memberNoLine + "' type='hidden' value='" + lineList[memNo2].memberNoLine + "'> <input name='" + lineMem[memNo3].memberNameLine + "' type='hidden' value='" + lineList[memNo2].memberNameLine + "'>")
						$span3.append($hiddenInputMemListLine); */
						
					});
					
		           },
		           error : function(xhr, status, error) {}
		       });
		
			
		});
		
		/* 모달 닫기 */
		$(".btn_major_s").click(function() {
			console.log('모달 종료 가즈아');
			console.log(memNo);
			console.log(memNo2);
			console.log(lineList[memNo2]);
		});
		
		
	</script>
		
		   <!-- 설정 -->
   <jsp:useBean id="nowday" class="java.util.Date"/>
   <jsp:useBean id="nowtime" class="java.util.Date"/>
   <fmt:formatDate value="${nowday}" pattern="yyyy-MM-dd" var="today" />
   <fmt:formatDate value="${nowtime}" pattern="HH:mm:ss" var="todaytime" />
   
   <script>
	   	console.log('안녕');
	   	$("#memberName").val('${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }');
	   	$("#draftDate").val('<c:out value="${today}"/>');
	   	$("#docNo").val(1004);
	   	$("#draftDept").val('${ requestScope.dept.deptName }');
        	
   </script>
   <!-- 설정 -->
   
   
   <!-- 결재 AJAX -->
   <script>
   $("#act_draft").click(function() {
	   console.log($("input[name='startDate']").val());
	   
	   if($("input[name='startDate']").val() == "") {
		   alert("시작 일시를 선택해주세요.");
	   } else if($("input[name='endDate']").val() == "") {
		   alert("종료 일시를 선택해주세요.");
	   } else {
			console.log('memNo : ' + memNo);	//3번 사원 기준 값 4
			console.log('memNo2 : ' + memNo2);	//3번 사원 기준 값 3
			/* console.log('memNo3 : ' + memNo3);	//3번 사원 기준 값 2 */
			/* console.log('lineList[memNo2].memberNoLine : ' + lineList[memNo2].memberNoLine); */
		   alert("컨트롤러로 이동");
		   /* Hidden 추가 */
		   const $span = $("#hiddenInput");
		   /* memberno, time, paymentNo */
		   $hiddenInput = $("<input name='memberno' type='hidden' value='${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }'> <input name='time' type='hidden' value='<c:out value="${todaytime}"/>'> <input name='paymentNo' type='hidden' value='1004'>")
		   /* Login DeptDTO */
		   $hiddenInputDeptDTO = $("<input name='deptRnum' type='hidden' value='${ requestScope.dept.deptRnum }'> <input name='deptCode' type='hidden' value='${ requestScope.dept.deptCode }'> <input name='deptName' type='hidden' value='${ requestScope.dept.deptName }'> <input name='upper' type='hidden' value='${ requestScope.dept.upper }'> <input name='level' type='hidden' value='${ requestScope.dept.level }'> <input name='modifyDeptDate' type='hidden' value='${ requestScope.dept.modifyDeptDate }'>")
		   /* Login SpotDTO */
		   $hiddenInputSpotDTO = $("<input name='spotRnum' type='hidden' value='${ requestScope.spot.spotRnum }'> <input name='spotCode' type='hidden' value='${ requestScope.spot.spotCode }'> <input name='spotName' type='hidden' value='${ requestScope.spot.spotName }'> <input name='modifySpotDate' type='hidden' value='${ requestScope.spot.modifySpotDate }'>")
		   /* $hiddenInputlineMemDTO = $("<input name='lineMem[0].lineKinds' type='hidden' value='첫 번째 휴가휴가'> <input name='lineMem[1].lineKinds' type='hidden' value='두 번째 근무근무'> <input name='lineMem[0].deptCode' type='hidden' value='부서코드부서코드'> <input name='lineMem[1].deptCode' type='hidden' value='두번째에에에에부서코드부서코드'> <input name='lineMem[0].spotCode' type='hidden' value='직위는직급과직책과뭐가 다른가?'> <input name='lineMem[1].spotCode' type='hidden' value='피곤하다아아아아아아 피곤해ㅐ해해해해'>")
		   
		   /* 담기 */
		   $span.append($hiddenInput);
		   $span.append($hiddenInputDeptDTO);
		   $span.append($hiddenInputSpotDTO);
		   
		   /* input 확인 및 submit */
		   var jihun = $('form[name="vacation01"]').serializeArray();
		   console.table(jihun);
		   $("form[name='vacation01']").submit();
	   }
	   
	   /* $.ajax({
		   url: "${ pageContext.servletContext.contextPath }/approval/document/1004",
		   type: 'POST',
           dataType: 'json',
           data: {
               jihun : jihun
           },
           success : function(data, textStatus, xhr) {
              alert(data);
           	console.log("뭐가나오냐?");
           },
           error : function(xhr, status, error) {}
       }); */

   });
   
   </script>
			      
			      
			      
			    </div>
			  </div>
			</div>
    	
    	
    	<!-- 04/19(월) End 결재 정보 Modal -->

</body>
</html>