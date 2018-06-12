<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri ="http://java.sun.com/jstl/fmt_rt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" scope="session"/>
<fmt:setBundle basename="i18n.content" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login to our web</title>
</head>
<body>

<form>
    <select subjectID="language" name="language" onchange="submit()">
        <option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
        <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
    </select>
</form>

<h1><fmt:message key = "loginMessage"/> </h1>
<c:if test="${requestScope.errMsg != null}">
    <c:out value="${requestScope.errMsg}" />
</c:if>
     <form action="${pageContext.request.contextPath}/loginpage" method = "Post" >
         <fmt:message key = "usernameLabel"/> <input type="text" name="login"/><br/>
         <fmt:message key="passwordLabel" /> <input type="password" name="password"/><br/>
         <button><fmt:message key = "buttonSubmit"/></button>
     </form>
</body>
</html>