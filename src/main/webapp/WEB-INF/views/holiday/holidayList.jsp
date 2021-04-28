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
        <title>BB-내 연차 조회</title>
		
		<!-- shortcut logo -->
        <link rel="shortcut icon" type="image/x-icon" href="./resources/hrtemp/img/Logo.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../resources/hrtemp/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="../resources/hrtemp/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="../resources/hrtemp/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="../resources/hrtemp/css/dataTables.bootstrap4.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="../resources/hrtemp/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="../resources/hrtemp/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="../resources/hrtemp/js/html5shiv.min.js"></script>
			<script src="../resources/hrtemp/js/respond.min.js"></script>
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
            
				
          	<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">내 연차 조회</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">휴가</a></li>
									<li class="breadcrumb-item active">휴가정보내역</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="card mb-0">
						<c:forEach var="holidayInfo" items="${requestScope.holidayInfo }">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="profile-view">
										<div class="profile-img-wrap">
											<div class="profile-img">
												<a href="#"><img src=/billbo/resources/images/main<c:out value="/${holidayInfo.originalName}"/>></a>
											</div>
										</div>
										
										<div class="profile-basic">
											<div class="row">
												<div class="col-md-5">
													<div class="profile-info-left">
														<h3 class="user-name m-t-0 mb-0"></h3>
														<h4 class="text-muted"></h4>
														<h1>${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }님</h1>
														<div class="staff-id">Employee ID : <c:out value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno}"/></div>
														<div class="small doj text-muted"><h4>입사일 : <c:out value="${holidayInfo.enrollDate }"/></h4></div>
														<div class="staff-msg"><a class="btn btn-custom" href="chat.html">Send Message</a></div>
													</div>
												</div>
												<div class="col-md-7">
												
													<ul class="personal-info">
														<li>
															<div class="title">휴대폰 번호:</div>
															<div class="text"><a href=""><c:out value="${holidayInfo.phone }"/></a></div>
														</li>
														<li>
															<div class="title">Email:</div>
															<div class="text"><a href=""><c:out value="${holidayInfo.email }"/></a></div>
														</li>
														<!-- <li>
															<div class="title">Birthday:</div>
															<div class="text">24th July</div>
														</li> -->
														<li>
															<div class="title">Address:</div>
															<div class="text"><c:out value="${holidayInfo.address }"/></div>
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
						</c:forEach>
						
					</div>
					<br>
					<div class="col-auto float-right ml-auto">
								<a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_holiday"><i class="fa fa-plus"></i>휴가추가</a>
							</div>
					<div class="card tab-box">
						<div class="row user-tabs">
							<div class="col-lg-12 col-md-12 col-sm-12 line-tabs">
								<ul class="nav nav-tabs nav-tabs-bottom">
									<li class="nav-item"><a href="#emp_profile" data-toggle="tab" class="nav-link active">내 휴가 현황</a></li>
									<!-- <li class="nav-item"><a href="#emp_projects" data-toggle="tab" class="nav-link">Projects</a></li>
									<li class="nav-item"><a href="#bank_statutory" data-toggle="tab" class="nav-link">Bank & Statutory <small class="text-danger">(Admin Only)</small></a></li> -->
								</ul>
							</div>
						</div>
					</div>
						
					
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table mb-0">
									<thead>
										<tr>
											<th hidden="true">번호</th>
											<th hidden="true">번호</th>
											<th>휴가종류 </th>
											<th>휴가시작날짜</th>
											<th>휴가종료날짜</th>
											<th>휴가기간</th>
											<th>휴가사유</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="holidaylist" items="${requestScope.holidaylist }">
										<tr class="holiday-completed">
											<td hidden="true"><c:out value="${holidaylist.no }"/></td>
											<td hidden="true"><c:out value="${holidaylist.no }"/></td>
											<td><c:out value="${holidaylist.type }"/></td>
											<td><c:out value="${holidaylist.startDate }"/></td>
											<td><c:out value="${holidaylist.endDate }"/></td>
											<td><c:out value="${holidaylist.term }"/></td>
											<td><c:out value="${holidaylist.reason }"/></td>
											<td><a href="#" class="btn add-btn" data-toggle="modal" data-target="#delete_holiday" id="deleteHoliday"><i class="fa fa-minus" id=""></i>휴가삭제</a></td>
											<td><a href="#" class="btn add-btn" data-toggle="modal" data-target="#edit_holiday" id="modifyHoliday"><i class="fa fa-minus" ></i>휴가수정</a></td>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
                </div>
				<!-- /Page Content -->
				
				<!-- Add Holiday Modal -->
				
				<div class="modal custom-modal fade" id="add_holiday" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
					<form action="${pageContext.servletContext.contextPath }/holiday/insert" method="post">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">휴가 추가</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								
								<div class="form-group" hidden="false">
										<label>사번 <span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="text" name="memberNo" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno}"></div>
									</div>
									<div class="form-group">
										<label>휴가종류 <span class="text-danger">*</span></label>
										<select class="form-control" type="text" name="type">
											<option value="병가">병가</option>
											<option value="반차">반차</option>
											<option value="연차">연차</option>
										</select>
									</div>
									<div class="form-group">
										<label>휴가시작일 <span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="date" name="startDate"></div>
									</div>
										<div class="form-group">
										<label>휴가종료일 <span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="date" name="endDate"></div>
									</div>
									<div class="form-group">
										<label>휴가사유 <span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<textarea name="reason" style="resize:none; width: 440px; margin-top: 0px; margin-bottom: 0px; height: 192px;"></textarea><!-- <input type="text" name="reason"> --></div>
									</div>
									<div class="form-group" hidden="true">
										<label>휴가기간<span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="text" name="term" class="term" id="term" value="2"></div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn" type="button" onclick="registHoliday(this.form)"> 추가하기</button>
										<button class="btn btn-primary submit-btn">돌아가기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Holiday Modal -->
				
				<!-- Edit Holiday Modal -->
				<div class="modal custom-modal fade" id="edit_holiday" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
						
							<div class="modal-header">
								<h5 class="modal-title">휴가 수정</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="${pageContext.servletContext.contextPath }/holiday/modify" method="post">
								<div class="form-group" hidden="false">
								<label>사번 <span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="text" name="memberNo" value="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberno}"></div>
								</div>
								<div class="form-group" hidden="true">
										<label>휴가번호 <span class="text-danger">*</span></label>
										<input type="text" name="no" id="no">
									</div>
									<div class="form-group">
										<label>휴가종류 <span class="text-danger">*</span></label>
										<select class="form-control" type="text" name="type">
											<option value="병가">병가</option>
											<option value="반차">반차</option>
											<option value="연차">연차</option>
										</select>
									</div>
									<div class="form-group">
										<label>휴가시작날짜 <span class="text-danger">*</span></label>
										<div class="cal-icon"><input  value="26-04-2019" type="date" name="startDate"></div>
									</div>
									<div class="form-group">
										<label>휴가종료날짜 <span class="text-danger">*</span></label>
										<div class="cal-icon"><input  value="01-01-2019" type="date" name="endDate"></div>
									</div>
									<div>
										<label>휴가사유 <span class="text-danger">*</span></label>
										<div class="text-danger"><textarea name="reason" style="resize:none; width: 440px; margin-top: 0px; margin-bottom: 0px; height: 192px;"></textarea></div>
									</div>
									<div class="form-group" hidden="true">
										<label>휴가기간<span class="text-danger">*</span></label>
										<div class="cal-icon"><!-- <input class="form-control datetimepicker" type="text"> -->
										<input type="text" name="term" class="term" id="term" value="2"></div>
									</div>
									<div class="submit-section">
										<button class="btn btn-primary submit-btn" type="button" onclick="modifyHoliday(this.form)">수정하기</button>
									</div>
								</form>
							</div>
						
						</div>
					</div>
				</div>
				<!-- /Edit Holiday Modal -->

				<!-- Delete Holiday Modal -->
				<div class="modal custom-modal fade" id="delete_holiday" role="dialog">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
							<form action="${pageContext.servletContext.contextPath }/holiday/delete" method="post">
								<div class="form-header">
									<h3>Delete Holiday</h3>
									<h3>휴가삭제</h3>
										<div class="form-group" hidden="">
										<label>휴가번호 <span class="text-danger">*</span></label>
										<input type="text" name="no" id="no2">
									</div>
									<p>Are you sure want to delete?</p>
								</div>
								<div class="modal-btn delete-action">
									<div class="row">
										<div class="col-6">
											<button class="btn btn-primary submit-btn" type="button" onclick="deleteHoliday(this.form)">삭제하기</button>
										</div>
										<div class="col-6">
											<button class="btn btn-primary submit-btn" type="button" >취소</button>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Delete Holiday Modal -->
				
            </div>
			<!-- /Page Wrapper -->
				
            </div>
			<!-- /Page Wrapper -->

        </div>
		<!-- /Main Wrapper -->
		<script>
		function registHoliday(regist){
			var memberNo = regist.memberNo.value;
			var type = regist.type.value;
			var startDate = regist.startDate.value;
			var endDate = regist.endDate.value;
			var reason = regist.reason.value;
			var term = regist.term.value;
			
			regist.submit();
		}
		</script> 
		
		<!-- 휴가수정 -->
		<script>
		function modifyHoliday(modify){
			var memberNo = modify.memberNo.value;
			var no = modify.no.value;
			var startDate = modify.startDate.value;
			var endDate = modify.endDate.value;
			var reason = modify.reason.value;
			var term = modify.term.value
			
			modify.submit();
			
		}
		</script>
		
		<!-- 휴가삭제 -->
		<script>
			function deleteHoliday(delete2){
				var no = delete2.no.value;
				console.log(no)
				delete2.submit();
			}
		</script>
		<script>
	if(document.getElementsByTagName("td")) {
		const $tds = document.getElementsByTagName("td");
		
		for(let i = 0; i < $tds.length; i++) {
			$tds[i].onmouseenter = function() {
				this.parentNode.style.backgroundColor = "yellow";
				this.parentNode.style.cursor = "pointer";
			}
			$tds[i].onmouseout = function() {
				this.parentNode.style.background = "white";
			}
		/* 	$tds[i].onclick = function() {
				const no = this.parentNode.children[6].innerText; */
			
				/* location.href = "${ pageContext.servletContext.contextPath }/holiday/detail?no=" + no; */
			//}
			$tds[i].onmouseenter = function() {
             $('#modifyHoliday').on('click', function(ii) {
                 console.log("클릭");
                 console.log($tds[0].innerText);
                 console.log(this.parentNode.children[0].innerText);
                 console.log(ii);
                 $('#no').val($tds[0].innerText);
             });
             
                $('#deleteHoliday').on('click', function(ii) {
                    console.log("클릭");
                    console.log($tds[1].innerText);
                    console.log(this.parentNode.children[0].innerText);
                    console.log(ii);
                    $('#no2').val($tds[1].innerText);
                });
         }
			
		
		}
	}
	</script>
	<script>
</script>
		
		<!-- <script>
		input.addEventListener('term' e => { 
			   var start = $('startDate').val();
			   var date = $('endDate').val();
			   
			   var endYear = date.substring(0,4);
			   var endMonth = date.substring(5,7);
			   var endDay = date.substring(8,10);
			   
			   var startYear = start.substring(0,4);
			   var startMonth = start.substring(5,7);
			   var startDay = start.substring(8,10);
			   
			   var SDate = new Date(startYear, startMonth, startDay);   
			   var RDate = new Date(endYear, endMonth, endDay);
			   
			   var term = SDate - RDate;
			   
			   $('term').val() = term;
			   
			   console.table(term)
			}) -->
	<!-- 	</script> -->

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
		
		<!-- Datatable JS -->
		<script src="../resources/hrtemp/js/jquery.dataTables.min.js"></script>
		<script src="../resources/hrtemp/js/dataTables.bootstrap4.min.js"></script>
		
		<!-- Custom JS -->
		<script src="../resources/hrtemp/js/app.js"></script>
		
    </body>
</html>