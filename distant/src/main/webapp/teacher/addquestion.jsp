<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><fmt:message key="logOutLabel"/></title>
    <link rel="stylesheet" href="../css/app.css">
</head>
<body>
<fmt:message key="helloLabel"/> <c:out value="${sessionScope['loginUser']}"/>
<br>
<a href="../index.jsp"><fmt:message key="logOutLabel" /></a>
<br>

<p>
    Add question:
</p>
<form action="${pageContext.request.contextPath}/questions" method = "Post">
    Question:<br>
    <input type="text" name="question"><br>
    First answer:<br>
    <input type="text" name="answer1">
    Second answer:<br>
    <input type="text" name="answer2">
    Third answer:<br>
    <input type="text" name="answer3">
    Number of correct answer:<br>
    <input type="text" name="correctAnswer">
    Subject:<br>
    <input type="text" name="subject">
    <button><fmt:message key = "buttonSubmit"/></button>
</form>

</body>
</html>
