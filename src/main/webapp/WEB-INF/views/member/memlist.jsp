<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="table-inbox-wrap ">
                  <table id="memberManagement" class="table table-inbox table-hover">
                    <tbody>
                    <!-- 추후에 활용해볼 css -->
                      <!-- <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                          <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                          <td class="view-message  dont-show"><a href="">Google Inc.</a></td>
                          <td class="view-message "><a href="">Your new account is ready.</a></td>
                          <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                          <td class="view-message  text-right">08:10 AM</td>
                      </tr>
                      <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Mark Thompson</a></td>
                        <td class="view-message"><a href="mail_view.html">Last project updates</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 15</td>
                      </tr>
                      <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Wonder Corp.</a></td>
                        <td class="view-message"><a href="mail_view.html">Thanks for your registration</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 15</td>
                      </tr>
                      <tr class="">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Facebook</a></td>
                        <td class="view-message"><a href="mail_view.html">New Friendship Request</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 13</td>
                      </tr> -->
                     <style>
                      /* #memberManagement th:nth-child(2) {
                      background-color: red;
                      }
                      #memberManagement td {
                      text-align: center;
                      } */
                      </style>
                      <tr>
					<th><input type="checkbox" id="allCheck2"></th>
					<th>번호</th>
					<th>이름</th>
					<th>아이디</th>
					<th>생년월일</th>
					<th>성별</th>
					<th>이메일</th>
					<th>주소</th>
					<th>폰번호</th>
					<th>포인트</th>
					<th>가입일</th>
					<th>블랙여부</th>
					<th>상태</th>
				</tr>
				<c:forEach var="mgView" items="${ requestScope.mgList }">
				<tr>
					<td><input type="checkbox" class=""></td>
					<td><c:out value="${ mgView.no }"/></td>
					<td><c:out value="${ mgView.name }"/></td>
					<td><c:out value="${ mgView.id }"/></td>
					<td><c:out value="${ mgView.pno }"/></td>
					<td><c:out value="${ mgView.gender }"/></td>
					<td><c:out value="${ mgView.email }"/></td>
					<td><c:out value="${ mgView.address }"/></td>
					<td><c:out value="${ mgView.phone }"/></td>
					<td><c:out value="${ mgView.point }"/></td>
					<td><c:out value="${ mgView.enrollDate }"/></td>
					<td><c:out value="${ mgView.blackList }"/></td>
					<td><c:out value="${ mgView.status }"/></td>
				</tr>
				</c:forEach>
                    </tbody>
                  </table>
</body>
</html>