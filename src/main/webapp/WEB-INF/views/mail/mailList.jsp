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
        <title>ë¬¸ì</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="./resources/hrtemp/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="./resources/hrtemp/css/line-awesome.min.css">
		
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
                    <a href="employee-dashboard.html" class="logo">
						<img src="./resources/hrtemp/img/Logo.png" width="40" height="40" alt="">
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
							<img src="./resources/hrtemp/img/flags/us.png" alt="" height="20"> <span>English</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right">
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="./resources/hrtemp/img/flags/us.png" alt="" height="16"> English
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="./resources/hrtemp/img/flags/fr.png" alt="" height="16"> French
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="./resources/hrtemp/img/flags/es.png" alt="" height="16"> Spanish
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="./resources/hrtemp/img/flags/de.png" alt="" height="16"> German
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
													<img alt="" src="./resources/hrtemp/img/profiles/avatar-02.jpg">
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
													<img alt="" src="./resources/hrtemp/img/profiles/avatar-03.jpg">
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
													<img alt="" src="./resources/hrtemp/img/profiles/avatar-06.jpg">
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
													<img alt="" src="./resources/hrtemp/img/profiles/avatar-17.jpg">
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
													<img alt="" src="./resources/hrtemp/img/profiles/avatar-13.jpg">
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
														<img alt="" src="./resources/hrtemp/img/profiles/avatar-09.jpg">
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
														<img alt="" src="./resources/hrtemp/img/profiles/avatar-02.jpg">
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
														<img alt="" src="./resources/hrtemp/img/profiles/avatar-03.jpg">
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
														<img alt="" src="./resources/hrtemp/img/profiles/avatar-05.jpg">
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
														<img alt="" src="./resources/hrtemp/img/profiles/avatar-08.jpg">
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
							<span class="user-img"><img src="./resources/hrtemp/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span></span>
							<span><!-- í´ë¹ ì¬ì ëª --></span>
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="profile.html">ë´ ì ë³´</a>
							<a class="dropdown-item" href="settings.html">íê²½ì¤ì </a>
							<a class="dropdown-item" href="login.html">ë¡ê·¸ìì</a>
						</div>
					</li>
				</ul>
				<!-- /Header Menu -->
				
				<!-- Mobile Menu -->
				<div class="dropdown mobile-user-menu">
					<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
					<div class="dropdown-menu dropdown-menu-right">
						<a class="dropdown-item" href="profile.html">ë´ ì ë³´</a>
						<a class="dropdown-item" href="settings.html">íê²½ì¤ì </a>
						<a class="dropdown-item" href="login.html">ë¡ê·¸ìì</a>
					</div>
				</div>
				<!-- /Mobile Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div class="sidebar-menu">
						<ul>
							<li> 
								<a href="index.html"><i class="la la-home"></i> <span>ë¤ë¡ê°ê¸°</span></a>
							</li>
							<li class="active"> 
								<a href="inbox.html">ë¬¸ì <span class="mail-count"></span></a>
							</li>
							
							<li> 
							</li>
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
								<h3 class="page-title">ë¬¸ì</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">ë©ì¼</a></li>
									<li class="breadcrumb-item active">ë¬¸ìí¨</li>
								</ul>
							</div>
							<div class="col-auto float-right ml-auto">
								<a href="compose.html" class="btn add-btn"><i class="fa fa-plus"></i> Compose</a>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="card mb-0">
								<div class="card-body">
									<div class="email-header">
										<div class="row">
											<div class="col top-action-left">
												<div class="float-left">
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">ì í <i class="fa fa-angle-down "></i></button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#">All</a>
															<a class="dropdown-item" href="#">None</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">Read</a>
															<a class="dropdown-item" href="#">Unread</a>
														</div>
													</div>
													
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> <i class="fa fa-angle-down"></i></button>
														<div role="menu" class="dropdown-menu">
															<a class="dropdown-item" href="#">Social</a>
															<a class="dropdown-item" href="#">Forums</a>
															<a class="dropdown-item" href="#">Updates</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">Spam</a>
															<a class="dropdown-item" href="#">Trash</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">New</a>
														</div>
													</div>
													<div class="btn-group dropdown-action">
														<button type="button" data-toggle="dropdown" class="btn btn-white dropdown-toggle"><i class="fa fa-tags"></i> <i class="fa fa-angle-down"></i></button>
														<div role="menu" class="dropdown-menu">
															<a class="dropdown-item" href="#">Work</a>
															<a class="dropdown-item" href="#">Family</a>
															<a class="dropdown-item" href="#">Social</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">Primary</a>
															<a class="dropdown-item" href="#">Promotions</a>
															<a class="dropdown-item" href="#">Forums</a>
														</div>
													</div>
												</div>
												<div class="float-left d-none d-sm-block">
													<input type="text" placeholder="Search Messages" class="form-control search-message">
												</div>
											</div>
											<div class="col-auto top-action-right">
												<div class="text-right">
													<button type="button" title="Refresh" data-toggle="tooltip" class="btn btn-white d-none d-md-inline-block"><i class="fa fa-refresh"></i></button>
													<div class="btn-group">
														<a class="btn btn-white"><i class="fa fa-angle-left"></i></a>
														<a class="btn btn-white"><i class="fa fa-angle-right"></i></a>
													</div>
												</div>
												<div class="text-right">
													<span class="text-muted d-none d-md-inline-block">Showing 10 of 112 </span>
												</div>
											</div>
										</div>
									</div>
									<div class="email-content">
										<div class="table-responsive">
											<table class="table table-inbox table-hover">
												<thead>
													<tr>
														<th colspan="6">
															<input type="checkbox" class="checkbox-all">
														</th>
													</tr>
												</thead>
												<tbody>
													<tr class="unread clickable-row" data-href="mail-view.html">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="fa fa-star starred"></i></span></td>
														<td class="name">JinhoKim</td>
														<td class="subject">28ì¼ê¹ì§ íë¡ì í¸ ë§ë¬´ë¦¬ í´ì£¼ì¸ì</td>
														<td><i class="fa fa-paperclip"></i></td>
														<td class="mail-date">13:14</td>
													</tr>
							
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
                </div>
				<!-- /Page Content -->
				
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
		
		<!-- Custom JS -->
		<script src="./resources/hrtemp/js/app.js"></script>

    </body>
</html>