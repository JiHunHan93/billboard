<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% pageContext.setAttribute("replaceChar", "\n"); %>
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
<title>Project View - HRMS admin template</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/line-awesome.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/select2.min.css">

<!-- Datetimepicker CSS -->
<link rel="stylesheet"
	href="../resources/hrtemp/css/bootstrap-datetimepicker.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/style.css">

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
						</a></li>
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

			<!-- Page Content -->
			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title">인사평가</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">My Performance appraisal</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->

				<section class="review-section personal-excellence">
						<div class="review-header text-center">
							<h3 class="review-title">인사고과표<h3>
							<p class="text-muted"><%-- <c:out value="${ detailReview.memberName }"/> --%></p>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
							<c:forEach var="detailReview" items="${ requestScope.detailReview }">
									<table class="table table-bordered review-table mb-0">
										<thead>
											<tr>
												<th style="width:40px;">#</th>
												<th>고과요소</th>
												<th>착안점</th>
												<th>가중치</th>
												<th>고과점수</th>
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="3">업적</td>
												<td>업무달성도</td>
												<td>계획, 지시에 의해  부과된 업무의 달성 여부 타 직원과의 업무량 비교 및 일정 기간 내의 달성 여부</td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.achOne }"/></td>
												
											</tr>
											<tr>
												<td>업무의질</td>
												<td>업무 달성 결과의 질적 수준과 착오 누락오류의 발생빈도 및 그 잘못의 경증</td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.achTwo }"/></td>
												
											</tr>
											<tr>	
												<td>업무개선</td>
												<td>담당 업무 수행 시 능률 향상을 위한 구체적인 개선책 및 해결책을 꾸준히 모색하고 있는 지의 여부</td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.achThree }"/></td>
											</tr>
											<tr>
												<td rowspan="4">능력</td>
												<td>업무 지식</td>
												<td>당사 직무 수행에 필요한 사무 지식 및 전문적 지식의 정도</td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.abilOne }"/></td>
											</tr>
											<tr>
												<td>기획 창의력</td>
												<td>창의력을 바탕으로 주도면밀한 계획을 수립하여 이를 실천하는 능력 </td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.abilTwo }"/></td>
											</tr>
											<tr>
												<td>분석 판단력</td>
												<td>계획, 지시된 업무의 문제점을 파악, 분석하여 올바른 결론, 정확한 대책을 강구하는 능력</td> 
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.abilThree }"/></td>
											</tr>
											<tr>
												<td>실천력</td>
												<td>계획, 지시된 업무를 적극적으로 박력 있게 끝까지 추진하는 능력</td> 
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.abilFour }"/></td>
											</tr>
											<tr>
												<td rowspan="3">태도</td>
												<td>책임감</td>
												<td>당사 직무 수행에 필요한 사무 지식 및 전문적 지식의 정도</td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.attOne }"/></td>
											</tr>
											<tr>
												<td>협동심</td>
												<td>창의력을 바탕으로 주도면밀한 계획을 수립하여 이를 실천하는 능력 </td>
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.attTwo }"/></td>
											</tr>
											<tr>
												<td>근무 태도</td>
												<td>계획, 지시된 업무의 문제점을 파악, 분석하여 올바른 결론, 정확한 대책을 강구하는 능력</td> 
												<td><input type="text" class="form-control" readonly value="10"></td>
												<td><c:out value="${ detailReview.attThree }"/></td>
											</tr>		
											<tr>
												<td colspan="3" class="text-center"><b>종합 점수 백분율(%)</b></td>
												<td colspan="1" class="text-center"><input type="text" class="form-control" readonly value="100"></td>
												<td><c:out value="${ detailReview.reviewAvg }"/></td>
											</tr>
											<tr>
												<td colspan="8" class="text-center">
													<div class="grade-span">
														<h4>종합 점수 평균</h4>
														<c:choose>
														<c:when test="${detailReview.reviewAvg >= 92}">
														 <span class="badge bg-inverse-danger"><c:out value="${ detailReview.reviewAvg }"/>점   A+</span>
														</c:when> 
														<c:when test="${detailReview.reviewAvg >= 85}">
														<span class="badge bg-inverse-warning" ><c:out value="${ detailReview.reviewAvg }"/>점 A</span> 
														</c:when>
														<c:when test="${detailReview.reviewAvg >= 75}">
														<span class="badge bg-inverse-info"><c:out value="${ detailReview.reviewAvg }"/>점 B</span> 
														</c:when>
														<c:when test="${detailReview.reviewAvg >= 65}">
														<span class="badge bg-inverse-purple"><c:out value="${ detailReview.reviewAvg }"/>점 C</span> 
														</c:when>
														<c:when test="${detailReview.reviewAvg <= 64 }">
														<span class="badge bg-inverse-success"><c:out value="${ detailReview.reviewAvg }"/>점 D</span>
														</c:when>
														</c:choose>
														<%-- <input type="text" name="reviewNo" class="reviewNo" value="${no}">		 --%>										
													</div>
												</td>
											</tr>
										</tbody>	
									</table>
							</c:forEach>
								</div>
							</div>
						</div>
					</section>
			</div>
		   
			<!-- /Page Content -->

		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

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

	<!-- Task JS -->
	<script src="../resources/hrtemp/js/task.js"></script>

	<!-- Custom JS -->
	<script src="../resources/hrtemp/js/app.js"></script>

</body>

<script>
	$(document).ready(function() {
		$('.memNo').hide();
		
	})
</script>
<!-- <script>
    function numberMaxLength(e){
        if(e.value.length > e.maxLength){
            e.value = e.value.slice(0, e.maxLength);
        }
    }
</script> -->


</html>