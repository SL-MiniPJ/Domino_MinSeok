<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도미노피자 - 피자 등록 성공</title>
</head>
<body>
	<script>
		alert("새로운 피자를 등록하였습니다!");
		location.href="./AdminPizzaAddForm.menu";
	</script>
</body>
</html>