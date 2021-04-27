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
      <!-- shortcut logo -->
<link rel="shortcut icon" type="image/x-icon" href="./resources/hrtemp/img/Logo.png">
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
                                    <span class="message-content">Lorem ipsum dolor sit   amet, consectetur adipiscing</span>
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
                  <span> <!-- 해당 사원 명 -->   </span>
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
                     <a href="${pageContext.servletContext.contextPath}/calendar/main" class="sidebar-default">
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
			<h3 class="page-title" font>${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님의 근태 현황</h3>
			<a href="${pageContext.servletContext.contextPath }/work/department">부서현황</a>
			<form>
				<div class="row">
					<div class="col-md-3">
						<div class="stats-info">
							<h5 style="font-weight: bold;">근무시간</h5>
							<h4 style="color: darkorange;">
								<c:out value="${ workInfo.totalWork }" />
							</h4>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stats-info">
							<h6 style="font-weight: bold;">초과시간</h6>
							<h4 style="color: darkorange;">
								<c:out value="${ workInfo.extraWork }" />
							</h4>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stats-info">
							<h6 style="font-weight: bold;">근무일</h6>
							<h4 style="color: gray;">
								<c:out value="${ workInfo.workCount }" />
							</h4>
						</div>
					</div>

					<div class="col-md-3">
						<div class="stats-info">
							<h6 style="font-weight: bold;">지각</h6>
							<h4 style="color: gray;">
								<c:out value="${ workInfo.lateCount }" />
							</h4>
						</div>
					</div>


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
				<form>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-striped custom-table mb-0 datatable">
								<thead>
									<tr>
										<th></th>
										<th>업무시작</th>
										<th>업무종료</th>
										<th>상태</th>
										<th>수정하기</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="statusList" items="${requestScope.statusList }">
										<tr>
											<td><input type="hidden" name="no" value="${statusList.no}"></td>
											<td><c:out value="${ statusList.commute }"></c:out></td>
											<td><c:out value="${ statusList.lwork }"></c:out></td>
											<td><c:out value="${ workInfo.workTypeCode }"></c:out></td>
											<td><button class="btn btn-success" type="button" data-toggle="modal" data-target="#edit_todaywork">수정하기</button></td>
										</tr>
									</c:forEach>
							</table>
											<button class="btn btn-info" type="button" data-toggle="modal" data-target="#add_todaywork">Log</button>
				</form>
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
								</button>
							</div>
							<div class="modal-body">
								 <table class="table table-striped custom-table mb-0 datatable">
							<thead>
								   <tr>
								       <th>변경 전 날짜</th>
								       <th>변경 전 출근 시간</th>
								       <th>변경 전 퇴근 시간</th>
								       <th>사유</th>
								   </tr>
						   </thead>
								  <tbody>
								  <c:forEach var="recordList" items="${requestScope.recordList }">
								    	<tr>	  
										    <td><c:out value="${recordList.modifyDate }"></c:out></td>
										    <td><c:out value="${recordList.modifyCommute }"></c:out></td>
										    <td><c:out value="${recordList.modifyLeave }"></c:out></td>
										    <td><c:out value="${recordList.reason }"></c:out></td>
								    	</tr>
								  </c:forEach>
								  </tbody>								
								</table>
								</div>
							      </div>
							         </div>
								        </div>
				<!-- /Add Today Work Modal -->
				<div id="edit_todaywork" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">수정하기</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								</button>
							</div>
							
							<div class="modal-body">
							<form action="${pageContext.servletContext.contextPath }/work/edit" method="Post">
							<table>
								<thead>
									<tr>
										<th>근무날짜</th>     <th>출근시간</th>   <th>퇴근시간</th> <th>근무타입</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="date" name="date"></td> <td> <input type="Time" name="commute"></td> <td><input type="Time" name="lwork"></td> <td><input type="text" name="type"></td>
									</tr>
								</tbody>
							</table>
							<div><button type="submit" class="btn btn-dark btn-sm">수정</button></div>
							</form>
							
								</div>
							      </div>
							         </div>
								        </div>
				
				


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