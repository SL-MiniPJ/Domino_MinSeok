<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃중입니다,,</title>
</head>
<body>
	<%
	if(session.getAttribute("loginId") != null || session.getAttribute("nmembername") != null) {
		session.invalidate(); 
	%>
	<script>
		alert('로그아웃되었습니다!');
		location.href='../Main.do'
	</script>
	<%} else { %>
	<script>
		alert('접근 권한이 없습니다!');
		location.href='../Main.do'
	</script>
	<%} %>
</body>
</html>