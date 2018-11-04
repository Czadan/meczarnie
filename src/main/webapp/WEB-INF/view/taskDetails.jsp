<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
                    <tr>
                        <th scope="row">${loop.index +1}</th>
                        <th>${task.name}</th>
                        <td>${task.description}</td>
                        <td>${task.priority}</td>
                        <td>${task.deadline}</td>
                        <td>
                            <button class="btn btn-info">Details</button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>


</body>
</html>