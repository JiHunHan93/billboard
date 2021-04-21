<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="words" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Employee Profile - main2</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="/billbo/resources/hrtemp/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/line-awesome.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap-datetimepicker.min.css">
		
		<!-- Tagsinput CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/style.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile1.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile2.css">
		
		
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
						<a href="employee-dashboard.html" class="logo">
					  <img src="/billbo/resources/hrtemp/img/Logo.png" width="40" height="40" alt="">
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
						 <img src="/billbo/resources/hrtemp/img/flags/us.png" alt="" height="20"> <span>English</span>
					  </a>
					  <div class="dropdown-menu dropdown-menu-right">
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="/billbo/resources/hrtemp/img/flags/us.png" alt="" height="16"> English
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="/billbo/resources/hrtemp/img/flags/fr.png" alt="" height="16"> French
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="/billbo/resources/hrtemp/img/flags/es.png" alt="" height="16"> Spanish
						 </a>
						 <a href="javascript:void(0);" class="dropdown-item">
							<img src="/billbo/resources/hrtemp/img/flags/de.png" alt="" height="16"> German
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
										   <img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-03.jpg">
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
										   <img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-06.jpg">
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
										   <img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-17.jpg">
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
										   <img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-13.jpg">
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
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="profile-view">
										<div class="profile-img-wrap">
											
												<a href="#"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
											</div>
										</div>
										<!-- 로그인 정보 프로필 select 부분  -->
										<div class="profile-basic">
											<div class="row">
												<div class="col-md-5">
													<div class="profile-info-left">
														<h3 class="user-name m-t-0 mb-0">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님 환영합니다.
								</h3>
														
														<h6 class="text-muted"> 
														
														<div class="staff-id">Employee ID : ${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</div>
														<c:forEach var="member" items="${ requestScope.member }">
														<div class="small doj text-muted">Date of Join :"${ member.enroll_date }"</div>
														</c:forEach>
														<div class="staff-msg"><a class="btn btn-custom" href="chat.html">Send Message</a></div>
													</div>
												</div>
												<div class="col-md-7">

													<ul class="personal-info">
														<li>
														<c:forEach var="detailMem" items="${ requestScope.detailMem }">
															<div class="title">Phone:  <c:out value="${detailMem.phone}"/></div>
															<!-- <div class="text"></div> -->
															</c:forEach>
															
														</li>
														<br>
														<li>
														<li>
															<div class="title">사번:  <c:out value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }"/></div>
															<!-- <div class="text"></div> -->
															
														</li>
														<c:forEach var="detailMem" items="${ requestScope.detailMem }">
														<br>
														<br>
														<li>
															<div class="title">Email: <c:out value="${ detailMem.email }"/></div>
															<!-- <div class="text"><a href=""></a></div> -->
														</li>
														</c:forEach>
												     <%--  <c:forEach var="profileList2" items="${ requestScope.profileList2 }">
														<li>
															<div class="text">Address: <c:out value="${profileList2.address }"/></div>
															<div class="text">1861 Bayonne Ave, Manchester Township, NJ, 08759</div>
														</li>
														</c:forEach> --%>
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
												<%-- <c:forEach var="profileList1" items="${ requestScope.profileList1 }">
												<form action="${ pageContext.servletContext.contextPath }/profile/mainProfile/member_info_phone" method="post">
												<input class="txt w_max" type="text" name="member_info_phone" value="" <c:out value="${ profileList1.phone }"/>>
												 <%= request.getParameter("no") %>
												</form>
												</c:forEach> --%>
											</div>
										</div>
										<div class="pro-edit"><a data-target="#profile_info" data-toggle="modal" class="edit-icon" href="#"><i class="fa fa-pencil"></i></a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card tab-box">
						<div class="row user-tabs">
							<div class="col-lg-12 col-md-12 col-sm-12 line-tabs">
								<ul class="nav nav-tabs nav-tabs-bottom">
									<li class="nav-item"><a href="#emp_profile" data-toggle="tab" class="nav-link active">신상</a></li>
									<li class="nav-item"><a href="#emp_job" data-toggle="tab" class="nav-link">직위</a></li>
									<li class="nav-item"><a href="#emp_part" data-toggle="tab" class="nav-link">부서</a></li>
									<li class="nav-item"><a href="#emp_career" data-toggle="tab" class="nav-link">경력</a></li>
									<li class="nav-item"><a href="#emp_bonus" data-toggle="tab" class="nav-link">상벌내역</a></li>
									<li class="nav-item"><a href="#emp_qualification" data-toggle="tab" class="nav-link">자격</a></li>
									<li class="nav-item"><a href="#armyInfo" data-toggle="tab" class="nav-link">병역</a></li>
									<li class="nav-item"><a href="#emp_education" data-toggle="tab" class="nav-link">학력</a></li>
									<li class="nav-item"><a href="#emp_family" data-toggle="tab" class="nav-link">가족사항</a></li>
									<li class="nav-item"><a href="#emp_license" data-toggle="tab" class="nav-link">면허</a></li>
									<!-- <li class="nav-item"><a href="#bank_statutory" data-toggle="tab" class="nav-link">Bank & Statutor
										y <small class="text-danger">(Admin Only)</small></a></li> -->
								</ul>
							</div>
						</div>
					</div>
					
					<div class="tab-content">
						<!--첫번째 신상 탭 -->
						<div id="emp_profile" class="pro-overview tab-pane fade show active">
							<div class="tab-content">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >신상정보</h3>
									<div class="ehr_detail viewForm">
										
										<form action="${ pageContext.servletContext.contextPath }/profile/main" method="post">
										<table class="type_list_box">
											<tbody>
											<c:choose>
											<c:when test="${ empty requestScope.member}">
												<tr>
												<th class="col1">
													<span class="title_txt">신상번호</span>
												</th>
												
												<td class="col2">
													 
												<input class="txt w_max" type="text" name="info_no" value="">
														
												</td>
												<th class="col3">
													<span class="title_txt">사번</span>
												</th>
												<td class="col4">
													
													<input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }" >
												</td>
												<th class="col5">
													<span class="title_txt">입사일</span>
													
												</th>
												<td class="col6">
														
												<input class="txt w_max" type="date" name="enroll_date" value="">
														
												</td>            
												<th class="col7">
													<span class="title_txt">계좌은행</span>
												</th>
												<td class="col8">
														
												<input class="txt w_max" type="text" name="account_bank" value="">
														
												
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">주소</span>
												</th>
												
												<td colspan="5">
														
												<input class="txt w_max" type="text" name="address" value="">
														
												
												</td>
												<th class="col7">
													<span class="title_txt">계좌번호</span>
												</th>
												<td class="col8">
														
												<input class="txt w_max" type="text" name="account_no" value="">
														
												
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">근로계약서</span>
												</th>
												<td colspan="3">
													
												<input class="txt w_max" type="text" name="work_contract" value="">
							
												</td>        
												<th class="col5">
													<span class="title_txt">파일첨부</span>
												</th>
												<td class="col6">
														
												<input class="txt w_max" type="text" name="fileattachment" value="">
								
												
												</td>
												<th class="col7">
													<span class="title_txt">예금주</span>
													</th>
													<td class="col8">
													 
												<input class="txt w_max" type="text" name="account_host" value="">
												
											</td>
										</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="member" items="${requestScope.member}">
											<tr>
												<th class="col1">
													<span class="title_txt">신상번호</span>
												</th>
												
												<td class="col2">
													 
												<input class="txt w_max" type="text" name="info_no" value="<c:out value="${ member.info_no }"/>">
														
												</td>
												<th class="col3">
													<span class="title_txt">사번</span>
												</th>
												<td class="col4">
													
													<input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }" >
												</td>
												<th class="col5">
													<span class="title_txt">입사일</span>
													
												</th>
												<td class="col6">
														
												<input class="txt w_max" type="date" name="enroll_date" value="<c:out value="${ member.enroll_date }"/>">
														
												</td>            
												<th class="col7">
													<span class="title_txt">계좌은행</span>
												</th>
												<td class="col8">
														
												<input class="txt w_max" type="text" name="account_bank" value="<c:out value="${ member.account_bank }"/>">
														
												
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">주소</span>
												</th>
												
												<td colspan="5">
														
												<input class="txt w_max" type="text" name="address" value="<c:out value="${member.address }"/>">
														
												
												</td>
												<th class="col7">
													<span class="title_txt">계좌번호</span>
												</th>
												<td class="col8">
														
												<input class="txt w_max" type="text" name="account_no" value="<c:out value="${member.account_no }"/>">
														
												
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">근로계약서</span>
												</th>
												<td colspan="3">
													
												<input class="txt w_max" type="text" name="work_contract" value="<c:out value="${member.work_contract }"/>">
							
												</td>        
												<th class="col5">
													<span class="title_txt">파일첨부</span>
												</th>
												<td class="col6">
														
												<input class="txt w_max" type="text" name="fileattachment" value="<c:out value="${member.fileattachment }"/>">
								
												
												</td>
												<th class="col7">
													<span class="title_txt">예금주</span>
													</th>
													<td class="col8">
													 
												<input class="txt w_max" type="text" name="account_host" value="<c:out value="${member.account_host }"/>">
													
												
											</td>
										</tr>
											</c:forEach>
											</c:otherwise>
											</c:choose>			
										</tbody>
										
										</table>
									<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
								
										</form>
										
									</div></div>
										<!-- <span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span> -->
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>입사일</th>
										<th>계좌번호</th>
										<th>은행</th>
										<th>예금주</th>
										<th>주소</th>
									</tr>
								</thead>
								<c:forEach var="viewAllInfo" items="${requestScope.viewAllInfo }">
									<tr>
										<td class="free-td"><c:out value="${ viewAllInfo.member_no }" />
										<td class="free-td"><c:out value="${ viewAllInfo.enroll_date }" />
										<td class="free-td"><c:out value="${ viewAllInfo.account_no }" />
										<td class="free-td"><c:out value="${ viewAllInfo.account_bank }" />
										<td class="free-td"><c:out value="${ viewAllInfo.account_host }" />
										<td class="free-td"><c:out value="${ viewAllInfo.address }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- 첫번째 신상 탭 끝 -->
						
						
						<!-- 여기 두번째 탭-->
						<!-- 두번째탭 -->
						<div class="tab-pane fade" id="emp_job">
							<div class="tab-content">
								<div class="ehr_con_wrap"><div><h3 class="tab_title">직위변경</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_jop viewForm">
										<form action="${ pageContext.servletContext.contextPath }/profile/joblevel" method="post">
										<table class="type_list_box">
											<tbody><tr>
												<th class="spot_no"><span class="title_txt" hidden='true'>직위변경이력번호</span></th>
												<th class="spot_date"><span class="title_txt">변경날짜</span></th>
												<th class="spot_code"><span class="title_txt">직위코드</span></th>
												<th class="member_no"><span class="title_txt">사번</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												 <c:choose>
                                       <c:when test="${ empty requestScope.modispotDto }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="spot_no" value=""/>">
                                                
                                          </td>
                                          <td class="start">
                                          <input class="txt w_max" type="date" name="spot_date" value=""/>">
                                          </td>
                                          <td class="end">
                                          <input class="txt w_max" type="text" name="spot_code" value=""/>">
                                          </td>
                                          <td class="position">
                                          <input class="txt w_max" type="text" name="member_no" value=""/>">
                                          </td>
                                       
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="modispotDto" items="${ requestScope.modispotDto }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="spot_no" value="<c:out value="${ modispotDto.spot_no }"/>">
                                             </td>
                                             <td class="start">
                                             <input class="txt w_max" type="date" name="spot_date" value="<c:out value="${ modispotDto.spot_date }"/>">
                                             </td>
                                             <td class="end">
                                             <input class="txt w_max" type="date" name="spot_code" value="<c:out value="${ modispotDto.spot_code }"/>">
                                             </td>
                                             <td class="position">
                                             <input class="txt w_max" type="text" name="member_no" value="<c:out value="${ modispotDto.member_no }"/>">
                                             </td>
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
											</tr>
												
										</tbody></table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
										</div>
										</form>
									</div></div>
									<div class="page_action_wrap" style="display: block;">
											</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>직위코드</th>
										<th>변경날짜</th>
										
									</tr>
								</thead>
								<c:forEach var="viewModispotDto" items="${requestScope.viewModispotDto }">
									<tr>
										<td class="free-td"><c:out value="${ viewModispotDto.member_no }" />
										<td class="free-td"><c:out value="${ viewModispotDto.spot_code }" />
										<td class="free-td"><c:out value="${ viewModispotDto.spot_date }" />
										
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									
									
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section>
							</div>
						</div>
						</div>
						<!-- /두번째 탭-1 끝 -->
						<!-- 세번째탭 -->
						<div class="tab-pane fade" id="emp_part">
							<div class="tab-content">
								<div class="ehr_con_wrap"><div><h3 class="tab_title">부서</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_jop viewForm">
										<form action="${ pageContext.servletContext.contextPath }/profile/part" method="post">
										
										<table class="type_list_box">
											<tbody><tr>
												<th class="modifyDeptNo"><span class="title_txt">부서변경이력번호</span></th>
												<th class="modifydate"><span class="title_txt">변경날짜</span></th>
												<th class="deptCode"><span class="title_txt">부서코드</span></th>
												<th class="memberNo"><span class="title_txt">사번</span></th>
												
											
											</tr>
											<tr class="dataRow" data-id="">
											                                    
                                    <c:choose>
                                       <c:when test="${ empty requestScope.modidept }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="modifyDeptNo" value=""/>">
                                                
                                          </td>
                                          <td class="start">
                                          <input class="txt w_max" type="date" name="modifydate" value=""/>">
                                          </td>
                                          <td class="end">
                                          <input class="txt w_max" type="text" name="deptCode" value=""/>">
                                          </td>
                                          <td class="position">
                                          <input class="txt w_max" type="text" name="memberNo" value=""/>">
                                          </td>
                                       
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="modidept" items="${ requestScope.modidept }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="modifyDeptNo" value="<c:out value="${ modidept.modifyDeptNo }"/>">
                                                   
                                             </td>
                                             <td class="start">
                                             <input class="txt w_max" type="date" name="modifydate" value="<c:out value="${ modidept.modifydate }"/>">
                                             </td>
                                             <td class="end">
                                             <input class="txt w_max" type="date" name="deptCode" value="<c:out value="${ modidept.deptCode }"/>">
                                             </td>
                                             <td class="position">
                                             <input class="txt w_max" type="text" name="memberNo" value="<c:out value="${ modidept.memberNo }"/>">
                                             </td>
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
                                    		</tr>
										</tbody></table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
									</div>
										</form>
									</div></div>
									
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>부서코드</th>
										<th>변경날짜</th>
										
									</tr>
								</thead>
								<c:forEach var="viewMemberDept" items="${requestScope.viewMemberDept }">
									<tr>
										<td class="free-td"><c:out value="${ viewMemberDept.memberNo }" />
										<td class="free-td"><c:out value="${ viewMemberDept.deptCode }" />
										<td class="free-td"><c:out value="${ viewMemberDept.modifydate }" />
										
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									
									
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section>
							</div>
						</div>
						</div>
						<!-- /세번째 탭 끝 -->
						
						
						
						<!-- 네번째탭  -->
						<div class="tab-pane fade" id="emp_career">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >경력</h3>
									<div class="ehr_career viewForm">
									<form action="${ pageContext.servletContext.contextPath }/profile/career" method="post">
										
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="no"><span class="title_txt">경력번호</span></th>
												<th class="start"><span class="title_txt">시작일</span></th>
												<th class="end"><span class="title_txt">종료일</span></th>
												<th class="position"><span class="title_txt">근무처</span></th>
												<th class="member_no"><span class="title_txt">사번</span></th>
												
											</tr>
											<tr class="dataRow" data-id="">
										<c:choose>
                                       <c:when test="${ empty requestScope.careerDto }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="no" value=""/>">
                                          </td>
                                          <td class="start">
                                          <input class="txt w_max" type="date" name="start" value=""/>">
                                          </td>
                                          <td class="end">
                                          <input class="txt w_max" type="date" name="end" value=""/>">
                                          </td>
                                          <td class="position">
                                          <input class="txt w_max" type="text" name="position" value=""/>">
                                          </td>
                                       	  <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no" value=""/>">
                                          </td>
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="careerDto" items="${ requestScope.careerDto }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="no" value="<c:out value="${ careerDto.no }"/>">
                                                   
                                             </td>
                                             <td class="start">
                                             <input class="txt w_max" type="date" name="start" value="<c:out value="${ careerDto.start }"/>">
                                             </td>
                                             <td class="end">
                                             <input class="txt w_max" type="date" name="end" value="<c:out value="${ careerDto.end }"/>">
                                             </td>
                                             <td class="position">
                                             <input class="txt w_max" type="text" name="position" value="<c:out value="${ careerDto.position }"/>">
                                             </td>
                                             <td class="position">
                                             <input class="txt w_max" type="text" name="member_no" value="<c:out value="${ careerDto.member_no }"/>">
                                             </td>
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>

											</tr>
											</tbody>
										</table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
										</form>
									</div></div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>근무처</th>
										<th>시작일</th>
										<th>종료일</th>
										
									</tr>
								</thead>
								
								<c:forEach var="viewCareerDto" items="${requestScope.viewCareerDto }">
									<tr>
										<td class="free-td"><c:out value="${ viewCareerDto.member_no }" />
										<td class="free-td"><c:out value="${ viewCareerDto.position }" />
										<td class="free-td"><c:out value="${ viewCareerDto.start }" />
										<td class="free-td"><c:out value="${ viewCareerDto.end }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /네번째 탭 끝 -->

						<!-- 다섯번째탭  -->
						<div class="tab-pane fade" id="emp_bonus">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >포상/징계</h3>
									<div class="ehr_reward viewForm">
									<form action="${ pageContext.servletContext.contextPath }/profile/bonus" method="post">
									
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="no"><span class="title_txt">상벌내역번호</span></th>
												<th class="reason"><span class="title_txt">상벌사유</span></th>
												<th class="date"><span class="title_txt">일자</span></th>
												<th class="type"><span class="title_txt">상벌구분</span></th>
												<th class="member_no"><span class="title_txt">사번</span></th>
												<th class="approve_code"><span class="title_txt">승인여부코드</span></th>
												
												
											</tr>
											<tr class="no" data-id="">
												 <c:choose>
                                       <c:when test="${ empty requestScope.bonusDto }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="no" value=""/>">
                                                
                                          </td>
                                          <td class="reason">
                                          <input class="txt w_max" type="text" name="reason" value="">
                                          </td>
                                          <td class="date">
                                          <input class="txt w_max" type="date" name="date" value="">
                                          </td>
                                          <td class="type">
                                          <input class="txt w_max" type="text" name="type" value="">
                                          </td>
                                       	  <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no" value="">
                                          </td>
                                          <td class="approve_code">
                                          <input class="txt w_max" type="text" name="approve_code" value="">
                                          </td>
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="bonusDto" items="${ requestScope.bonusDto }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="no" value="<c:out value="${ bonusDto.no }"/>">
                                                   
                                             </td>
                                             <td class="start">
                                             <input class="txt w_max" type="text" name="reason" value="<c:out value="${ bonusDto.reason }"/>">
                                             </td>
                                             <td class="end">
                                             <input class="txt w_max" type="date" name="date" value="<c:out value="${ bonusDto.date }"/>">
                                             </td>
                                             <td class="position">
                                             <input class="txt w_max" type="text" name="member_no" value="<c:out value="${ bonusDto.type }"/>">
                                             </td>
                                             <td class="member_no">
                                             <input class="txt w_max" type="text" name="member_no" value="<c:out value="${ bonusDto.member_no }"/>"/>">
                                             </td>
                                             <td class="approve_code">
                                             <input class="txt w_max" type="text" name="approve_code" value="<c:out value="${ bonusDto.approve_code }"/>">
                                             </td>
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
											</tr>
											</tbody>
										</table>
											<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
								</form>
									</div></div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>일자</th>
										<th>구분</th>
										<th>사유</th>
										<th>승인여부</th>
										
									</tr>
								</thead>
								<c:forEach var="viewBonusDto" items="${ requestScope.viewBonusDto }">
									<tr>
										<td class="free-td"><c:out value="${ viewBonusDto.member_no }" />
										<td class="free-td"><c:out value="${ viewBonusDto.date }" />
										<td class="free-td"><c:out value="${ viewBonusDto.type }" />
										<td class="free-td"><c:out value="${ viewBonusDto.reason }" />
										<td class="free-td"><c:out value="${ viewBonusDto.approve_code }" />
		    						</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /다섯번째 탭 끝 -->
						<!-- 일곱번째탭  -->
						<div class="tab-pane fade" id="emp_qualification">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >자격</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_qualification viewForm">
		                    			<form action="${ pageContext.servletContext.contextPath }/profile/certificate" method="post">
										<table class="type_list_box">
											<tbody><tr>
												<th class="no"><span class="title_txt">자격번호</span></th>
												<th class="start_date"><span class="title_txt">취득일</span></th>
												<th class="end_date"><span class="title_txt">만료일</span></th>
												<th class="member_no"><span class="title_txt">사번</span></th>
												<th class="certificate_code"><span class="title_txt">자격코드명</span></th>
												</tr>
											<tr class="num" data-id="">
												 <c:choose>
                                       <c:when test="${ empty requestScope.certificateInsert }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="no" value=""/>
                                                
                                          </td>
                                          <td class="start_date">
                                          <input class="txt w_max" type="date" name="start_date" value="">
                                          </td>
                                          <td class="end_date">
                                          <input class="txt w_max" type="date" name="end_date" value="">
                                          </td>
                                          <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no" value="">
                                          </td>
                                       	  <td class="member_no">
                                          <input class="txt w_max" type="text" name="certificate_code" value="">
                                         
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="certificateInsert" items="${ requestScope.certificateInsert }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="no" value="<c:out value="${ certificateInsert.no }"/>">
                                                   
                                             </td>
                                             <td class="start_date">
                                             <input class="txt w_max" type="text" name="start_date" value="<c:out value="${ certificateInsert.start_date }"/>">
                                             </td>
                                             <td class="end_date">
                                             <input class="txt w_max" type="date" name="end_date" value="<c:out value="${ certificateInsert.end_date }"/>">
                                             </td>
                                             <td class="member_no">
                                             <input class="txt w_max" type="text" name="member_no" value="<c:out value="${ certificateInsert.member_no }"/>">
                                             </td>
                                             <td class="certificate_code">
                                             <input class="txt w_max" type="text" name="certificate_code" value="<c:out value="${ certificateInsert.certificate_code }"/>">
                                             </td>
                                            
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
											</tr>
										</tbody></table>
									<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div></form>
									</div></div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>자격코드</th>
										<th>취득일</th>
										<th>만료일</th>
										
									</tr>
								</thead>
								<c:forEach var="viewCertificateInsert" items="${ requestScope.viewCertificateInsert }">
									<tr>
										<td class="free-td"><c:out value="${ viewCertificateInsert.member_no }" />
										<td class="free-td"><c:out value="${ viewCertificateInsert.certificate_code }" />
										<td class="free-td"><c:out value="${ viewCertificateInsert.start_date }" />
										<td class="free-td"><c:out value="${ viewCertificateInsert.end_date }" />
		
		    						</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /일곱번째 탭 끝 -->

						<!-- 여덟번째탭  -->
						<div class="tab-pane fade" id="armyInfo">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >병역</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_military viewForm">
											<form action="${ pageContext.servletContext.contextPath }/profile/army" method="post">
										<table class="type_list_box">
											<tbody><tr>
												<th class="member_no"><span class="title_txt">사번</span></th>
												<th class="branch"><span class="title_txt">군벌</span></th>
												<th class="army_class"><span class="title_txt">계급</span></th>
												<th class="service_num"><span class="title_txt">군번</span></th>
												<th class="discharge"><span class="title_txt">전역구분</span></th>
												<th class="start"><span class="title_txt">입대일</span></th>
												<th class="end"><span class="title_txt">제대일</span></th>
												<th class="army_no"><span class="title_txt">병역번호</span></th>
												
											</tr>
											<tr>
											 <c:choose>
                                       <c:when test="${ empty requestScope.armyInsert }">
                                       
                                          <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }"/>
                                           </td>
                                          <td class="army_no">
                                          <input class="txt w_max" type="text" name="army_no" value="">
                                          </td>
                                          <td class="branch">
                                          <input class="txt w_max" type="text" name="branch" value="">
                                          </td>
                                          <td class="army_class">
                                          <input class="txt w_max" type="text" name="army_class" value="">
                                          </td>
                                       	  <td class="service_num">
                                          <input class="txt w_max" type="text" name="service_num" value="">
                                          </td>
                                          <td class="discharge">
                                          <input class="txt w_max" type="text" name="discharge" value="">
                                          </td>
                                          <td class="start">
                                          <input class="txt w_max" type="date" name="start" value="">
                                          </td>
                                         <td class="date">
                                          <input class="txt w_max" type="date" name="date" value="">
                                          </td>
                                          <td class="reason">
                                          <input class="txt w_max" type="text" name="reason" value="">
                                          </td>
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="armyInsert" items="${ requestScope.armyInsert }"> 
                                             <td class="member_no">
                                             <input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }">
                                             </td>
                                             <td class="army_no">
                                             <input class="txt w_max" type="text" name="army_no" value="<c:out value="${ armyInsert.army_no }"/>">
                                             </td>
                                             <td class="branch">
                                             <input class="txt w_max" type="text" name="branch" value="<c:out value="${ armyInsert.branch }"/>">
                                             </td>
                                             <td class="army_class">
                                             <input class="txt w_max" type="date" name="army_class" value="<c:out value="${ armyInsert.army_class }"/>">
                                             </td>
                                             <td class="service_num">
                                             <input class="txt w_max" type="text" name="service_num" value="<c:out value="${ armyInsert.service_num }"/>">
                                             </td>
                                             <td class="discharge">
                                             <input class="txt w_max" type="text" name="discharge" value="<c:out value="${ armyInsert.discharge }"/>">
                                             </td>
                                             <td class="start">
                                             <input class="txt w_max" type="date" name="start" value="<c:out value="${ armyInsert.start }"/>">
                                             </td>
                                             <td class="date">
                                             <input class="txt w_max" type="date" name="date" value="<c:out value="${ armyInsert.date }"/>">
                                             </td>
                                             <td class="reason">
                                             <input class="txt w_max" type="text" name="reason" value="<c:out value="${ armyInsert.reason }"/>">
                                             </td>	
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
											</tr>
										</tbody>
										</table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
										</form>
									</div></div>
									
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>군벌</th>
										<th>계급</th>
										<th>군번</th>
										<th>전역구분</th>
										<th>입대일</th>
										<th>전역일</th>
										<th>기타사유</th>
									</tr>
								</thead>
								<c:forEach var="viewArmySelect" items="${requestScope.viewArmySelect }">
									<tr>
										<td class="free-td"><c:out value="${ viewArmySelect.member_no }" />
										<td class="free-td"><c:out value="${ viewArmySelect.branch }" />
										<td class="free-td"><c:out value="${ viewArmySelect.army_class }" />
										<td class="free-td"><c:out value="${ viewArmySelect.service_num }" />
										<td class="free-td"><c:out value="${ viewArmySelect.discharge }" />
										<td class="free-td"><c:out value="${ viewArmySelect.start }" />
										<td class="free-td"><c:out value="${ viewArmySelect.end }" />
										<td class="free-td"><c:out value="${ viewArmySelect.reason }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /여덟번째 탭 끝 -->

						<!-- 아홉번째탭  -->
						<div class="tab-pane fade" id="emp_education">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >학력</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_academy viewForm">
										<form action="${ pageContext.servletContext.contextPath }/profile/finalAcademic" method="post">
										<table class="type_list_box">
											<tbody><tr>
												<th class="ability_no">최종학력번호</th>
												<th class="name">학교명</th>
												<th class="subject">전공</th>
												<th class="date">졸업일자</th>
												<th class="graduate_status">졸업여부</th>
												<th class="graduate_name">최종학력</th>
												<th class="member_no">사번</th>
												<th class="code">학력코드명</th>
											</tr>
											 <c:choose>
                                       <c:when test="${ empty requestScope.academic }">
                                       
                                          <td class="ability_no">
                                          <input class="txt w_max" type="text" name="ability_no" value=""/>
                                           </td>
                                          <td class="name">
                                          <input class="txt w_max" type="text" name="name" value="">
                                          </td>
                                          <td class="subject">
                                          <input class="txt w_max" type="text" name="subject" value="">
                                          </td>
                                          <td class="date">
                                          <input class="txt w_max" type="date" name="date" value="">
                                          </td>
                                       	  <td class="graduate_status">
                                          <input class="txt w_max" type="text" name="graduate_status" value="">
                                          </td>
                                          <td class="graduate_name">
                                          <input class="txt w_max" type="text" name="graduate_name" value="">
                                          </td>
                                          <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }">
                                          </td>
                                         <td class="code">
                                          <input class="txt w_max" type="text" name="code" value="">
                                          </td>
                                         
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="academic" items="${ requestScope.academic }"> 
                                             <td class="ability_no">
                                             <input class="txt w_max" type="text" name="ability_no" value="<c:out value="${ academic.ability_no }"/>">
                                             </td>
                                             <td class="name">
                                             <input class="txt w_max" type="text" name="name" value="<c:out value="${ academic.name }"/>">
                                             </td>
                                             <td class="subject">
                                             <input class="txt w_max" type="text" name="subject" value="<c:out value="${ academic.subject }"/>">
                                             </td>
                                             <td class="date">
                                             <input class="txt w_max" type="date" name="date" value="<c:out value="${ academic.date }"/>">
                                             </td>
                                             <td class="graduate_status">
                                             <input class="txt w_max" type="text" name="graduate_status" value="<c:out value="${ academic.graduate_status }"/>">
                                             </td>
                                             <td class="graduate_name">
                                             <input class="txt w_max" type="text" name="graduate_name" value="<c:out value="${ academic.graduate_name }"/>">
                                             </td>
                                             <td class="member_no">
                                             <input class="txt w_max" type="text" name="member_no" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }">
                                             </td>
                                             <td class="code">
                                             <input class="txt w_max" type="text" name="code" value="<c:out value="${ academic.code }"/>">
                                             </td>
                                            	
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
										</tbody></table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
										</form>
									</div></div><div class="page_action_wrap" style="display: block;">
										</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>학교명</th>
										<th>전공</th>
										<th>졸업일자</th>
										<th>졸업여부</th>
										<th>최종학력</th>
										<th>학력코드명</th>
									</tr>
								</thead>
								<c:forEach var="viewAcademic" items="${requestScope.viewAcademic }">
									<tr>
										<td class="free-td"><c:out value="${ viewAcademic.member_no }" />
										<td class="free-td"><c:out value="${ viewAcademic.name }" />
										<td class="free-td"><c:out value="${ viewAcademic.subject }" />
										<td class="free-td"><c:out value="${ viewAcademic.date }" />
										<td class="free-td"><c:out value="${ viewAcademic.graduate_status }" />
										<td class="free-td"><c:out value="${ viewAcademic.graduate_name }" />
										<td class="free-td"><c:out value="${ viewAcademic.code }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /아홉번째 탭 끝 -->

						<!-- 열번째탭  -->
						<div class="tab-pane fade" id="emp_family">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >가족사항</h3>
									<div class="ehr_family viewForm">
										<form action="${ pageContext.servletContext.contextPath }/profile/family" method="post">
										
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="info_no"><span class="title_txt">가족사항번호</span></th>
												<th class="name"><span class="title_txt">가족성명</span></th>
												<th class="relation"><span class="title_txt">가족관계</span></th>
												<th class="gender"><span class="title_txt">성별</span></th>
												<th class="birthday"><span class="title_txt">생년월일</span></th>
												<th class="study"><span class="title_txt">학력</span></th>
												<th class="job"><span class="title_txt">직업</span></th>
												<th class="no"><span class="title_txt">사번</span></th>
												</tr>
											<tr class="dataRow" data-id="">
											 <c:choose>
                                       <c:when test="${ empty requestScope.familyDto }">
                                       
                                          <td class="info_no">
                                          <input class="txt w_max" type="text" name="info_no" value=""/>
                                           </td>
                                          <td class="name">
                                          <input class="txt w_max" type="text" name="name" value="">
                                          </td>
                                          <td class="relation">
                                          <input class="txt w_max" type="text" name="relation" value="">
                                          </td>
                                          <td class="gender">
                                          <input class="txt w_max" type="text" name="gender" value="">
                                          <span class="wrap_select">
														  <select class="wfix_small" name="gender" value="">
															 <option value="">선택하세요</option>
															 <option value="남">남자</option>
															 <option value="녀">여자</option>
														  </select>
													   </span>
                                          </td>
                                       	  <td class="birthday">
                                          <input class="txt w_max" type="date" name="birthday" value="">
                                          </td>
                                          <td class="study">
                                          <input class="txt w_max" type="text" name="study" value="">
                                          </td>
                                          <td class="job">
                                          <input class="txt w_max" type="text" name="job" value="">
                                          </td>
                                         <td class="no">
                                          <input class="txt w_max" type="text" name="no" value="<c:out value="${ familyDto.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }"/>">
                                          </td>
                                         
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="familyDto" items="${ requestScope.familyDto }"> 
                                             <td class="info_no">
                                             <input class="txt w_max" type="text" name="info_no" value="<c:out value="${ familyDto.info_no }"/>">
                                             </td>
                                             <td class="name">
                                             <input class="txt w_max" type="text" name="name" value="<c:out value="${ familyDto.name }"/>">
                                             </td>
                                             <td class="relation">
                                             <input class="txt w_max" type="text" name="subject" value="<c:out value="${ familyDto.relation }"/>">
                                             </td>
                                             <td class="gender">
                                             <input class="txt w_max" type="text" name="gender" value="<c:out value="${ familyDto.gender }"/>">
                                             <span class="wrap_select">
														  <select class="wfix_small" name="gender" value="<c:out value="${ familyDto.gender }"/>">
															 <option value="">선택하세요</option>
															 <option value="남">남자</option>
															 <option value="녀">여자</option>
														  </select>
													   </span>
                                             </td>
                                             <td class="birthday">
                                             <input class="txt w_max" type="date" name="birthday" value="<c:out value="${ familyDto.birthday }"/>">
                                             </td>
                                             <td class="study">
                                             <input class="txt w_max" type="text" name="study" value="<c:out value="${ familyDto.study }"/>">
                                             </td>
                                             <td class="job">
                                             <input class="txt w_max" type="text" name="job" value="${ familyDto.job }">
                                             </td>
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="no" value="<c:out value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }"/>">
                                             </td>
                                            	
                                          </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>	
											</tr>
											</tbody>
										</table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button></div>
										</form>
									</div></div></div>
									
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>가족성명</th>
										<th>가족관계</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>학력</th>
										<th>직업</th>
									</tr>
								</thead>
								<c:forEach var="viewFamilySelect" items="${requestScope.viewFamilySelect }">
									<tr>
										<td class="free-td"><c:out value="${ viewFamilySelect.no }"/>
										<td class="free-td"><c:out value="${ viewFamilySelect.name }" />
										<td class="free-td"><c:out value="${ viewFamilySelect.relation }" />
										<td class="free-td"><c:out value="${ viewFamilySelect.gender }" />
										<td class="free-td"><c:out value="${ viewFamilySelect.birthday }" />
										<td class="free-td"><c:out value="${ viewFamilySelect.study }" />
										<td class="free-td"><c:out value="${ viewFamilySelect.job }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									
									
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section>
							</div>
						</div>
						<!-- /열번째 탭 끝 -->

						<!-- 열한번째탭 면허-->
						<div class="tab-pane fade" id="emp_license">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >면허</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_qualification viewForm">
										<form action="${ pageContext.servletContext.contextPath }/profile/license" method="post">
										
										<table class="type_list_box">
											<tbody><tr>
												<th class="no"><span class="title_txt">면허 번호</span></th>
												<th class="code"><span class="title_txt">면허증코드명</span></th>
												<th class="date"><span class="title_txt">취득일</span></th>
												<th class="member_no"><span class="title_txt">사번</span></th>
												</tr>
											 <c:choose>
                                       <c:when test="${ empty requestScope.LicenseDto }">
                                       
                                          <td class="no">
                                          <input class="txt w_max" type="text" name="no" value=""/>
                                           </td>
                                          <td class="code">
                                          <input class="txt w_max" type="text" name="code" value="">
                                          </td>
                                          <td class="date">
                                          <input class="txt w_max" type="date" name="date" value="">
                                          </td>
                                          <td class="member_no">
                                          <input class="txt w_max" type="text" name="member_no"  value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }" >
                                          </td>
                                       	  
                                       </c:when>
                                       <c:otherwise>
                                          <!-- c:forEach 시작 부분 -->
                                          <c:forEach var="LicenseDto" items="${ requestScope.LicenseDto }"> 
                                             <td class="no">
                                             <input class="txt w_max" type="text" name="no" value="<c:out value="${ LicenseDto.no }"/>">
                                             </td>
                                             <td class="code">
                                             <input class="txt w_max" type="text" name="code" value="<c:out value="${ LicenseDto.code }"/>">
                                             </td>
                                             <td class="date">
                                             <input class="txt w_max" type="date" name="date" value="<c:out value="${ LicenseDto.date }"/>">
                                             </td>
                                             <td class="member_no">
                                             <input class="txt w_max" type="text" name="member_no"  value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno }"" >
                                            </td>
                                           </c:forEach>
                                          <!-- c:forEach 끝 부분 -->
                                       </c:otherwise>
                                    </c:choose>
										</tbody></table>
										<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>	</div>
										</form>
									</div></div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									 <table class="table table-striped custom-table datatable">
								<thead>
									<tr>
										<th>사번</th>
										<th>면허증 코드명</th>
										<th>취득일</th>
									</tr>
								</thead>
								<c:forEach var="viewLicenseDto" items="${requestScope.viewLicenseDto }">
									<tr>
										<td class="free-td"><c:out value="${ viewLicenseDto.member_no }" />
										<td class="free-td"><c:out value="${ viewLicenseDto.code }" />
										<td class="free-td"><c:out value="${ viewLicenseDto.date }" />
									</tr>
								</c:forEach>
								</table>
								
									 </header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /열한번째 탭 끝 -->
						
					</div>
                </div>
                
				<!-- /Page Content -->
				<!--  모달 시작부분 -->
				<!-- Profile Modal -->
				<div id="profile_info" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<form name="mainInsert" action="http://127.0.0.1:8001/billbo/profile/mainProfile2" method="post">
					<div class="modal-content sub-modal">
						
							<div class="modal-header">
								<h5 class="modal-title">Profile Information Edit Page</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
							 <div class="row">
										<div class="col-md-12">
											<div class="profile-img-wrap edit-img">
												<!-- 사진 업로드********************************************************  -->
												<img class="inline-block" src="hrtemp/img/profiles/avatar-02.jpg" alt="user">
												<div class="fileupload btn">
													<span class="btn-text">edit</span>
													<input class="upload" type="file">
												</div>
											</div>
											
													<c:forEach var="detailMem" items="${ requestScope.detailMem }">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>이름</label>
														<input type="text" class="form-control"  value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }" readonly>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>연락처 변경</label>
															<input class="txt w_max" type="text" name="phone" value="<c:out value="${detailMem.phone}"/>">
															<!-- <div class="text"></div> -->
													</div>
												</div>
												
												<div class="col-md-6">
													<div class="form-group">
														<label>이메일 변경</label>
														<input type="text" class="form-control"name="email" value="<c:out value="${detailMem.email}"/>">
													</div>
												</div>
												<%-- <div class="col-md-6">
													<div class="form-group">
														<label>입사일</label>
														
															<input class="txt w_max" type="date" name="enroll_date" value="<c:out value="${detailMem.enroll_date }"/>">
														
													</div>
												</div> --%>
												</div>
										</c:forEach>
												</div>
												</div>
										
											</div>
											
									<div class="page_action_wrap" style="display: block;">
										<button class="btn_major" data-role="button"  id="submit">저장</button>
										<button class="btn_minor" data-role="button"  id="hrcard_btn_cancel">취소</button>
								</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn" data-role="button" type="button" onclick="submit1(this.form)">Submit</button>
										</div>
											</div>
								</form>
										</div>
									  
									</div>
							</div>
		<!--  <script type="text/javascript">
    
    	 $("#submit").click(function() {
    	var email =$("input[email='email']").val();
    	var phone =$("input[phone='phone']").val();
    	
    	console.table(email);
    	console.table(phone);
    	
    	var jihwan = $('form[email="mainInsert"]').serializeArray();
    	console.table(jihwan);
    	$("form[email='mainInsert']").submit();
    	
     });
	
	
    </script> 					 -->

     
			     
		<!-- jQuery -->
        <script src="/billbo/resources/hrtemp/js/jquery-3.5.1.min.js"></script>

		<!-- Bootstrap Core JS -->
        <script src="/billbo/resources/hrtemp/js/popper.min.js"></script>
        <script src="/billbo/resources/hrtemp/js/bootstrap.min.js"></script>

		<!-- Slimscroll JS -->
		<script src="/billbo/resources/hrtemp/js/jquery.slimscroll.min.js"></script>
		
		<!-- Select2 JS -->
		<script src="/billbo/resources/hrtemp/js/select2.min.js"></script>
		
		<!-- Datetimepicker JS -->
		<script src="/billbo/resources/hrtemp/js/moment.min.js"></script>
		<script src="/billbo/resources/hrtemp/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Tagsinput JS -->
		<script src="/billbo/resources/hrtemp/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>

		<!-- Custom JS -->
		<script src="/billbo/resources/hrtemp/js/app.js"></script>
		
    </body>
</html>






	<!--  **************************************************************프로필 모달 부분 원본*********************************************************************-->
				<!-- Profile Modal -->
				<!-- <div id="profile_info" class="modal custom-modal fade" role="dialog">
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
												<img class="inline-block" src="hrtemp/img/profiles/avatar-02.jpg" alt="user">
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
				</div> -->
				<!-- /Profile Modal -->
