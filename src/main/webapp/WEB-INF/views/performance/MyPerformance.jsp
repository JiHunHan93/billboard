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
<title>2조BB-게시판/문서함</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/line-awesome.min.css">

<!-- Datatable CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/dataTables.bootstrap4.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/style.css">

<!-- Custom JS -->
<script src="../resources/hrtemp/js/app.js"></script>

<!-- jQuery -->
<script src="../resources/hrtemp/js/jquery-3.5.1.min.js"></script>


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
						<!-- 사이드바 서브메뉴 안쓰는 방향으로 수정 -->
						<li><a href="${pageContext.servletContext.contextPath}"
							class="sidebar-default"> <i class="la la-home sidebar-icon"></i>
								<!-- <span class="menu-arrow"></span> --> <span
								class="sidebar-text">Home</span>
						</a> </li>
						<div class="sidebar-line"></div>
						<li><a href="${pageContext.servletContext.contextPath}/apps"
							class="sidebar-default"> <i class="la la-cube sidebar-icon"></i>
								<span class="sidebar-text"> Apps</span> <!-- <span class="menu-arrow"></span> -->
						</a> </li>
						<div class="sidebar-line"></div>
						
						<li><a
							href="${pageContext.servletContext.contextPath}/employee"
							class="noti-dot sidebar-default"> <i
								class="la la-user sidebar-icon"></i> <span class="sidebar-text">
									Employees</span> <!-- <span class="menu-arrow"></span> -->
						</a> </li>
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
						</a> </li>
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
					</ul>
				</div>
			</div>
		</div>
		<!-- /Sidebar -->


		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">업무 평가 내역</h3>
							<ul class="breadcrumb">
								<!-- <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li> -->
								<li class="breadcrumb-item active">My Performance review</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row bonus-sub-container">
				
					<div class="col-sm-12" style="height: 900px;">
						<div class="card mb-0" >
							<div class="card-header">
								<div class="col-md-6" style="max-width: 100%;">
									<div class="card-board-style">
										<div class="notice-body" align="center">
											<br>
											<div class="review-header text-center">
												<h3 class="review-title">업무 평가 내역</h3>
												<p class="text-muted">${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.membername }</p>
											</div>
											<!-- <form class="file-search">
											<div class="col-auto float-right ml-auto">
											<a href="#" class="btn btn-primary btn-sm sub-btn" data-toggle="modal" data-target="#edit_project"><i class="fa fa-plus"></i> 업무 평가</a>
											</div>
												<div class="input-group" style="width: 300px; float: left;">
													<select>
														<option>제목</option>
														<option>내용</option>
														<option>통합</option>
													</select> <input type="text" class="form-control"
														placeholder="Search">
													<div class="input-group-prepend">
														<i class="fa fa-search board-icon"></i>
													</div>
												</div>
											</form> -->
												
											<div class="tab-content">
												<div class="tab-pane show active" id="solid-justified-tab1">
													<div class="card-body">
														<div class="table-responsive board-table-sort">
															<!-- <button type="button" class="btn btn-primary dropdown-toggle" style="float: right;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">해당 연도</button>
															<div class="dropdown-menu">
															<a class="dropdown-item" href="#" name="2021">2021</a>
															<a class="dropdown-item" href="#" name="2020">2020</a>
															</div> -->
															<table class="datatable table table-stripped mb-0">
																<thead>
																	<tr>
																		<th><input type="checkbox"></th>
																		<th>평가일</th>
																		<th>이름</th>
																		<th>직위</th>
																		<th>근무부서</th>
																		<th>휴대폰</th>
																		<th>평가 등급</th>
																		<th class="tb-hidden">인사평가고유번호</th>
																	</tr> 
																</thead>
																<c:forEach var="myReviewList" items="${ requestScope.myReviewList }">
																	<tr class="rowClick">
																		<td><input type="checkbox"/>
																		<td class="rnp-td"><c:out value="${ myReviewList.date }" />
																		<td class="rnp-td"><c:out value="${ myReviewList.name }" />
																		<td class="rnp-td"><c:out value="${ myReviewList.spot }" />
																		<td class="rnp-td"><c:out value="${ myReviewList.dept }" />
																		<td class="rnp-td"><c:out value="${ myReviewList.phone }" />
																		<td class="rnp-td"><c:out value="${ myReviewList.grade}" />
																		<td class="rnp-td tb-hidden"><c:out value="${ myReviewList.reviewNo}" />
																	</tr>
																</c:forEach>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->
	
	<script>
	
	if(document.getElementsByTagName("td")) {
		const $tds = document.getElementsByTagName("td");
		const $rnp = document.getElementsByClassName("rnp-td");
		
		for(let i = 0; i < $tds.length; i++) {
			
			$tds[i].onmouseenter = function() {
				this.parentNode.style.backgroundColor = "rgb(253,192,124)";
				this.parentNode.style.cursor = "pointer";
			}
			
			$tds[i].onmouseout = function() {
				this.parentNode.style.background = "white";
			}
			
			$rnp[i].onclick = function() {
				const no = this.parentNode.children[7].innerText;
				console.log(no);
				location.href = "${ pageContext.servletContext.contextPath }/performance/myReviewDetail?no=" + no;
			} 
			
		}
	}
	</script>
   
	<script src="/resources/hrtemp/js/jquery-3.5.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="../resources/hrtemp/js/popper.min.js"></script>
	<script src="../resources/hrtemp/js/bootstrap.min.js"></script>

	<!-- Slimscroll JS -->
	<script src="../resources/hrtemp/js/jquery.slimscroll.min.js"></script>

	<!-- Datatable JS -->
	<script src="../resources/hrtemp/js/jquery.dataTables.min.js"></script>
	<script src="../resources/hrtemp/js/dataTables.bootstrap4.min.js"></script>

	<!-- Custom JS -->
	<script src="../resources/hrtemp/js/app.js"></script>

</body>
</html>