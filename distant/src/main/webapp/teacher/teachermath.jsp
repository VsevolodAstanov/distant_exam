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

<p>The list of available questions for Math </p>
<!--provide an html table start tag -->
<table>
    <!-- iterate over the collection using forEach loop -->
    <c:forEach var="question" items="${requestScope.QuestionList}">
        <!-- create an html table row -->
        <tr>
            <!-- create cells of row -->
            <td>${question.question}</td>
            <td>${question.answer1}</td>
            <td>${question.answer2}</td>
            <td>${question.answer3}</td>
            <td>${question.correctAnswer}</td>
            <td><form action="${pageContext.request.contextPath}/update" method="get">
                <button>Редактировать</button>
                <input type="hidden" name="questionID" value="${question.questionId}"/>
            </form> </td>
            <!-- close row -->
        </tr>
        <!-- close the loop -->
    </c:forEach>
    <!-- close table -->
</table>

<a href="teacher/addquestion.jsp"><fmt:message key="addQuestionlabel" /></a>

</body>
</html>