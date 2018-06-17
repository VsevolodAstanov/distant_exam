<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}" scope="session"/>
<fmt:setBundle basename="i18n.content" scope="session"/>

<form>
    <select subjectID="language" name="language" onchange="submit()">
        <option value="ru" ${language == 'ru' ? 'selected' : ''}>Ru</option>
        <option value="en" ${language == 'en' ? 'selected' : ''}>En</option>
    </select>
</form>


<c:choose>
    <c:when test="${sessionScope.role=='student'}">
        <h1><fmt:message key="con.student"/></h1>
        <form action="${pageContext.request.contextPath}/logout" method="Get">
            <button><fmt:message key="con.logoutbutton"/></button>
        </form>
    </c:when>
    <c:when test="${sessionScope.role=='teacher'}">
        <h1><fmt:message key="con.teacher"/> </h1>
        <form action="${pageContext.request.contextPath}/logout" method="Get">
            <button><fmt:message key="con.logoutbutton"/></button>
        </form>
    </c:when>
    <c:otherwise>
        <h1><fmt:message key="con.helloguest"/></h1>
        <a href="login.jsp"><fmt:message key="con.loginmessage" /></a>
    </c:otherwise>
</c:choose>





