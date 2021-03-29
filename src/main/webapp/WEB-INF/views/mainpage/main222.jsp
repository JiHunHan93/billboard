<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>최초 메인 페이지</h1>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/member/login'">로그인가자</button>
	<hr>
	<h1>이걸로 조회 가져오자</h1>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/member/memlist'">조회고고</button>
	<hr>
	<h3>DB연결 테스트 용. 멤버 조회</h3>
	<button id="memlist">정보 조회하기</button>
	<table id="memberInfo" border="1">
		<thead>
			<tr>
				<th width="100">회원번호</th>
				<th width="150">이름</th>
				<th width="100">나이</th>
				<th width="200">가입일</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
	<script>
		$("#memlist").click(function() {
			$.ajax({
				url: "member/memlist",
				success: function(data, status, xhr) {
					console.table(data.memberList);
					
					const memberList = JSON.parse(data.memberList);
					console.table(memberList);
					
					const $table = $("#memberInfo tbody");
					$table.html("");
					
					for(let index in memberList) {
						$tr = $("<tr>");
						$noTd = $("<td>").text(memberList[index].no);
						$nameTd = $("<td>").text(memberList[index].name);
						$ageTd = $("<td>").text(memberList[index].age);
						$enrollDateTd = $("<td>").text(memberList[index].enrollDate);
						
						$tr.append($noTd);
						$tr.append($nameTd);
						$tr.append($ageTd);
						$tr.append($enrollDateTd);
						
						$table.append($tr);
					}
				},
				error: function(xhr, status, error) {
					console.log(error);
				}
			})
		});
	</script>
	
</body>
</html>