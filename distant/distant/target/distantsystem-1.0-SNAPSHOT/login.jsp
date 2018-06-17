<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login page</title>
</head>
<body>

<%@ include file="header.jsp" %>
<br>
<div>------------------------------------------------------------------------------</div>
<br>

<h1><fmt:message key="con.loginmessage"/></h1>
<c:if test="${requestScope.errMsg != null}">
    <c:out value="${requestScope.errMsg}"/>
</c:if>
<form action="${pageContext.request.contextPath}/loginpage" method="Post">
    <fmt:message key="con.usernamelabel"/> <input type="text" name="login"/><br/>
    <fmt:message key="con.passwordlabel"/> <input type="password" name="password"/><br/>
    <button><fmt:message key="con.buttonsubmit"/></button>
</form>
<a href="register.jsp"><fmt:message key="con.register" /></a>
</body>
</html>