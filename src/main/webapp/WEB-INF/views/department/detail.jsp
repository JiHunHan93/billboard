<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <title>BB-사원조회 및 부서조회</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="./resources/hrtemp/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="./resources/hrtemp/css/dataTables.bootstrap4.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="./resources/hrtemp/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="./resources/hrtemp/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="./resources/hrtemp/js/html5shiv.min.js"></script>
			<script src="./resources/hrtemp/js/respond.min.js"></script>
		<![endif]-->
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
							href="${pageContext.servletContext.contextPath}/employee"
							class="sidebar-default"> <i
								class="la la-briefcase sidebar-icon"></i> <span
								class="sidebar-text">employee</span>
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
            
				
          	<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Profile</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active">Profile</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="card mb-0">
					<c:forEach var="memberDetail" items="${requestScope.memberDetail}">
					<form id="form1" action="${pageContext.servletContext.contextPath }/upload" method="POST" enctype="multipart/form-data" class="btn btn-custom">
									<input type="file" name="FileAttachment" class="btn btn-custom">
								 	<input type="submit" value="업로드" class="btn btn-custom">
					</form>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="profile-view">
										<div class="profile-img-wrap">
											<div class="profile-img">
												<a href="#"><img src=/billbo/resources/images/main<c:out value="/${memberDetail.originalName}"/>></a>
											</div>
										</div>
										
										<div class="profile-basic">
											<div class="row">
												<div class="col-md-5">
												
													<div class="profile-info-left">
														<h3 class="user-name m-t-0 mb-0"><c:out value="${memberDetail.memberName}"/></h3>
														<h4 class="text-muted"><c:out value="${memberDetail.deptName}"/></h4>
														<!-- <small class="text-muted">Web Designer</small> -->
														<div class="staff-id">Employee ID : <c:out value="${memberDetail.no}"/></div>
														<div class="small doj text-muted"><h4>입사일 : <c:out value="${memberDetail.enrollDate}"/></h4></div>
														<div class="staff-msg"><a class="btn btn-custom" href="chat.html">Send Message</a></div>
													</div>
												</div>
												<div class="col-md-7">
												
													<ul class="personal-info">
														<li>
															<div class="title">휴대폰 번호:</div>
															<div class="text"><a href=""><c:out value="${memberDetail.phone}"/></a></div>
														</li>
														<li>
															<div class="title">Email:</div>
															<div class="text"><a href=""><c:out value="${memberDetail.email}"/></a></div>
														</li>
														<!-- <li>
															<div class="title">Birthday:</div>
															<div class="text">24th July</div>
														</li> -->
														<li>
															<div class="title">Address:</div>
															<div class="text"><c:out value="${memberDetail.address}"/></div>
														</li>
														<li>
															<div class="title">Gender:</div>
															<div class="text">Male</div>
														</li>
														<li>
															<!-- <div class="title">Reports to:</div>
															<div class="text">
															   <div class="avatar-box">
																  <div class="avatar avatar-xs">
																	 <img src="assets/img/profiles/avatar-16.jpg" alt="">
																  </div>
															   </div>
															   <a href="profile.html">
																	Jeffery Lalor
																</a>
															</div> -->
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="pro-edit"><a data-target="#profile_info" data-toggle="modal" class="edit-icon" href="#"><i class="fa fa-pencil"></i></a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach/>
						<!-- /Profile Info Tab -->
						
						<!-- Projects Tab -->
						<div class="tab-pane fade" id="emp_projects">
							<div class="row">
								<div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
									<div class="card">
										<div class="card-body">
											<div class="dropdown profile-action">
												<a aria-expanded="false" data-toggle="dropdown" class="action-icon dropdown-toggle" href="#"><i class="material-icons">more_vert</i></a>
												<div class="dropdown-menu dropdown-menu-right">
													<a data-target="#edit_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-pencil m-r-5"></i> Edit</a>
													<a data-target="#delete_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
												</div>
											</div>
											<h4 class="project-title"><a href="project-view.html">Office Management</a></h4>
											<small class="block text-ellipsis m-b-15">
												<span class="text-xs">1</span> <span class="text-muted">open tasks, </span>
												<span class="text-xs">9</span> <span class="text-muted">tasks completed</span>
											</small>
											<p class="text-muted">Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. When an unknown printer took a galley of type and
												scrambled it...
											</p>
											<div class="pro-deadline m-b-15">
												<div class="sub-title">
													Deadline:
												</div>
												<div class="text-muted">
													17 Apr 2019
												</div>
											</div>
											<div class="project-members m-b-15">
												<div>Project Leader :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="Jeffery Lalor"><img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
													</li>
												</ul>
											</div>
											<div class="project-members m-b-15">
												<div>Team :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="John Doe"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Richard Miles"><img alt="" src="assets/img/profiles/avatar-09.jpg"></a></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="John Smith"><img alt="" src="assets/img/profiles/avatar-10.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Mike Litorus"><img alt="" src="assets/img/profiles/avatar-05.jpg"></a>
													</li>
													<li>
														<a href="#" class="all-users">+15</a>
													</li>
												</ul>
											</div>
											<p class="m-b-5">Progress <span class="text-success float-right">40%</span></p>
											<div class="progress progress-xs mb-0">
												<div style="width: 40%" title="" data-toggle="tooltip" role="progressbar" class="progress-bar bg-success" data-original-title="40%"></div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
									<div class="card">
										<div class="card-body">
											<div class="dropdown profile-action">
												<a aria-expanded="false" data-toggle="dropdown" class="action-icon dropdown-toggle" href="#"><i class="material-icons">more_vert</i></a>
												<div class="dropdown-menu dropdown-menu-right">
													<a data-target="#edit_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-pencil m-r-5"></i> Edit</a>
													<a data-target="#delete_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
												</div>
											</div>
											<h4 class="project-title"><a href="project-view.html">Project Management</a></h4>
											<small class="block text-ellipsis m-b-15">
												<span class="text-xs">2</span> <span class="text-muted">open tasks, </span>
												<span class="text-xs">5</span> <span class="text-muted">tasks completed</span>
											</small>
											<p class="text-muted">Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. When an unknown printer took a galley of type and
												scrambled it...
											</p>
											<div class="pro-deadline m-b-15">
												<div class="sub-title">
													Deadline:
												</div>
												<div class="text-muted">
													17 Apr 2019
												</div>
											</div>
											<div class="project-members m-b-15">
												<div>Project Leader :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="Jeffery Lalor"><img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
													</li>
												</ul>
											</div>
											<div class="project-members m-b-15">
												<div>Team :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="John Doe"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Richard Miles"><img alt="" src="assets/img/profiles/avatar-09.jpg"></a></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="John Smith"><img alt="" src="assets/img/profiles/avatar-10.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Mike Litorus"><img alt="" src="assets/img/profiles/avatar-05.jpg"></a>
													</li>
													<li>
														<a href="#" class="all-users">+15</a>
													</li>
												</ul>
											</div>
											<p class="m-b-5">Progress <span class="text-success float-right">40%</span></p>
											<div class="progress progress-xs mb-0">
												<div style="width: 40%" title="" data-toggle="tooltip" role="progressbar" class="progress-bar bg-success" data-original-title="40%"></div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
									<div class="card">
										<div class="card-body">
											<div class="dropdown profile-action">
												<a aria-expanded="false" data-toggle="dropdown" class="action-icon dropdown-toggle" href="#"><i class="material-icons">more_vert</i></a>
												<div class="dropdown-menu dropdown-menu-right">
													<a data-target="#edit_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-pencil m-r-5"></i> Edit</a>
													<a data-target="#delete_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
												</div>
											</div>
											<h4 class="project-title"><a href="project-view.html">Video Calling App</a></h4>
											<small class="block text-ellipsis m-b-15">
												<span class="text-xs">3</span> <span class="text-muted">open tasks, </span>
												<span class="text-xs">3</span> <span class="text-muted">tasks completed</span>
											</small>
											<p class="text-muted">Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. When an unknown printer took a galley of type and
												scrambled it...
											</p>
											<div class="pro-deadline m-b-15">
												<div class="sub-title">
													Deadline:
												</div>
												<div class="text-muted">
													17 Apr 2019
												</div>
											</div>
											<div class="project-members m-b-15">
												<div>Project Leader :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="Jeffery Lalor"><img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
													</li>
												</ul>
											</div>
											<div class="project-members m-b-15">
												<div>Team :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="John Doe"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Richard Miles"><img alt="" src="assets/img/profiles/avatar-09.jpg"></a></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="John Smith"><img alt="" src="assets/img/profiles/avatar-10.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Mike Litorus"><img alt="" src="assets/img/profiles/avatar-05.jpg"></a>
													</li>
													<li>
														<a href="#" class="all-users">+15</a>
													</li>
												</ul>
											</div>
											<p class="m-b-5">Progress <span class="text-success float-right">40%</span></p>
											<div class="progress progress-xs mb-0">
												<div style="width: 40%" title="" data-toggle="tooltip" role="progressbar" class="progress-bar bg-success" data-original-title="40%"></div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
									<div class="card">
										<div class="card-body">
											<div class="dropdown profile-action">
												<a aria-expanded="false" data-toggle="dropdown" class="action-icon dropdown-toggle" href="#"><i class="material-icons">more_vert</i></a>
												<div class="dropdown-menu dropdown-menu-right">
													<a data-target="#edit_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-pencil m-r-5"></i> Edit</a>
													<a data-target="#delete_project" data-toggle="modal" href="#" class="dropdown-item"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
												</div>
											</div>
											<h4 class="project-title"><a href="project-view.html">Hospital Administration</a></h4>
											<small class="block text-ellipsis m-b-15">
												<span class="text-xs">12</span> <span class="text-muted">open tasks, </span>
												<span class="text-xs">4</span> <span class="text-muted">tasks completed</span>
											</small>
											<p class="text-muted">Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. When an unknown printer took a galley of type and
												scrambled it...
											</p>
											<div class="pro-deadline m-b-15">
												<div class="sub-title">
													Deadline:
												</div>
												<div class="text-muted">
													17 Apr 2019
												</div>
											</div>
											<div class="project-members m-b-15">
												<div>Project Leader :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="Jeffery Lalor"><img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
													</li>
												</ul>
											</div>
											<div class="project-members m-b-15">
												<div>Team :</div>
												<ul class="team-members">
													<li>
														<a href="#" data-toggle="tooltip" title="John Doe"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Richard Miles"><img alt="" src="assets/img/profiles/avatar-09.jpg"></a></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="John Smith"><img alt="" src="assets/img/profiles/avatar-10.jpg"></a>
													</li>
													<li>
														<a href="#" data-toggle="tooltip" title="Mike Litorus"><img alt="" src="assets/img/profiles/avatar-05.jpg"></a>
													</li>
													<li>
														<a href="#" class="all-users">+15</a>
													</li>
												</ul>
											</div>
											<p class="m-b-5">Progress <span class="text-success float-right">40%</span></p>
											<div class="progress progress-xs mb-0">
												<div style="width: 40%" title="" data-toggle="tooltip" role="progressbar" class="progress-bar bg-success" data-original-title="40%"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /Projects Tab -->
						
						<!-- Bank Statutory Tab -->
						<div class="tab-pane fade" id="bank_statutory">
							<div class="card">
								<div class="card-body">
									<h3 class="card-title"> Basic Salary Information</h3>
									<form>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Salary basis <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select salary basis type</option>
														<option>Hourly</option>
														<option>Daily</option>
														<option>Weekly</option>
														<option>Monthly</option>
													</select>
											   </div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Salary amount <small class="text-muted">per month</small></label>
													<div class="input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">$</span>
														</div>
														<input type="text" class="form-control" placeholder="Type your salary amount" value="0.00">
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Payment type</label>
													<select class="select">
														<option>Select payment type</option>
														<option>Bank transfer</option>
														<option>Check</option>
														<option>Cash</option>
													</select>
											   </div>
											</div>
										</div>
										<hr>
										<h3 class="card-title"> PF Information</h3>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">PF contribution</label>
													<select class="select">
														<option>Select PF contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">PF No. <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select PF contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Employee PF rate</label>
													<select class="select">
														<option>Select PF contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Additional rate <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select additional rate</option>
														<option>0%</option>
														<option>1%</option>
														<option>2%</option>
														<option>3%</option>
														<option>4%</option>
														<option>5%</option>
														<option>6%</option>
														<option>7%</option>
														<option>8%</option>
														<option>9%</option>
														<option>10%</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Total rate</label>
													<input type="text" class="form-control" placeholder="N/A" value="11%">
												</div>
											</div>
									   </div>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Employee PF rate</label>
													<select class="select">
														<option>Select PF contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Additional rate <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select additional rate</option>
														<option>0%</option>
														<option>1%</option>
														<option>2%</option>
														<option>3%</option>
														<option>4%</option>
														<option>5%</option>
														<option>6%</option>
														<option>7%</option>
														<option>8%</option>
														<option>9%</option>
														<option>10%</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Total rate</label>
													<input type="text" class="form-control" placeholder="N/A" value="11%">
												</div>
											</div>
										</div>
										
										<hr>
										<h3 class="card-title"> ESI Information</h3>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">ESI contribution</label>
													<select class="select">
														<option>Select ESI contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">ESI No. <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select ESI contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Employee ESI rate</label>
													<select class="select">
														<option>Select ESI contribution</option>
														<option>Yes</option>
														<option>No</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Additional rate <span class="text-danger">*</span></label>
													<select class="select">
														<option>Select additional rate</option>
														<option>0%</option>
														<option>1%</option>
														<option>2%</option>
														<option>3%</option>
														<option>4%</option>
														<option>5%</option>
														<option>6%</option>
														<option>7%</option>
														<option>8%</option>
														<option>9%</option>
														<option>10%</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-form-label">Total rate</label>
													<input type="text" class="form-control" placeholder="N/A" value="11%">
												</div>
											</div>
									   </div>
										
										<div class="submit-section">
											<button class="btn btn-primary submit-btn" type="submit">Save</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- /Bank Statutory Tab -->
						
					</div>
                </div>
				<!-- /Page Content -->
				
				<!-- Profile Modal -->
				<div id="profile_info" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Profile Information</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="row">
										<div class="col-md-12">
											<div class="profile-img-wrap edit-img">
												<img class="inline-block" src="assets/img/profiles/avatar-02.jpg" alt="user">
												<div class="fileupload btn">
													<span class="btn-text">edit</span>
													<input class="upload" type="file">
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>First Name</label>
														<input type="text" class="form-control" value="John">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Last Name</label>
														<input type="text" class="form-control" value="Doe">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Birth Date</label>
														<div class="cal-icon">
															<input class="form-control datetimepicker" type="text" value="05/06/1985">
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Gender</label>
														<select class="select form-control">
															<option value="male selected">Male</option>
															<option value="female">Female</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Address</label>
												<input type="text" class="form-control" value="4487 Snowbird Lane">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>State</label>
												<input type="text" class="form-control" value="New York">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Country</label>
												<input type="text" class="form-control" value="United States">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Pin Code</label>
												<input type="text" class="form-control" value="10523">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Phone Number</label>
												<input type="text" class="form-control" value="631-889-3206">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Department <span class="text-danger">*</span></label>
												<select class="select">
													<option>Select Department</option>
													<option>Web Development</option>
													<option>IT Management</option>
													<option>Marketing</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Designation <span class="text-danger">*</span></label>
												<select class="select">
													<option>Select Designation</option>
													<option>Web Designer</option>
													<option>Web Developer</option>
													<option>Android Developer</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Reports To <span class="text-danger">*</span></label>
												<select class="select">
													<option>-</option>
													<option>Wilmer Deluna</option>
													<option>Lesley Grauer</option>
													<option>Jeffery Lalor</option>
												</select>
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Profile Modal -->
				
				<!-- Personal Info Modal -->
				<div id="personal_info_modal" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Personal Information</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Passport No</label>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Passport Expiry Date</label>
												<div class="cal-icon">
													<input class="form-control datetimepicker" type="text">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Tel</label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Nationality <span class="text-danger">*</span></label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Religion</label>
												<div class="cal-icon">
													<input class="form-control" type="text">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Marital status <span class="text-danger">*</span></label>
												<select class="select form-control">
													<option>-</option>
													<option>Single</option>
													<option>Married</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Employment of spouse</label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>No. of children </label>
												<input class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Personal Info Modal -->
				
				<!-- Family Info Modal -->
				<div id="family_info_modal" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title"> Family Informations</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-scroll">
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Family Member <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label>Name <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Relationship <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Date of birth <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Phone <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Education Informations <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label>Name <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Relationship <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Date of birth <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label>Phone <span class="text-danger">*</span></label>
															<input class="form-control" type="text">
														</div>
													</div>
												</div>
												<div class="add-more">
													<a href="javascript:void(0);"><i class="fa fa-plus-circle"></i> Add More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Family Info Modal -->
				
				<!-- Emergency Contact Modal -->
				<div id="emergency_contact_modal" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Personal Information</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="card">
										<div class="card-body">
											<h3 class="card-title">Primary Contact</h3>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Name <span class="text-danger">*</span></label>
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Relationship <span class="text-danger">*</span></label>
														<input class="form-control" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Phone <span class="text-danger">*</span></label>
														<input class="form-control" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Phone 2</label>
														<input class="form-control" type="text">
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="card">
										<div class="card-body">
											<h3 class="card-title">Primary Contact</h3>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Name <span class="text-danger">*</span></label>
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Relationship <span class="text-danger">*</span></label>
														<input class="form-control" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Phone <span class="text-danger">*</span></label>
														<input class="form-control" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Phone 2</label>
														<input class="form-control" type="text">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Emergency Contact Modal -->
				
				<!-- Education Modal -->
				<div id="education_info" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title"> Education Informations</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-scroll">
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Education Informations <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Oxford University" class="form-control floating">
															<label class="focus-label">Institution</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Computer Science" class="form-control floating">
															<label class="focus-label">Subject</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<div class="cal-icon">
																<input type="text" value="01/06/2002" class="form-control floating datetimepicker">
															</div>
															<label class="focus-label">Starting Date</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<div class="cal-icon">
																<input type="text" value="31/05/2006" class="form-control floating datetimepicker">
															</div>
															<label class="focus-label">Complete Date</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="BE Computer Science" class="form-control floating">
															<label class="focus-label">Degree</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Grade A" class="form-control floating">
															<label class="focus-label">Grade</label>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Education Informations <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Oxford University" class="form-control floating">
															<label class="focus-label">Institution</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Computer Science" class="form-control floating">
															<label class="focus-label">Subject</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<div class="cal-icon">
																<input type="text" value="01/06/2002" class="form-control floating datetimepicker">
															</div>
															<label class="focus-label">Starting Date</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<div class="cal-icon">
																<input type="text" value="31/05/2006" class="form-control floating datetimepicker">
															</div>
															<label class="focus-label">Complete Date</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="BE Computer Science" class="form-control floating">
															<label class="focus-label">Degree</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus focused">
															<input type="text" value="Grade A" class="form-control floating">
															<label class="focus-label">Grade</label>
														</div>
													</div>
												</div>
												<div class="add-more">
													<a href="javascript:void(0);"><i class="fa fa-plus-circle"></i> Add More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Education Modal -->
				
				<!-- Experience Modal -->
				<div id="experience_info" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Experience Informations</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-scroll">
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Experience Informations <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="Digital Devlopment Inc">
															<label class="focus-label">Company Name</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="United States">
															<label class="focus-label">Location</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="Web Developer">
															<label class="focus-label">Job Position</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<div class="cal-icon">
																<input type="text" class="form-control floating datetimepicker" value="01/07/2007">
															</div>
															<label class="focus-label">Period From</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<div class="cal-icon">
																<input type="text" class="form-control floating datetimepicker" value="08/06/2018">
															</div>
															<label class="focus-label">Period To</label>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="card">
											<div class="card-body">
												<h3 class="card-title">Experience Informations <a href="javascript:void(0);" class="delete-icon"><i class="fa fa-trash-o"></i></a></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="Digital Devlopment Inc">
															<label class="focus-label">Company Name</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="United States">
															<label class="focus-label">Location</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<input type="text" class="form-control floating" value="Web Developer">
															<label class="focus-label">Job Position</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<div class="cal-icon">
																<input type="text" class="form-control floating datetimepicker" value="01/07/2007">
															</div>
															<label class="focus-label">Period From</label>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group form-focus">
															<div class="cal-icon">
																<input type="text" class="form-control floating datetimepicker" value="08/06/2018">
															</div>
															<label class="focus-label">Period To</label>
														</div>
													</div>
												</div>
												<div class="add-more">
													<a href="javascript:void(0);"><i class="fa fa-plus-circle"></i> Add More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Experience Modal -->
				
            </div>
			<!-- /Page Wrapper -->

        </div>
		<!-- /Main Wrapper -->
		

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
		
		<!-- Datatable JS -->
		<script src="./resources/hrtemp/js/jquery.dataTables.min.js"></script>
		<script src="./resources/hrtemp/js/dataTables.bootstrap4.min.js"></script>
		
		<!-- Custom JS -->
		<script src="./resources/hrtemp/js/app.js"></script>
		
    </body>
</html>