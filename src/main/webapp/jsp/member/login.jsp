<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="context" value="/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트리더힐 - 로그인</title>
<link href="${context}css/common.css" rel="stylesheet" type="text/css"/>
<link href="${context}css/member.css" rel="stylesheet" type="text/css"/>
<script>
	var message = "${msg}";
	
	if(message !== "")
		alert(message);
</script>
</head>
<body>
<c:import url = "${context}header"/>
<div id = "wrap">
	<div class = "homeContainer">
		<div class = "loginContainer">
			<form action = "loginProc" class = "loginForm" id = "f" method="post">
				<table>
					<tr>
						<th>아이디</th>
						<td><input type = "text" id = "id" name = "id" placeholder = "동-호수"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type = "password" id = "pw" name = "pw"></td>
					</tr>
				</table>
				<input type = "button" value = "로그인" onclick="loginChk()">
				<input type = "button" value = "회원가입">
			</form>
		</div>
	</div>
</div>
<c:import url = "${context}footer"/>
<script src = "${context}javaScript/member.js"></script>
</body>
</html>