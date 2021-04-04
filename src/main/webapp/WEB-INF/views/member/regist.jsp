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
<title>Register - HRMS admin template</title>

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

	<!-- Main Wrapper -->
	<div class="main-wrapper">
		<div class="account-content">
			<a href="job-list.html" class="btn btn-primary apply-btn">Apply
				Job</a>
			<div class="container">

				<!-- Account Logo -->
				<div class="account-logo">
					<a href="index.html"><img src="/billbo/resources/hrtemp/img/Logo.png"></a>
				</div>
				<!-- /Account Logo -->

				<div class="account-box">
					<div class="account-wrapper">
						<h3 class="account-title">Register</h3>
						<p class="account-subtitle">Access to our dashboard</p>

						<!-- Account Form -->
						<form action="regist" id="regist" method="post">
							<div class="form-group">
								<label>Email</label><label name="overlapResult"></label>
								<input class="form-control" type="text" name="email01">
								<input type="button" value="중복확인" class="duplication_check_btn" id="checkEmail">
							</div>
							<div class="form-group">
								<label>Name</label>
								<input class="form-control" type="text" name="name">
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control" type="password" name="pwd1">
							</div>
							<div class="form-group">
								<label>Repeat Password</label><label name="pwdResult"></label>
								<input class="form-control" type="password" name="pwd2">
							</div>
							<div class="form-group text-center">
								<button class="btn btn-primary account-btn" type="button" id="registSubmit">Register</button>
							</div>
							<div class="account-footer">
								<p>
									Already have an account? <a href="login.html">Login</a>
								</p>
							</div>
							<input type="hidden" name="email">
							<input type="hidden" name="pwd">
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
	
	<!-- Check Email -->
	<script>
	$("#checkEmail").click(function() {
		const emailOverlap = $("input[name='email01']").val();
		
		if(emailOverlap == "") {
			
			alert("이메일 입력해라");
			$("input[name='email01']").focus().css("background", "#ed9a26");
			$("label[name='overlapResult']").html("[입력해주세요]").css("color", "red");
			
		} else {
	
			$.ajax({
				url: "${ pageContext.servletContext.contextPath }/member/regist/checkEmail",
				type: "post",
				data: { email : emailOverlap },
				success: function(data, textStatus, xhr) {
   				    if(data == "can") {
						alert("사용할수 있는 이메일입니다.");
						$("input[name='email01']").css("background", "#7fd113");
						$("label[name='overlapResult']").html("[사용가능]").css("color", "green");
					} else {
						alert("중복된 이메일이 존재합니다.");
						console.log("사용 불가");
						$("input[name='email01']").focus().css("background", "#ed9a26");
						$("label[name='overlapResult']").html("[사용불가]").css("color", "red");
					}
				},
				error: function(xhr, status, error) {
					console.log(error);
				}
			}); 
		}
	});
	
	
	$("#registSubmit").click(function() {
		
		
		if($("input[name='pwd2']").val() !== "") {
			
			if($("input[name='pwd2']").val() == $("input[name='pwd1']").val()) {
				
				$("input[name='pwd2']").focus().css("background", "green");	
				$("label[name='pwdResult']").html("[비밀번일치]").css("color", "green");
				
				if($("label[name='overlapResult']").html() == "[사용가능]") {
					
					$("input[name='email']").val($("input[name='email01']").val());
					$("input[name='pwd']").val($("input[name='pwd2']").val());
					$("#regist").submit();
					
				} else {
					
					alert("이메일 중복체크를 진행해주세요.");
					$("input[name='email01']").focus().css("background", "#ed9a26");
					$("label[name='overlapResult']").html("[중복확인 필수]").css("color", "red");
					
					
				}
				
				
			} else {
				
				$("input[name='pwd2']").focus().css("background", "red");	
				$("label[name='pwdResult']").html("[비밀번호불일치]").css("color", "red");
				
			}
			
		} else {
			
			$("input[name='pwd2']").focus().css("background", "red");	
			$("label[name='pwdResult']").html("[입력해주세요]").css("color", "red");
			
		}
		
			
	});
	
	$("input[name='pwd2']").change(function() {
		if($("input[name='pwd2']").val() == $("input[name='pwd1']").val()) {
			
			$("input[name='pwd2']").focus().css("background", "green");	
			$("label[name='pwdResult']").html("[비밀번일치]").css("color", "green");
			
		} else {
			
			$("input[name='pwd2']").focus().css("background", "red");	
			$("label[name='pwdResult']").html("[비밀번호불일치]").css("color", "red");
			
		}
	});
	
	/* Submit 흐름
		1. 비밀번호 확인
		2. 이메일 중복 확인
		3. submit*/
	</script>

</body>
</html>