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
<title>사원번호를 입력해주세요</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/billbo/resources/hrtemp/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/font-awesome.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/style.css">


</head>
<body class="account-page">
	
	
	<!-- Main Wrapper -->
	<div class="main-wrapper">
	
		<div class="account-content">
			
			<div class="container">

				<!-- Account Logo -->
				<div class="account-logo">
					<a href="index.html"><img src="/billbo/resources/hrtemp/img/logo.png"
						alt=""></a>
				</div>
				<!-- /Account Logo -->

				<div class="account-box">
					<div class="account-wrapper">
						<h3 class="account-title">사원번호를 입력해주세요</h3>
						
						
						<!-- Account Form -->
						<form action="${ pageContext.servletContext.contextPath }/profile/mainProfile2" method="post">
							<div class="form-group">
								 <input class="form-control" type="text" name="memberno">
							</div>
							
							<div class="form-group text-center">
								<button class="btn btn-primary account-btn" type="submit">확인</button>
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