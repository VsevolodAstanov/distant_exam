<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/app.css">
</head>
<body>

<%@ include file="/header.jsp" %>
<br>
<div>------------------------------------------------------------------------------</div>
<br>

<fmt:message key="con.question.title" var="conquestiontitle"/>
<fmt:message key="con.answer1" var="conanswer1"/>
<fmt:message key="con.answer2" var="conanswer2"/>
<fmt:message key="con.answer3" var="conanswer3"/>
<fmt:message key="con.numbercoranswer" var="connumbercoranswer"/>
<fmt:message key="con.action" var="conaction"/>

<table border="1" cellpadding="5" cellspacing="5">
    <tr>
        <th>${conquestiontitle}</th>
        <th>${conanswer1}</th>
        <th>${conanswer2}</th>
        <th>${conanswer3}</th>
        <th>${connumbercoranswer}</th>
        <th>${conaction}</th>
    </tr>
    <c:forEach var="question" items="${requestScope.QuestionList}">

        <tr>
            <!-- create cells of row -->
            <td>${question.question}</td>
            <td>${question.answer1}</td>
            <td>${question.answer2}</td>
            <td>${question.answer3}</td>
            <td>${question.correctAnswer}</td>
            <td>
                <form action="${pageContext.request.contextPath}/update" method="get">
                    <button>Редактировать</button>
                    <input type="hidden" name="questionID" value="${question.questionId}"/>
                </form>
            </td>
            <!-- close row -->
        </tr>
        <!-- close the loop -->
    </c:forEach>
</table>

<%--For displaying Previous link except for the 1st page --%>
<c:if test="${requestScope.currentPage != 1}">
    <td><a href="questions?page=${requestScope.currentPage - 1}&lang=en&subject=math">Previous</a></td>
</c:if>

<%--For displaying Page numbers.
The when condition does not display a link for the current page--%>
<table border="1" cellpadding="5" cellspacing="5">
    <tr>
        <c:forEach begin="1" end="${requestScope.noOfPages}" var="i">
            <c:choose>
                <c:when test="${requestScope.currentPage eq i}">
                    <td>${i}</td>
                </c:when>
                <c:otherwise>
                    <td><a href="questions?page=${i}&lang=en&subject=math">${i}</a></td>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </tr>
</table>

<%--For displaying Next link --%>
<c:if test="${requestScope.currentPage lt requestScope.noOfPages}">
    <td><a href="questions?page=${requestScope.currentPage + 1}&lang=en&subject=math">Next</a></td>
</c:if>


<br>

<a href="teacher/addquestion.jsp"><fmt:message key="con.addquestionlabel"/></a>

</body>
</html>