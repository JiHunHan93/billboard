<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
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
<title>Bill-Board Employee Management</title>

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

</head>
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
				<a href="${pageContext.servletContext.contextPath}" class="logo">
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

			<a id="mobile_btn" class="mobile_btn" href="#sidebar">
				<i class="fa fa-bars"></i>
			</a>

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
							<button class="btn" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
				</li>
				<!-- /Search -->

				<!-- Flag -->
				<li class="nav-item dropdown has-arrow flag-nav">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button">
						<img src="/billbo/resources/hrtemp/img/flags/us.png" alt="" height="20">
						<span>English</span>
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
						<i class="fa fa-bell-o"></i> 
						<span class="badge badge-pill">3</span>
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
												<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">John Doe</span> added new task
													<span class="noti-title">Patient appointment booking</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
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
												<p class="noti-details">
													<span class="noti-title">Tarah Shropshire</span> changed the task name 
													<span class="noti-title">Appointment booking with payment gateway</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
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
												<p class="noti-details">
													<span class="noti-title">Misty Tison</span> added 
													<span class="noti-title">Domenic Houston</span> and 
													<span class="noti-title">Claire Mapes</span> to project 
													<span class="noti-title">Doctor available module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
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
												<p class="noti-details">
													<span class="noti-title">Rolland Webber</span> completed task 
													<span class="noti-title">Patient and Doctor video conferencing</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
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
												<p class="noti-details">
													<span class="noti-title">Bernardo Galaviz</span> added new task
													<span class="noti-title">Private chat module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">2 days ago</span>
												</p>
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
						<i class="fa fa-comment-o"></i>
						<span class="badge badge-pill">8</span>
					</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Messages</span>
							<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message">
									<a href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">
													<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-09.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">Richard Miles</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit	amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li class="notification-message">
									<a href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">
													<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg">
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
									<a href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">
													<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-03.jpg">
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
									<a href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">
													<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-05.jpg">
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
									<a href="${pageContext.servletContext.contextPath}/apps/chat">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">
													<img alt="" src="/billbo/resources/hrtemp/img/profiles/avatar-08.jpg">
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
						<span class="user-img">
							<img src="/billbo/resources/hrtemp/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span>
						</span> 
						<span> <!-- 해당 사원 명 -->	</span>
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">내 정보</a> 
						<a class="dropdown-item" href="settings.html">환경설정</a> 
						<a class="dropdown-item" href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a>
					</div>
				</li>
			</ul>
			<!-- /Header Menu -->

			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					<i class="fa fa-ellipsis-v"></i>
				</a>
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
						<li>
							<a href="${pageContext.servletContext.contextPath}" class="sidebar-default">
								<i class="la la-home sidebar-icon"></i>
								<span class="sidebar-text">Home</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/apps" class="sidebar-default">
								<i class="la la-cube sidebar-icon"></i>
								<span class="sidebar-text">Apps</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/employee" class="noti-dot sidebar-default">
								<i class="la la-user sidebar-icon"></i> 
								<span class="sidebar-text">Employees</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/attendance" class="sidebar-default">
								<i class="la la-briefcase sidebar-icon"></i>
								<span class="sidebar-text">Attendance</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/admin" class="sidebar-default"> 
								<i class="la la-key sidebar-icon"></i>
								<span class="sidebar-text">Admin</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/calender/main" class="sidebar-default">
								<i class="las la-calendar sidebar-icon"></i>
								<span class="sidebar-text">Calendar</span>
							</a>
						</li>
						<div class="sidebar-line"></div>
						<li>
							<a href="${pageContext.servletContext.contextPath}/information" class="sidebar-default">
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

			<!-- Page Content -->

			<div class="content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="welcome-box">
							<div class="welcome-img">
								<img alt=""
									src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg">
							</div>
							<div class="welcome-det">
								<h3>
									<!-- 해당 사원명 -->
									${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님
									환영합니다.
								</h3>
								<p>
									<!-- 연월일 -->
									2021 03 29 월
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="card punch-status">
							<div class="card-body">
								<h5 class="card-title">
								</h5>
							<h1 class="poscenter white alignleft">
											<span id="clock"></span>
										</h1>
								<div class="punch-info">
									<div class="punch-hours">
										<span><strong>근무시간</strong></span>
									</div>
								</div>
								<div class="work_btn_box">
									<form class="work_btn" name="update" action="${pageContext.servletContext.contextPath }/work/regist" method="post">
										<button class="btn btn-dark btn-lg">출근 등록</button>
									</form>
									<form class="work_btn" name="update" action="${pageContext.servletContext.contextPath }/work/update"method="post">
										<button class="btn btn-success btn-lg">퇴근 등록</button>
									</form>
								</div>
								<div class="statistics">
									<div class="row">
										<div class="col-md-6 col-6 text-center">
										<small class="text-muted">
										
									</small>
										</div>
										<div class="col-md-6 col-6 text-center">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card att-statistics">
							<div class="card-body">
								<h5 class="card-title">Statistics</h5>
								<div class="stats-list">
									<div class="stats-info">
										<p>
											Today <span id="clock"></span>/ 8 hrs
										</p>
										<div class="progress">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: 31%" aria-valuenow="31" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="stats-info">
										<p>
											This Week <strong>28 <small>/ 40 hrs</small></strong>
										</p>
										<div class="progress">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 31%" aria-valuenow="31" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="stats-info">
										<p>
											This Month <strong>90 <small>/ 160 hrs</small></strong>
										</p>
										<div class="progress">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 62%" aria-valuenow="62" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="stats-info">
										<p>
											Remaining <strong>90 <small>/ 160 hrs</small></strong>
										</p>
										<div class="progress">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 62%" aria-valuenow="62" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="stats-info">
										<p>
											Overtime <strong>4</strong>
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
							<div class="card-body">
								<h5 class="card-title">Today Activity</h5>
								<ul class="res-activity-list">
									<li>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 10.00 AM.
										</p>
									</li>
									<li>
										<p class="mb-0">Punch Out at</p>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 11.00 AM.
										</p>
									</li>
									<li>
										<p class="mb-0">Punch In at</p>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 11.15 AM.
										</p>
									</li>
									<li>
										<p class="mb-0">Punch Out at</p>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 1.30 PM.
										</p>
									</li>
									<li>
										<p class="mb-0">Punch In at</p>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 2.00 PM.
										</p>
									</li>
									<li>
										<p class="mb-0">Punch Out at</p>
										<p class="res-activity-time">
											<i class="fa fa-clock-o"></i> 7.30 PM.
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<section class="dash-section">
							<h1 class="dash-sec-title">오늘</h1>
							<div class="dash-sec-content">
								<div class="dash-info-list">
									<a href="#" class="dash-card text-danger">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-hourglass-o"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 사원명 -->
													질병결근
												</p>
											</div>
											<div class="dash-card-avatars">
												<div class="e-avatar">
													<img
														src="/billbo/resources/hrtemp/img/profiles/avatar-09.jpg"
														alt="">
												</div>
											</div>
										</div>
									</a>
								</div>

								<div class="dash-info-list">
									<a href="#" class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-suitcase"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 사원명 -->
													부재
												</p>
											</div>
											<div class="dash-card-avatars">
												<div class="e-avatar">
													<img
														src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg"
														alt="">
												</div>
											</div>
										</div>
									</a>
								</div>

								<div class="dash-info-list">
									<a href="#" class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-building-o"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 사원명 -->
													자택근무
												</p>
											</div>
											<div class="dash-card-avatars">
												<div class="e-avatar">
													<img
														src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg"
														alt="">
												</div>
											</div>
										</div>
									</a>
								</div>

							</div>
						</section>

						<section class="dash-section">
							<h1 class="dash-sec-title">내일</h1>
							<div class="dash-sec-content">
								<div class="dash-info-list">
									<div class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-suitcase"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 인원수 -->
													명 부재
												</p>
											</div>
											<div class="dash-card-avatars">
												<a href="#" class="e-avatar"><img
													src="/billbo/resources/hrtemp/img/profiles/avatar-04.jpg"
													alt=""></a> <a href="#" class="e-avatar"><img
													src="/billbo/resources/hrtemp/img/profiles/avatar-08.jpg"
													alt=""></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

						<section class="dash-section">
							<h1 class="dash-sec-title">다음주</h1>
							<div class="dash-sec-content">
								<div class="dash-info-list">
									<div class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-suitcase"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 인원수 -->
													명 부재 예정
												</p>
											</div>
											<div class="dash-card-avatars">
												<a href="#" class="e-avatar"><img
													src="/billbo/resources/hrtemp/img/profiles/avatar-05.jpg"
													alt=""></a> <a href="#" class="e-avatar"><img
													src="/billbo/resources/hrtemp/img/profiles/avatar-07.jpg"
													alt=""></a>
											</div>
										</div>
									</div>
								</div>
								<div class="dash-info-list">
									<div class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-user-plus"></i>
											</div>
											<div class="dash-card-content">
												<p>
													신입 후임자
													<!-- 해당 요일명 -->
													요일에 첫출근 예정
												</p>
											</div>
											<div class="dash-card-avatars">
												<div class="e-avatar">
													<img
														src="/billbo/resources/hrtemp/img/profiles/avatar-02.jpg"
														alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="dash-info-list">
									<a href="" class="dash-card">
										<div class="dash-card-container">
											<div class="dash-card-icon">
												<i class="fa fa-calendar"></i>
											</div>
											<div class="dash-card-content">
												<p>
													<!-- 해당 이벤트 ex)은행 휴무일 -->
													국민은행 월요일 휴무
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
						</section>
					</div>

					<div class="col-lg-4 col-md-4">
						<div class="dash-sidebar">
							<section>
								<h5 class="dash-title">프로젝트</h5>
								<div class="card">
									<div class="card-body">
										<div class="time-list">
											<div class="dash-stats-list">
												<h4>
													<!-- 작업 수 -->
													71
												</h4>
												<p>작업 수</p>
											</div>
											<div class="dash-stats-list">
												<h4>
													<!-- 보류 작업 수 -->
													14
												</h4>
												<p>보류 작업 수</p>
											</div>
										</div>
										<div class="request-btn">
											<div class="dash-stats-list">
												<h4>
													<!-- 총 프로젝트 수 -->
													2
												</h4>
												<p>총 프로젝트</p>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section>
								<h5 class="dash-title">보유 연차</h5>
								<div class="card">
									<div class="card-body">
										<div class="time-list">
											<div class="dash-stats-list">
												<h4>
													<!-- 사용 연차 일수 -->
													4.5
												</h4>
												<p>사용 연차</p>
											</div>
											<div class="dash-stats-list">
												<h4>
													<!-- 보유 연차 일수 -->
													12
												</h4>
												<p>보유 연차</p>
											</div>
										</div>
										<div class="request-btn">
											<a class="btn btn-primary" data-toggle="modal"
												data-target="#away-select" href="#">연차 사용</a>
										</div>
									</div>
								</div>
							</section>
							<section>
								<h5 class="dash-title">결재 현황</h5>
								<div class="card">
									<div class="card-body">
										<div class="time-list">
											<div class="dash-stats-list">
												<h4>
													<!-- 승인 된 결재건 수 -->
													5
												</h4>
												<p>승인됨</p>
											</div>
											<div class="dash-stats-list">
												<h4>
													<!-- 보류중인 결재건 수 -->
													2
												</h4>
												<p>보류중인 결재 건</p>
											</div>
										</div>
										<div class="request-btn">
											<a class="btn btn-primary" href="#">내 결재 내역</a>
										</div>
									</div>
								</div>
							</section>
							<section>
								<h5 class="dash-title">다가오는 휴일</h5>
								<div class="card">
									<div class="card-body text-center">
										<h4 class="holiday-title mb-0">
											<!-- 휴일 연월일 휴일명 -->
										</h4>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>

			</div>
			<!-- /Page Content -->

			<!-- Away Modal -->
			<div class="modal custom-modal fade" id="away-select" role="dialog">
				<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
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
								<div class="col-md-6">
									<div class="card punch-status">
										<div class="card-body">
											<h5 class="card-title">휴가신청 양식</h5>
											<a class="modal-sub-text">휴가</a>
											<ul>
												<li>
													<a title="휴가신청서" rel="FORM" nodeid="708" id="FORM_708" href="#" data-bypass="1" class="modal-sub-text1">휴가신청서</a>
												</li>
												<li>
													<a title="휴일근무신청서" rel="FORM" nodeid="673" id="FORM_673" href="#" data-bypass="1" class="modal-sub-text2">휴일근무신청서</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card recent-activity">
										<div class="card-body">
											<h5 class="card-title">양식 미리보기</h5>
											<ul class="modal-sub0img-area">
												<li class="modal-sub-img1">
													<img src="./resources/images/main/휴가 신청서.PNG" class="modal-sub-img1">
												</li>
												<li class="modal-sub-img2">
													<img src="./resources/images/main/휴일근무신청서.PNG" class="modal-sub-img2">
												</li>
											</ul>
										</div>
									</div>
								</div>
								<button class="btn btn-success modal-sub-submit-btn">작성하기</button>
								<button class="btn btn-success modal-sub-submit-btn-a">작성하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Away Modal -->

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
</html>