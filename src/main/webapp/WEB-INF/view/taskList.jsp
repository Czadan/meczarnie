<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%--@elvariable id="task" type="com.sda.task.model.Task"--%>
<h1>Lista zadań</h1>
<c:forEach var="task" items="${tasks}">
    <br><p>${task.name}</p></br>
</c:forEach>