<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>HnJ ERP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="${cPath}/resources/assets/css/main.css" />
</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
    <h1>HnJ ERP</h1>
    <h2>로그인</h2>

</header>

<!-- Signup Form -->
<form id="signup-form" method="post" action="${cPath }/login">
    <input type="text" name="emp_no" id="emp_no" placeholder="사원 아이디" />
    <input type="password" name="emp_pass" id="emp_pass" placeholder="비밀번호" />
    <input type="submit" value="로그인" />
    <a href="${cPath}/loginForm/passWordSearch">비밀번호 찾기</a>
</form>

<script src="${cPath}/resources/assets/js/main.js"></script>

<!-- 로그인시, 메시지 띄우기 -->
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
    <script type="text/javascript">
        alert("${SPRING_SECURITY_LAST_EXCEPTION.message }");
    </script>
    <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
</c:if>
</body>
</html>
