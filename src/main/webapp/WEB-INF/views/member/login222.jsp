<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Morning Glory</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<style>
</style>
</head>
<body>


	<div class="container">
		<br>
		<br>
		<br>
		<!-- 로그인이 필요한경우 -->
		<div id="for">
			<h1 align="center">
				<strong>임시 로그인</strong>
			</h1>
		</div>
		<fieldset class="fs">
			<c:if test="${ empty sessionScope.loginMember }">
				<form class="fss"
					action="${ pageContext.servletContext.contextPath }/member/login"
					method="post" id="form">
					<input type="text" name="memberId" class="id2"
						placeholder="아이디를 입력해주세요" maxlength=20> <br> <input
						type="password" name="memberPwd" class="id2"
						placeholder="비밀번호를 입력해주세요" maxlength=20> <br> <br>
					<span> <input type="checkbox" name="saveid" id="chksaveId"
						value="on">아이디 저장
					</span> <span style="float: right;"> <input type="checkbox"
						name="security" value="Y" class="security">보안접속
					</span> <br> <br> <br> <input type="submit"
						class="btn btn-or" value="로그인" id="login2"><br><br>
					<!-- <button id="login1" title="로그인">로그인</button><br> -->
					<a href="${ pageContext.servletContext.contextPath }/member/findId" class="find">아이디찾기</a>
					<a href="${ pageContext.servletContext.contextPath }/member/findpwd" class="find">비밀번호찾기</a> 
						<input type="button"
						class="btn btn-yg" value="회원가입" id="regist2">

				<div align="center">
					<img src="../resources/image/Logo1(2).png">
				</div>
				</form>
			</c:if>
			
			<c:if test="${ ! empty sessionScope.loginMember }">
			<!-- 세션에 로그인멤버가 담겨있으면 로그인이 필요하지 않다는 의미  '!'로 부정-->
				<h3><c:out value="${ sessionScope.loginMember.name }"/>님의 방문을 환영합니다.</h3>
				<br><br>
				<div class="btns">
					<input type="button" class="btn btn-or" value="정보수정" id="update">
					<br><br>
					<input type="button" class="btn btn-or" value="로그아웃" id="logout">
				</div>
			</c:if>
			
		</fieldset>

	</div>

	<div id="footer_info">
		<div class="site_box">
			<div class="site_left">
				<h5>
					<a href="/" title="하단 로고"> <img src="/mg/resources/image/Logo1.png" alt="">
					</a>
				</h5>
			</div>
			<div class="site_right">
				<ul>
					<li><a href="" title="회사소개">회사소개</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/personal/policy"  title="개인정보취급방침안내">개인정보취급방침안내</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/policy"  title="이용약관">이용약관</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/homepage/policy"  title="이용안내">이용안내</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/customer/list" title="고객센터">고객센터</a></li>
					<li><a href="" title="입점문의">입점 문의</a></li>
				</ul>
				<span>상호: 주식회사 더조은</span> <span>대표: 한지훈</span> <span>주소: 평택
					평택구 평택동 777번지 7층</span> <span>사업자 등록번호: 777-77-77777 <a href=""
					target="_blank" class="btn_small btn_color1"
					style="margin-top: -5px;" title="사업자등록번호 조회하기"> 사업자등록번호 </a>
				</span> <span>전화번호: 1600-3413</span> <span>건강기능식품영업신고 : 제
					7717-0228115호(평택구청)</span> <span>개인정보관리책임자: 한지훈 (<a href="">jihunhan@naver.com</a>)
				</span><br> <span>E-mail: <a href="#none">jihunhan@naver.com</a></span>
				<span>통신판매업신고: 제 2015-경기평택-0370호</span> <span>Copyrightⓒ 2021
					모닝글로리 - 식단관리 프로그램. All rights Reserved.</span>
			</div>
		</div>
	</div>
</body>
</html>