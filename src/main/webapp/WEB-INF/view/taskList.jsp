<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>
pageEncoding="UTF-8" %>
<%--@elvariable id="task" type="com.sda.task.model.Task"--%>
<%--Komentarz--%>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"/>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Lista zadań</h1>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Priority</th>
                    <th scope="col">Deadline</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="task" items="${tasks}" varStatus="loop">
                    <tg:taskRow task="${task}" rowId="${loop.index}"></tg:taskRow>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>


</body>
</html>