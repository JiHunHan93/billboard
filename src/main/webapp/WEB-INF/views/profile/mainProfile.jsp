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
        <title>Employee Profile - HRMS admin template</title>
		
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
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/style.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile1.css">
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/profile/profile2.css">
		
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
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
											<div class="profile-img">
												<a href="#"><img alt="" src="assets/img/profiles/avatar-02.jpg"></a>
											</div>
										</div>
										<div class="profile-basic">
											<div class="row">
												<div class="col-md-5">
													<div class="profile-info-left">
														<h3 class="user-name m-t-0 mb-0">John Doe</h3>
														<h6 class="text-muted">UI/UX Design Team</h6>
														<small class="text-muted">Web Designer</small>
														<div class="staff-id">Employee ID : FT-0001</div>
														<div class="small doj text-muted">Date of Join : 1st Jan 2013</div>
														<div class="staff-msg"><a class="btn btn-custom" href="chat.html">Send Message</a></div>
													</div>
												</div>
												<div class="col-md-7">
													<ul class="personal-info">
														<li>
															<div class="title">Phone:</div>
															<div class="text"><a href="">9876543210</a></div>
														</li>
														<li>
															<div class="title">Email:</div>
															<div class="text"><a href="">johndoe@example.com</a></div>
														</li>
														<li>
															<div class="title">Birthday:</div>
															<div class="text">24th July</div>
														</li>
														<li>
															<div class="title">Address:</div>
															<div class="text">1861 Bayonne Ave, Manchester Township, NJ, 08759</div>
														</li>
														<li>
															<div class="title">Gender:</div>
															<div class="text">Male</div>
														</li>
														<li>
															<div class="title">Reports to:</div>
															<div class="text">
															   <div class="avatar-box">
																  <div class="avatar avatar-xs">
																	 <img src="assets/img/profiles/avatar-16.jpg" alt="">
																  </div>
															   </div>
															   <a href="profile.html">
																	Jeffery Lalor
																</a>
															</div>
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
					
					<div class="card tab-box">
						<div class="row user-tabs">
							<div class="col-lg-12 col-md-12 col-sm-12 line-tabs">
								<ul class="nav nav-tabs nav-tabs-bottom">
									<li class="nav-item"><a href="#emp_profile" data-toggle="tab" class="nav-link active">신상</a></li>
									<li class="nav-item"><a href="#emp_job" data-toggle="tab" class="nav-link">직무/담당</a></li>
									<li class="nav-item"><a href="#emp_movejob" data-toggle="tab" class="nav-link">인사발령</a></li>
									<li class="nav-item"><a href="#emp_career" data-toggle="tab" class="nav-link">경력</a></li>
									<li class="nav-item"><a href="#emp_bonus" data-toggle="tab" class="nav-link">상벌내역</a></li>
									<li class="nav-item"><a href="#emp_jobtest" data-toggle="tab" class="nav-link">인사평가</a></li>
									<li class="nav-item"><a href="#emp_qualification" data-toggle="tab" class="nav-link">자격</a></li>
									<li class="nav-item"><a href="#emp_army" data-toggle="tab" class="nav-link">병역</a></li>
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
						<!-- 여기 첫번째 탭-->
						<!--첫번째 신상 탭 -->
						<div id="emp_profile" class="pro-overview tab-pane fade show active">
							<div class="tab-content">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >신상정보</h3>
									<div class="ehr_detail viewForm">
										<form id="data_form">
										<table class="type_list_box">
											<tbody><tr>
												<th class="col1">
													<span class="title_txt">사번</span>
												</th>
												<td class="col2">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="hobby" value="" >
												</td>
												<th class="col3">
													<span class="title_txt">취미</span>
												</th>
												<td class="col4">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="speciality" value="" style="display:none;">
												</td>
												<th class="col5">
													<span class="title_txt">특기</span>
												</th>
												<td class="col6">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="faxNo" value="" style="display:none;">
												</td>            
												<th class="col7">
													<span class="title_txt">연락처</span>
												</th>
												<td class="col8">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="way" value="" style="display:none;">
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">주소</span>
												</th>
												
												<td colspan="5">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="address" value="" style="display:none;">
												</td>
												<th class="col7">
													<span class="title_txt">계좌번호</span>
												</th>
												<td class="col8">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="homeNo" value="" style="display:none;">
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">계좌은행</span>
												</th>
												<td colspan="3">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="veteransNo" value="" style="display:none;">
												</td>        
												<th class="col5">
													<span class="title_txt">예금주</span>
												</th>
												<td class="col6">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="veteransFamily" value="" style="display:none;">
												</td>
												<th class="col7">
													<span class="title_txt">비고</span>
													</th>
													<td class="col8">
												<span class="txt"></span>
												<input class="txt w_max" type="text" name="veteransDiv" value="" style="display:none;">
											</td>
										</tr>
										<!-- 필요없는것들	<tr>
												<th class="col1">
													<span class="title_txt">장애등록번호</span>
												</th>
												<td class="col2">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="disabilityNo" value="" style="display:none;">
												</td>
												<th class="col3">
													<span class="title_txt">장애구분</span>
												</th>
												<td class="col4">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="disabilityDiv" value="" style="display:none;">
												</td>
												<th class="col5">
													<span class="title_txt">장애등급</span>
												</th>
												<td class="col6">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="disabilityClass" value="" style="display:none;">
												</td>
												<th class="col7">
													<span class="title_txt">장애인정구분</span>
												</th>
												<td class="col8">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="disabilityRecDiv" value="" style="display:none;">
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">계좌유형</span>
												</th>
												<td class="col2">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="accountType" value="" style="display:none;">
												</td>
												<th class="col3">
													<span class="title_txt">은행</span>
												</th>
												<td class="col4">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="bank" value="" style="display:none;">
												</td>
												<th class="col5">
													<span class="title_txt">예금주</span>
												</th>
												<td class="col6">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="depositor" value="" style="display:none;">
												</td>
												<th class="col7">
													<span class="title_txt">비고</span>
												</th>
												<td class="col8">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="note" value="" style="display:none;">
												</td>
											</tr>
											<tr>
												<th class="col1">
													<span class="title_txt">계좌번호</span>
												</th>
												<td colspan="3">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="accountNum" value="" style="display:none;">
												</td>
												<th class="col5">
													<span class="title_txt">시작일자</span>
												</th>
												<td class="col6">
												   <span class="wrap_date">
												   <input id="startDt" class="txt wfix_small hasDatepicker" type="text" name="startDt" value="">
												   <span class="ic ic_calendar"></span>
												   </span>
												</td>
												<th class="col7">
													<span class="title_txt">종료일자</span>
												</th>
												<td class="col6">
												   <span class="wrap_date">
												   <input id="endDt" class="txt wfix_small hasDatepicker" type="text" name="endDt" value="">
												   <span class="ic ic_calendar"></span>
												   </span>
												</td> -->
											</tr>
										</tbody></table>
										</form>
									</div></div>
									<div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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
								<div class="ehr_con_wrap"><div><h3 class="tab_title">직무/담당</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_jop viewForm">
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt">직무seq</span></th>
												<th class="group"><span class="title_txt">직위</span></th>
												<th class="category"><span class="title_txt">직책</span></th>
												<th class="jop"><span class="title_txt">부서</span></th>
												<th class="date"><span class="title_txt">담당업무</span></th>
												<th class="date"><span class="title_txt">직원타입</span></th>
												<th class="percent"><span class="title_txt">사번</span></th>
												<th class="work"><span class="title_txt">부서코드</span></th>
												<th class="modify"><span class="title_txt">직위코드</span></th>
												<th class="jobcode"><span class="title_txt">직책코드</span></th>
											
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="group">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="jobGroup" value="" style="display:none;">
												</td>
												<td class="category">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="jobClass" value="" style="display:none;">
												</td>
												<td class="jop">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="jobDuty" value="" style="display:none;">
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="beginDate" value="" id="dp1617006090872">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="endDate" value="" id="dp1617006090873">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="percent">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="jobWeight" value="" style="display:none;">
												</td>
												<td class="work">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="chargeDuty" value="" style="display:none;">
												</td>
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>		        
													<span class="ic_con ic_add" title="추가"></span>
												</td>
												<td class="jobcode">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="chargeDuty" value="" style="display:none;">
												</td>
											</tr>
										</tbody></table>
									</div></div>
									<div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">0</span>
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
						<!-- /두번째 탭 끝 -->
						
						<!-- 세번째탭 발령 -->
						<div class="tab-pane fade" id="emp_movejob">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title">인사발령</h3>
									<div class="ehr_appoint viewForm">
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="num"><span class="title_txt">내역번호</span></th>
												<th class="date"><span class="title_txt">발령일</span></th>
												<th class="division"><span class="title_txt">발령명</span></th>
												<th class="reason"><span class="title_txt">사번</span></th>
												<th class="state"><span class="title_txt">직원구분</span></th>
												<th class="team"><span class="title_txt">부서</span></th>
												<th class="level"><span class="title_txt">직책</span></th>
												<th class="job"><span class="title_txt">담당업무</span></th>
												<th class="work"><span class="title_txt">직위</span></th>
												<th class="partcode"><span class="title_txt">부서코드</span></th>
												<th class="jobcode"><span class="title_txt">직위코드</span></th>
												<th class="positioncode"><span class="title_txt">직책코드</span></th>
											
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="date">
													<span class="wrap_date">
														<input id="start-date" class="txt wfix_small hasDatepicker" type="text" name="appointDate" value="">
														<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="appointDiv" value="" style="display:none;">	
												</td>
												<td class="reason">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="content" value="" style="display:none;">	
												</td>
												<td class="state">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="employeeType" value="" style="display:none;">	
												</td>
												<td class="team">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="position" value="" style="display:none;">	
												</td>
												<td class="level">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="salaryStep" value="" style="display:none;">	
												</td>
												<td class="job">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="responsibility" value="" style="display:none;">	
												</td>
												<td class="work">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="chargeDuty" value="" style="display:none;">	
												</td>
												<td class="partcode">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
												</td>
												<td class="jobcode">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="chargeDuty" value="" style="display:none;">	
												</td>
												<td class="positioncode">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="chargeDuty" value="" style="display:none;">	
												</td>
											</tr>
										</tbody>
										</table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
									</header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /세번째 탭 끝 -->
						
						<!-- 네번째탭 발령 -->
						<div class="tab-pane fade" id="emp_career">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >경력</h3>
									<div class="ehr_career viewForm">
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="num"><span class="title_txt">사번</span></th>
												<th class="date"><span class="title_txt">시작일</span></th>
												<th class="date"><span class="title_txt">종료일</span></th>
												<th class="workplace"><span class="title_txt">근무처</span></th>
												<th class="position"><span class="title_txt">직위</span></th>
												<th class="jop"><span class="title_txt">담당업무</span></th>
												<th class="period"><span class="title_txt">근속기간</span></th>
												<th class="cause"><span class="title_txt">퇴직사유</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="fromDate" value="" id="dp1617006090874">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="toDate" value="" id="dp1617006090875">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="workplace">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="workspace" value="" style="display:none;">
												</td>
												<td class="position">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="positionName" value="" style="display:none;">
												</td>
												<td class="jop">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="task" value="" style="display:none;">
												</td>
												<td class="period">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="continousPeriod" value="" style="display:none;">
												</td>
												<td class="cause">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="leaveReason" value="" style="display:none;">
													
												</td>
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
												</td>
											</tr>
											</tbody>
										</table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="num"><span class="title_txt">사번</span></th>
												<th class="division"><span class="title_txt">상벌사유</span></th>
												<th class="date"><span class="title_txt">상벌내용</span></th>
												<th class="reason"><span class="title_txt">일자</span></th>
												<th class="cause"><span class="title_txt">상벌구분</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="type" value="" style="display:none;">
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="date" value="" id="dp1617006090876">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="reason">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="content" value="" style="display:none;">
												</td>
												<td class="cause">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="reason" value="" style="display:none;">
												</td>
												
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
												</td>
											</tr>
											</tbody>
										</table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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

						<!-- 여섯번째탭  -->
						<div class="tab-pane fade" id="emp_jobtest">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title">인사평가</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_assessment viewForm">
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt"></span></th>
												<th class="year"><span class="title_txt">평가일자</span></th>
												<th class="capability"><span class="title_txt">종합점수</span></th>
												<th class="result"><span class="title_txt">평가자</span></th>
												<th class="evaluator"><span class="title_txt">부서</span></th>
												<th class="team"><span class="title_txt">의견</span>
												</th>
												<tr class="dataRow" data-id="1">
												<td class="num">
													<span>1</span>
												</td>
												<td class="year">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="evalYear" value="" style="display:none;">
												</td>
												<td class="capability">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="capability" value="" style="display:none;">
												</td>
												<td class="result">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="outcome" value="" style="display:none;">
												</td>
												<td class="evaluator">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="evaluator" value="" style="display:none;">
												</td>
												<td class="team">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="organization" value="" style="display:none;">
												</td>
												<!-- <td class="etc">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="etc" value="" style="display:none;">
												</td>
												<td class="modify">
													 <span class="ic_con ic_remove" title="삭제"></span>
													 <span class="ic_con ic_add" title="추가" style="display: none;"></span>
												</td> -->
											</tr>
											<tr class="dataRow" data-id="2">
												<td class="num">
													<span>2</span>
												</td>
												<td class="year">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="evalYear" value="" style="display:none;">
												</td>
												<td class="capability">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="capability" value="" style="display:none;">
												</td>
												<td class="result">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="outcome" value="" style="display:none;">
												</td>
												<td class="evaluator">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="evaluator" value="" style="display:none;">
												</td>
												<td class="team">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="organization" value="" style="display:none;">
												</td>
												<!-- <td class="etc">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="etc" value="" style="display:none;">
												</td>
												<td class="modify">
													 <span class="ic_con ic_remove" title="삭제"></span>
													 <span class="ic_con ic_add" title="추가"></span>
												</td> -->
											</tr>
										</tbody></table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
									</header>
									<div class="aside_wrapper_body">
									   <ul class="type_simple_list simple_list_alarm">        
									  
								 </ul>
									   <div id="moreLog" class="bottom_action" style="display: none;"><a class="btn_list_reload"><span class="ic"></span><span class="txt">더보기</span></a></div>
									</div>
								 </div></div></section></div>
							</div>
						</div>
						<!-- /여섯번째 탭 끝 -->

						<!-- 일곱번째탭  -->
						<div class="tab-pane fade" id="emp_qualification">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >자격평가</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_qualification viewForm">
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt">사번</span></th>
												<th class="division"><span class="title_txt">자격증명</span></th>
												<th class="name"><span class="title_txt">자격명</span></th>
												<th class="number"><span class="title_txt">자격번호</span></th>
												<th class="level"><span class="title_txt">자격등급</span></th>
												<th class="academy"><span class="title_txt">기관명</span></th>
												<th class="date"><span class="title_txt">취득일</span></th>
												<th class="date"><span class="title_txt">만료일</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseType" value="" style="display:none;">
												</td>
												<td class="name">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseNm" value="" style="display:none;">
												</td>
												<td class="number">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseNo" value="" style="display:none;">
												</td>
												<td class="level">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseClass" value="" style="display:none;">
												</td>
												<td class="academy">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="institution" value="" style="display:none;">
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="receiveDate" value="" id="dp1617006090878">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="expirationDate" value="" id="dp1617006090879">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
											   </td>
											</tr>
										</tbody></table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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
						<div class="tab-pane fade" id="emp_army">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >병역</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_military viewForm">
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt">사번</span></th>
												<th class="class"><span class="title_txt">군벌</span></th>
												<th class="level"><span class="title_txt">계급</span></th>
												<th class="number"><span class="title_txt">군번</span></th>
												<th class="division"><span class="title_txt">전역구분</span></th>
												<th class="date"><span class="title_txt">입대일</span></th>
												<th class="date"><span class="title_txt">제대일</span></th>
												<th class="etc"><span class="title_txt">기타 사유</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="class">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="militaryType" value="" style="display:none;">
												</td><td class="level">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="rank" value="" style="display:none;">
												</td>
												<td class="number">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="serialNumber" value="" style="display:none;">
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="discharge" value="" style="display:none;">
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="joinDate" value="" id="dp1617006090880">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="dischargeDate" value="" id="dp1617006090881">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="etc">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="reason" value="" style="display:none;">
												</td>
												<td class="modify">
													 <span class="ic_con ic_remove" title="삭제"></span>
													 <span class="ic_con ic_add" title="추가"></span>
												</td>
											</tr>
										</tbody></table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt">학력사항/span></th>
												<th class="class"><span class="title_txt">학교명/span></th>
												<th class="division"><span class="title_txt">전공</span></th>
												<th class="date"><span class="title_txt">졸업일자</span></th>
												<th class="date"><span class="title_txt">졸업여부</span></th>
												<th class="academy"><span class="title_txt">학력</span></th>
												<th class="modify"><span class="title_txt">직업</span></th>
												<th class="etc"><span class="title_txt">기타</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="class">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="content" value="" style="display:none;">
											   </td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="category" value="" style="display:none;">   
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="fromDate" value="" id="dp1617006090882">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="toDate" value="" id="dp1617006090883">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="academy">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="institution" value="" style="display:none;">
												</td>
												<td class="modify">
													 <span class="ic_con ic_remove" title="삭제"></span>
													 <span class="ic_con ic_add" title="추가"></span>
												</td>
												<td class="etc">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="institution" value="" style="display:none;">
												</td>
											</tr>
										</tbody></table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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
										<table class="type_list_box">
											<tbody>
											<tr>
												<th class="num"><span class="title_txt">사번</span></th>
												<th class="name"><span class="title_txt">가족성명</span></th>
												<th class="relation"><span class="title_txt">가족관계</span></th>
												<th class="sex"><span class="title_txt">성별</span></th>
												<th class="date"><span class="title_txt">생년월일</span></th>
												<th class="division"><span class="title_txt">학력</span></th>
												<th class="jop"><span class="title_txt">직업</span></th>
												<th class="etc"><span class="title_txt">기타</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="name">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="name" value="" >
												</td>
												<td class="relation">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="relation" value="" style="display:none;">
												</td>
												<td class="sex">
													   <span class="wrap_select">
														  <select class="wfix_small" name="gender">
															 <option value="">선택하세요</option>
															 <option value="MALE">남자</option>
															 <option value="FEMALE">여자</option>
														  </select>
													   </span>
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="birthDay" value="" id="dp1617006090884">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="educationLevel" value="" style="display:none;">
												</td>
												<td class="jop">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="job" value="" style="display:none;">
												</td>
												<td class="etc">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="note" value="" style="display:none;">
												</td>
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
												</td>
											</tr>
											</tbody>
										</table>
									</div></div></div>
									<div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">0</span>
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

						<!-- 열한번째탭 발령 -->
						<div class="tab-pane fade" id="emp_license">
							<div class="card">
								<div class="ehr_con_wrap"><div><h3 class="tab_title" >면허</h3>
									<!--탭 전체 펼치기시 타이틀 나옴-->
									<div class="ehr_qualification viewForm">
										<table class="type_list_box">
											<tbody><tr>
												<th class="num"><span class="title_txt">면허SEQ</span></th>
												<th class="division"><span class="title_txt">사번</span></th>
												<th class="name"><span class="title_txt">취득일자</span></th>
												<th class="number"><span class="title_txt">면허이름</span></th>
												<th class="level"><span class="title_txt">면허번호</span></th>
												<th class="academy"><span class="title_txt">발행처</span></th>
												<th class="date"><span class="title_txt">회사번호</span></th>
												<th class="modify"><span class="title_txt">수정</span></th>
											</tr>
											<tr class="dataRow" data-id="">
												<td class="num">
													<span>1</span>
												</td>
												<td class="division">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseType" value="" style="display:none;">
												</td>
												<td class="name">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseNm" value="" style="display:none;">
												</td>
												<td class="number">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseNo" value="" style="display:none;">
												</td>
												<td class="level">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="licenseClass" value="" style="display:none;">
												</td>
												<td class="academy">
													<span class="txt"></span>
													<input class="txt w_max" type="text" name="institution" value="" style="display:none;">
												</td>
												<td class="date">
													<span class="wrap_date">
													<input class="txt wfix_small hasDatepicker" type="text" name="receiveDate" value="" id="dp1617006090887">
													<span class="ic ic_calendar"></span>
													</span>
												</td>
												<td class="modify">
													<span class="ic_con ic_remove" title="삭제"></span>
													<span class="ic_con ic_add" title="추가"></span>
											   </td>
											</tr>
										</tbody></table>
									</div></div><div class="page_action_wrap" style="display: block;">
										<span class="btn_major" data-role="button" id="hrcard_btn_submit"><span class="txt">저장</span></span>
										<span class="btn_minor" data-role="button" id="hrcard_btn_cancel"><span class="txt">취소</span></span>
								</div>
								<section class="aside_wrapper article_reply" id="hrcardActivity"><div><div class="reply_wrap">
									<header class="single_title">
									   <span class="txt">변경이력</span><span class="num">17</span>
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