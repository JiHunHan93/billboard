<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="Smarthr - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Login - HRMS admin template</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/billbo/resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/font-awesome.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body class="account-page">
	<script>
		const message = '${ requestScope.message }';
		if(message != null && message !== '') {
			alert(message);
		}
	</script>

	<!-- Main Wrapper -->
	<div class="main-wrapper">
		<div class="account-content">
			<a href="job-list.html" class="btn btn-primary apply-btn">Apply
				Job</a>
			<div class="container">

				<!-- Account Logo -->
				<div class="account-logo">
					<a href="index.html"><img src="/billbo/resources/hrtemp/img/logo.png"
						alt=""></a>
				</div>
				<!-- /Account Logo -->

				<div class="account-box">
					<div class="account-wrapper">
						<h3 class="account-title">Login</h3>
						<p class="account-subtitle">Access to Bill-Board</p>
						<h1>${ requestScope.loginFailMsg }</h1>
						<!-- Account Form -->
						<form action="${ pageContext.servletContext.contextPath }/member/login" method="post">
							<div class="form-group">
								<label>Email Address</label> <input class="form-control" type="text" name="email">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col">
										<label>Password</label>
									</div>
									<div class="col-auto">
										<a class="text-muted" href="forgot-password.html"> Forgot
											password? </a>
									</div>
								</div>
								<input class="form-control" type="password" name="pwd">
							</div>
							<div class="form-group text-center">
								<button class="btn btn-primary account-btn" type="submit">로그인</button>
							</div>
							<div class="account-footer">
								<p>
									회원가입을 신청하시겠습니까? <a href="${pageContext.servletContext.contextPath}/member/regist">회원가입</a>
								</p>
							</div>
						</form>
						<!-- /Account Form -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="/billbo/resources/hrtemp/js/jquery-3.5.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="/billbo/resources/hrtemp/js/popper.min.js"></script>
	<script src="/billbo/resources/hrtemp/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="/billbo/resources/hrtemp/js/app.js"></script>

</body>
</html>