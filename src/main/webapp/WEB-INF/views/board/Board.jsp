<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="../resources/hrtemp/css/font-awesome.min.css">

<!-- Lineawesome CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/line-awesome.min.css">

<!-- Datatable CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/dataTables.bootstrap4.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="../resources/hrtemp/css/style.css">

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
       <div class="page-wrapper">

          <div class="content container-fluid">
 
             <!-- Page Header -->
             <div class="page-header">
                <div class="row">
                   <div class="col">
                      <h3 class="page-title">게시판</h3>
                      <ul class="breadcrumb">
                         <!-- <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li> -->
                         <li class="breadcrumb-item active">NoticeBoard</li>
                      </ul>
                   </div>
                </div>
             </div>
             <!-- /Page Header -->
 
             <div class="file-sidebar dashboard-sub-sidebar">
                <div class="file-header justify-content-center">
                
                   <span><button type="button" class="btn btn-write" id="insertWrite" onclick="location.href='${pageContext.servletContext.contextPath}/board/insert'">글쓰기</button></span>
                   <a href="${pageContext.servletContext.contextPath}/board/insert" class="file-side-close"><i class="fa fa-times"></i></a>
                
                   
                </div>
                <br>
                <form class="file-search">
                   <div class="input-group">
                      <div class="input-group-prepend">
                         <input type="text" class="form-control" placeholder="Search" style="width: 226px;">
                         <i class="fa fa-search board-icon"></i>
                      </div>
                   </div>
                </form>
                <div class="file-pro-list">
                   <div class="file-scroll">
                      <br>
                      <ul class="file-menu">
                         <li class="active"><a href="#">자유게시판</a></li>
                         <li><a href="#">인사게시판</a></li>
                         <li><a href="#">사내공지사항</a></li>
                         <!-- <li><a href="#">Hospital Administration</a></li>
                         <li><a href="#">Virtual Host</a></li> -->
                      </ul>
                   </div>
                </div>
             </div>
 
             <div class="row dashboard-sub-container">
 
                <div class="col-sm-12" style="height: 900px;">
                   <div class="card mb-0">
 
                      <div class="card-header">
                         <div class="col-md-6">
                            <div class="card-board-style">
                               <div class="notice-body" align="center">
                                  <br>
                                  <h4 class="card-title" style="width: 1255px;">게시판 홈</h4>
                                  <ul class="nav nav-tabs nav-tabs-solid nav-justified"
                                     style="width: 1255px;">
                                     <li class="nav-item"><a class="nav-link active"
                                        href="#solid-justified-tab1" data-toggle="tab">자유게시판</a></li>
                                     <li class="nav-item"><a class="nav-link"
                                        href="#solid-justified-tab2" data-toggle="tab">인사게시판</a></li>
                                     <li class="nav-item"><a class="nav-link"
                                        href="#solid-justified-tab3" data-toggle="tab">사내공지사항</a></li>
                                  </ul>
                                  <br>
                                  <form class="file-search">
 
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
 
                                  </form>
 
                               </div>
                            </div>
                         </div>
                      </div>
                      <div class="card-body">
                         <div class="table-responsive">
                            <table class="datatable table table-stripped mb-0">
                               <thead>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <th>번호</th>
                                     <th>제목</th>
                                     <th>작성자</th>
                                     <th>조회수</th>
                                     <th>등록일</th>
                                     <th>사원번호</th>
                                  </tr>
                               </thead>
                               <c:forEach var="boardList" items="${requestScope.boardList }">
                                  <tr>
                                     <td><input type="checkbox" class=""/>
                                     <td><c:out value="${ boardList.no }"/>
                                     <td><c:out value="${ boardList.title }"/>
                                     <td><c:out value="${ boardList.writer }"/>
                                     <td><c:out value="${ boardList.count }"/>
                                     <td><c:out value="${ boardList.enrollDate }"/>
                                     <td><c:out value="${ boardList.memberNo }"/>
                                  </tr>
                               </c:forEach>
                               <!-- <tbody>
                                  <tr>
                                     <td><input type="checkbox"></td>
                                     <td>Tiger Nixon</td>
                                     <td>System Architect</td>
                                     <td>Edinburgh</td>
                                     <td>61</td>
                                     <td>$320,800</td>
                                  </tr>
                                  <tr>
                                     <td><input type="checkbox"></td>
                                     <td>Garrett Winters</td>
                                     <td>Accountant</td>
                                     <td>Tokyo</td>
                                     <td>63</td>
                                     <td>$170,750</td>
                                  </tr>
                                  <tr>
                                     <td><input type="checkbox"></td>
                                     <td>Ashton Cox</td>
                                     <td>Junior Technical Author</td>
                                     <td>San Francisco</td>
                                     <td>66</td>
                                     <td>$86,000</td>
                                  </tr>
                                  <tr>
                                     <td><input type="checkbox"></td>
                                     <td>Cedric Kelly</td>
                                     <td>Senior Javascript Developer</td>
                                     <td>Edinburgh</td>
                                     <td>22</td>
                                     <td>$433,060</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Airi Satou</td>
                                     <td>Accountant</td>
                                     <td>Tokyo</td>
                                     <td>33</td>
                                     <td>$162,700</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Brielle Williamson</td>
                                     <td>Integration Specialist</td>
                                     <td>New York</td>
                                     <td>61</td>
                                     <td>$372,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Herrod Chandler</td>
                                     <td>Sales Assistant</td>
                                     <td>San Francisco</td>
                                     <td>59</td>
                                     <td>$137,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Rhona Davidson</td>
                                     <td>Integration Specialist</td>
                                     <td>Tokyo</td>
                                     <td>55</td>
                                     <td>$327,900</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Colleen Hurst</td>
                                     <td>Javascript Developer</td>
                                     <td>San Francisco</td>
                                     <td>39</td>
                                     <td>$205,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Sonya Frost</td>
                                     <td>Software Engineer</td>
                                     <td>Edinburgh</td>
                                     <td>23</td>
                                     <td>$103,600</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Jena Gaines</td>
                                     <td>Office Manager</td>
                                     <td>London</td>
                                     <td>30</td>
                                     <td>$90,560</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Quinn Flynn</td>
                                     <td>Support Lead</td>
                                     <td>Edinburgh</td>
                                     <td>22</td>
                                     <td>$342,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Charde Marshall</td>
                                     <td>Regional Director</td>
                                     <td>San Francisco</td>
                                     <td>36</td>
                                     <td>$470,600</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Haley Kennedy</td>
                                     <td>Senior Marketing Designer</td>
                                     <td>London</td>
                                     <td>43</td>
                                     <td>$313,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Tatyana Fitzpatrick</td>
                                     <td>Regional Director</td>
                                     <td>London</td>
                                     <td>19</td>
                                     <td>$385,750</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Michael Silva</td>
                                     <td>Marketing Designer</td>
                                     <td>London</td>
                                     <td>66</td>
                                     <td>$198,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Paul Byrd</td>
                                     <td>Chief Financial Officer (CFO)</td>
                                     <td>New York</td>
                                     <td>64</td>
                                     <td>$725,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Gloria Little</td>
                                     <td>Systems Administrator</td>
                                     <td>New York</td>
                                     <td>59</td>
                                     <td>$237,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Bradley Greer</td>
                                     <td>Software Engineer</td>
                                     <td>London</td>
                                     <td>41</td>
                                     <td>$132,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Dai Rios</td>
                                     <td>Personnel Lead</td>
                                     <td>Edinburgh</td>
                                     <td>35</td>
                                     <td>$217,500</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Jenette Caldwell</td>
                                     <td>Development Lead</td>
                                     <td>New York</td>
                                     <td>30</td>
                                     <td>$345,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Yuri Berry</td>
                                     <td>Chief Marketing Officer (CMO)</td>
                                     <td>New York</td>
                                     <td>40</td>
                                     <td>$675,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Caesar Vance</td>
                                     <td>Pre-Sales Support</td>
                                     <td>New York</td>
                                     <td>21</td>
                                     <td>$106,450</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Doris Wilder</td>
                                     <td>Sales Assistant</td>
                                     <td>Sidney</td>
                                     <td>23</td>
                                     <td>$85,600</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Angelica Ramos</td>
                                     <td>Chief Executive Officer (CEO)</td>
                                     <td>London</td>
                                     <td>47</td>
                                     <td>$1,200,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Gavin Joyce</td>
                                     <td>Developer</td>
                                     <td>Edinburgh</td>
                                     <td>42</td>
                                     <td>$92,575</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Jennifer Chang</td>
                                     <td>Regional Director</td>
                                     <td>Singapore</td>
                                     <td>28</td>
                                     <td>$357,650</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Brenden Wagner</td>
                                     <td>Software Engineer</td>
                                     <td>San Francisco</td>
                                     <td>28</td>
                                     <td>$206,850</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Fiona Green</td>
                                     <td>Chief Operating Officer (COO)</td>
                                     <td>San Francisco</td>
                                     <td>48</td>
                                     <td>$850,000</td>
                                  </tr>
                                  <tr>
                                     <th><input type="checkbox"></th>
                                     <td>Shou Itou</td>
                                     <td>Regional Marketing</td>
                                     <td>Tokyo</td>
                                     <td>20</td>
                                     <td>$163,000</td>
                                  </tr>
                               </tbody> -->
                            </table>
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
		
		for(let i = 0; i < $tds.length; i++) {
			
			$tds[i].onmouseenter = function() {
				this.parentNode.style.backgroundColor = "yellow";
				this.parentNode.style.cursor = "pointer";
			}
			
			$tds[i].onmouseout = function() {
				this.parentNode.style.background = "white";
			}
			//여기서부터 스타트야 지금 작성한다..
			$tds[i].onclick = function() {
				const no = this.parentNode.children[0].innerText;
				console.log(no);
				location.href = "${ pageContext.servletContext.contextPath }/board/detail/?no" + no;
			}
		}
	}
	</script>

   <!-- jQuery -->
   <script src="../resources/hrtemp/js/jquery-3.5.1.min.js"></script>

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