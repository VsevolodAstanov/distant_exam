<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register form</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
<div>------------------------------------------------------------------------------</div>
<br>
<form action="${pageContext.request.contextPath}/register" method="Post">
    <fmt:message key="con.usernamelabel"/> <input type="text" name="login"/><br/>
    <fmt:message key="con.passwordlabel"/> <input type="password" name="password"/><br/>
    <fmt:message key="con.passwordlabel"/> <input type="password" name="repassword"/><br/>
    <fmt:message key="con.namelabel"/> <input type="text" name="name"/><br/>
    <fmt:message key="con.surnamelabel"/> <input type="text" name="surname"/><br/>
    <button><fmt:message key="con.buttonsubmit"/></button>
</form>

</body>
</html>