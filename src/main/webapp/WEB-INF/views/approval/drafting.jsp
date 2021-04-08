<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 모달 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 모달 끝 -->
</head>
<body>
<!-- header --> <div class="modal-header"> 

<!-- 닫기(x) 버튼 --> <div><a rel="modal:close"><button type="button" class="close" data-dismiss="modal">×</button></a> </div>

<!-- header title --> <h4 class="modal-title">Header</h4> </div> 

<!-- body --> <div class="modal-body"> Body </div> 

<!-- Footer --> <div class="modal-footer"> Footer <a href="#" rel="modal:close"><button type="button" class="btn btn-default" data-dismiss="modal">닫기</button></a> </div>
</body>
</html>