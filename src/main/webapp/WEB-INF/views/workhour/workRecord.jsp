<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss"); %>
<!DOCTYPE html>

<html lang="ko">
 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
<head>
<<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="/billbo/resources/hrtemp/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/dataTables.bootstrap4.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="/billbo/resources/hrtemp/css/style.css">

</head>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper"></div>

	<!-- Header -->
	<div class="header">

		<!-- Logo -->
		<div class="header-left">
			<a href="index.html" class="logo"> <img
				src="/billbo/resources/hrtemp/img/Logo.png" width="40" height="40" alt="">
			</a>
		</div>
		<!-- /Logo -->

		<a id="toggle_btn" href="javascript:void(0);"> 
		<span class="bar-icon"> 
		</span>
		</a>

		<!-- Header Title -->
		<div class="page-title-box">
			<h3>Bill-Board Employee Management</h3>
		</div>
		<!-- /Header Title -->

		<a id="mobile_btn" class="mobile_btn" href="#sidebar"> <i
			class="fa fa-bars"></i></a>

		<!-- Header Menu -->
		<ul class="nav user-menu">

			<!-- Search -->
			<li class="nav-item">
				<div class="top-nav-search">
					<a href="javascript:void(0);" class="responsive-search"> <i class="fa fa-search"></i>
					</a>
					<form action="search.html">
						<input class="form-control" type="text" placeholder="Search here">
						<button class="btn" type="submit"> <i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</li>
			<!-- /Search -->

			<!-- Flag -->
			<li class="nav-item dropdown has-arrow flag-nav"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button"> <img src="/billbo/resources/hrtemp/img/flags/us.png"
					alt="" height="20"> <span>English</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">
					<a href="javascript:void(0);" class="dropdown-item"> <img
						src="/billbo/resources/hrtemp/img/flags/us.png" alt="" height="16">
						English
					</a> <a href="javascript:void(0);" class="dropdown-item"> <img
						src="/billbo/resources/hrtemp/img/flags/fr.png" alt="" height="16">
						French
					</a> <a href="javascript:void(0);" class="dropdown-item"> <img
						src="/billbo/resources/hrtemp/img/flags/es.png" alt="" height="16">
						Spanish
					</a> <a href="javascript:void(0);" class="dropdown-item"> <img
						src="/billbo/resources/hrtemp/img/flags/de.png" alt="" height="16">
						German
					</a>
				</div></li>
			<!-- /Flag -->

		
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
						class="dropdown-item" href="login.html">로그아웃</a>
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
					<li class="submenu"><a href="employee-dashboard.html"
						class="sidebar-default"> <i class="la la-home sidebar-icon"></i>
							<!-- <span class="menu-arrow"></span> --> <span
							class="sidebar-text">Home</span>
					</a> <!-- <ul style="display: none;">
                           <li><a href="index.html">Admin Dashboard</a></li>
                           <li><a class="active" href="employee-dashboard.html">Employee Dashboard</a></li>
                        </ul> --></li>
					<div class="sidebar-line"></div>
					<li class="submenu"><a href="category-Apps.html"
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
					<li class="submenu"><a href="category-Employee.html"
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
					<li><a href="category-Attendance.html" class="sidebar-default">
							<i class="la la-briefcase sidebar-icon"></i> <span
							class="sidebar-text">Attendance</span>
					</a></li>
					<div class="sidebar-line"></div>
					<li class="submenu"><a href="category-Admin.html"
						class="sidebar-default"> <i class="la la-key sidebar-icon"></i>
							<span class="sidebar-text">Admin</span> <!-- <span class="menu-arrow"></span> -->
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
                        <a href="../resources/hrtemp.html"><i class="la la-object-ungroup"></i> <span>../resources/hrtemp</span></a>
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
						<ul class="breadcrumb">
						</ul>
					</div>
				</div>
			</div>
			<!-- /Page Header -->
			<h3 class="page-title" font>${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님의 출근 LOG</h3>
			<form>

				<!-- /Leave Statistics -->
				<!-- Page Content -->
				<div class="content container-fluid">
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center"></div>
					</div>
					<!-- /Page Header -->
					<!-- Leave Statistics -->
					</div>
					</form>
					


					<!-- Search Filter -->
					<div class="row filter-row">
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12"></div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12"></div>
						<div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12"></div>
					</div>
				</div>
				<!-- /Search Filter -->
			<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<form action="${pageContext.servletContext.contextPath }/work/record">
								 <table class="table table-striped custom-table mb-0 datatable">
							<thead>
								   <tr>
								       <th>수정 이력 번호</th>
								       <th>근태 현황 고유번호</th>
								       <th>변경 전 날짜</th>
								       <th>변경 전 출근 시간</th>
								       <th>변경 전 퇴근 시간</th>
								       <th>사유</th>
								   </tr>
						 </thead>
								  <c:forEach var="recordList" items="${requestScope.recordList }">
								  <tbody>
								    	<tr>	  
										    <td><c:out value="${recordList.no }"></c:out></td>
										    <td><c:out value="${recordList.statusNo }"></c:out></td>
										    <td><c:out value="${recordList.modifyDate }"></c:out></td>
										    <td><c:out value="${recordList.modifyCommute }"></c:out></td>
										    <td><c:out value="${recordList.modifyLeave }"></c:out></td>
										    <td><c:out value="${recordList.reason }"></c:out></td>
								    	</tr>
								  </tbody>								
					    </c:forEach>
								</table>
							</form>
						</div>
					</div>
				</div>
		</div>
		<!-- /Page Content -->
		
		<!-- Shin modal -->
		
						<!-- Add Today Work Modal -->
				<div id="add_todaywork" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">수정이력</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
								 <table class="table table-striped custom-table mb-0 datatable">
							<thead>
								   <tr>
								       <th>수정 이력 번호</th>
								       <th>근태 현황 고유번호</th>
								       <th>변경 전 날짜</th>
								       <th>변경 전 출근 시간</th>
								       <th>변경 전 퇴근 시간</th>
								       <th>사유</th>
								   </tr>
						   </thead>
								  <tbody>
								    	<tr>						  
										    <td><c:out value="${record.no }"></c:out></td>
										    <td><c:out value="${record.statusNo }"></c:out></td>
										    <td><c:out value="${record.modifyDate }"></c:out></td>
										    <td><c:out value="${record.modifyCommute }"></c:out></td>
										    <td><c:out value="${record.modifyLeave }"></c:out></td>
										    <td><c:out value="${record.reason }"></c:out></td>
								    	</tr>
								  </tbody>								
								</table>
								</form>
								</div>
							      </div>
							         </div>
								        </div>
				<!-- /Add Today Work Modal -->



				<!-- /Header -->


				<!-- /Edit Leave Modal -->

				<!-- Delete Leave Modal -->
				<div class="modal custom-modal fade" id="delete_approve"
					role="dialog">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
								<div class="form-header">
									<h3>Delete Leave</h3>
									<p>Are you sure want to Cancel this leave?</p>
								</div>
								<div class="modal-btn delete-action">
									<div class="row">
										<div class="col-6">
											<a href="javascript:void(0);"
												class="btn btn-primary continue-btn">Delete</a>
										</div>
										<div class="col-6">
											<a href="javascript:void(0);" data-dismiss="modal"
												class="btn btn-primary cancel-btn">Cancel</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Delete Leave Modal -->

			<!-- /Page Wrapper -->

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
		
		<!-- Datatable JS -->
		<script src="/billbo/resources/hrtemp/js/jquery.dataTables.min.js"></script>
		<script src="/billbo/resources/hrtemp/js/dataTables.bootstrap4.min.js"></script>

		<!-- Custom JS -->
		<script src="/billbo/resources/hrtemp/js/app.js"></script>
</body>
</html>